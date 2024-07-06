from chat_seed import chats_data
from users_seed import users
from posts_seed import posts
from firebase_admin import credentials, firestore, initialize_app # type: ignore

cred = credentials.Certificate("/Users/studium/Documents/development/projects/mobile_anwendungen/bin/helper/serviceAccountKey.json")
app = initialize_app(cred)

store = firestore.client(app)

def delete_collection(coll_ref, batch_size):
    docs = coll_ref.limit(batch_size).stream()
    deleted = 0

    for doc in docs:
        print(f'Deleting doc: {doc.id}')
        doc.reference.delete()
        deleted = deleted + 1

    if deleted >= batch_size:
        return delete_collection(coll_ref, batch_size)

def populateUserColelction():
    for user_id, user_data in users.items():
        store.collection(u'users').document(user_id).set(user_data)

    print("Unique persons added to the 'users' collection.")


def populateChatCollection():
    for chat in chats_data:
        chat_id = chat["id"]
        store.collection(u'chats').document(chat_id).set({
            "participants": chat["participants"],
            "messages": chat["messages"]
        })

        # Loop through each person ID in the chat's persons dictionary
        for user_id in chat["participants"]:
            # Update the corresponding document in the `user` collection
            user_ref = store.collection(u'users').document(user_id)

            # Use a transaction to safely update the user document
            @firestore.transactional
            def update_user_in_transaction(transaction, user_ref):
                snapshot = user_ref.get(transaction=transaction)
                if snapshot.exists:
                    user_data = snapshot.to_dict()
                    if "chat_ids" in user_data:
                        if chat_id not in user_data["chat_ids"]:
                            user_data["chat_ids"].append(chat_id)
                    else:
                        user_data["chat_ids"] = [chat_id]
                    transaction.update(user_ref, user_data)
                else:
                    # If the user does not exist, create a new document
                    transaction.set(user_ref, {"chat_ids": [chat_id]})

            transaction = store.transaction()
            update_user_in_transaction(transaction, user_ref)
    print("Chats populated and connected to their respective users.")

def populatePosts():
    for post_id, post in posts.items():
        store.collection(u'posts').document(post_id).set(post)
    print("Posts populated.")

print("Deleting existing data...\n")
delete_collection(store.collection(u'users'), 10)
delete_collection(store.collection(u'chats'), 10)
delete_collection(store.collection(u'posts'), 10)
print("Data deleted.\n")
print("Populating users...\n")
populateUserColelction()
print("Populating chats...\n")
populateChatCollection()
print("Populating posts...\n")
populatePosts()
print("Data population complete.\n")
