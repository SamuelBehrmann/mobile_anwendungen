import uuid
import firebase_admin
from firebase_admin import credentials, firestore

cred = credentials.Certificate("./serviceAccountKey.json")
app = firebase_admin.initialize_app(cred)

store = firestore.client(app)

people = {
    "person1": {"name": "Alice", "imageUrl": "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg"},
    "person2": {"name": "Bob", "imageUrl": "https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg"},
    "person3": {"name": "Charlie", "imageUrl": "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg"},
    "person4": {"name": "Dana", "imageUrl": "https://i.pinimg.com/474x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg"}
}

chats_data = [
    {
        "persons": {"person1": people["person1"], "person2": people["person2"]},
        "messages": [
            {"content": "Hi, Alice!", "personId": "person1"},
            {"content": "Hello, Bob!", "personId": "person2"}
        ]
    },
    {
        "persons": {"person1": people["person1"], "person3": people["person3"]},
        "messages": [
            {"content": "How's it going, Charlie?", "personId": "person1"},
            {"content": "All good, Alice!", "personId": "person3"}
        ]
    },
    {
        "persons": {"person2": people["person2"], "person4": people["person4"]},
        "messages": [
            {"content": "Hey, Dana!", "personId": "person2"},
            {"content": "Hi, Bob! How are you?", "personId": "person4"}
        ]
    },
    {
        "persons": {"person3": people["person3"], "person4": people["person4"]},
        "messages": [
            {"content": "Dana, ready for the meeting?", "personId": "person3"},
            {"content": "Yes, Charlie. See you there!", "personId": "person4"}
        ]
    },
    {
        "persons": {"person1": people["person1"], "person4": people["person4"]},
        "messages": [
            {"content": "Alice, have you seen my book?", "personId": "person4"},
            {"content": "Not yet, Dana. I'll let you know if I do.", "personId": "person1"}
        ]
    }
]

for chat in chats_data:
    chat_id = str(uuid.uuid4())
    store.collection(u'chats').document(chat_id).set({
        "persons": chat["persons"],
        "messages": chat["messages"]
    })

print("New chat data added to the 'chats' collection.")