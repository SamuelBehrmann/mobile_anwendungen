import uuid
from users_seed import users
from datetime import datetime, timedelta, timezone
import random

UTC = timezone.utc
users = list(users.items())
user1Id = users[0][0]
user2Id = users[1][0]
user3Id = users[2][0]
user4Id = users[3][0]

def generate_random_datetime(start):
    return start + timedelta(minutes=random.randint(1, 1440))  # Random time within next day

def create_reply(author_id, start_time):
    return {
        str(uuid.uuid4()): {
            "content": random.choice(["Interesting viewpoint!", "I agree with this.", "Could you provide more details?"]),
            "authorId": author_id,
            "createdAt": generate_random_datetime(start_time).isoformat() + 'Z',
            "replies": {}
        }
    }

def create_post(title, content, author_id, start_time):
    replies = {}
    for _ in range(random.randint(1, 5)):  # Each post can have 1-5 replies
        reply_time = generate_random_datetime(start_time)
        reply = create_reply(random.choice([user2Id, user3Id]), reply_time)
        replies.update(reply)
        # Adding nested replies
        for reply_id in reply:
            nested_reply_time = generate_random_datetime(datetime.fromisoformat(reply[reply_id]['createdAt'][:-1]))
            nested_reply = create_reply(author_id, nested_reply_time)
            replies[reply_id]['replies'] = nested_reply

    return {
        "title": title,
        "content": content,
        "authorId": author_id,
        "createdAt": start_time.isoformat() + 'Z',
        "replies": replies
    }


def generate_medical_posts():
    medical_topics = [
        ("Understanding Diabetes", "Explore the causes, treatments, and management of diabetes."),
        ("Heart Disease Prevention", "Strategies to prevent heart disease through diet and exercise."),
        ("Latest in Mental Health", "Discussion on new therapies for treating depression."),
        ("Benefits of Vaccination", "How vaccines protect us from various diseases."),
        ("Handling Chronic Pain", "Techniques for managing chronic pain without medication.")
    ]

    return {
        str(uuid.uuid4()): create_post(title, content, random.choice(users)[0], datetime.now(UTC))
        for title, content in medical_topics
    }


posts = generate_medical_posts()


