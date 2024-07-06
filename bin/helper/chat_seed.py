import uuid
from users_seed import users
from datetime import datetime, timedelta

users = list(users.items())
user1Id = users[0][0]
user2Id = users[1][0]
user3Id = users[2][0]
user4Id = users[3][0]

# Starting timestamp for the dummy data
start_time = datetime(2024, 7, 1, 9, 0, 0)

def add_minutes(dt, minutes):
    return dt + timedelta(minutes=minutes)

# Initializing chats_data with realistic timestamps
chats_data = [
    {
        "id": str(uuid.uuid4()),
        "participants": [user1Id, user2Id],
        "messages": [
            {"content": "Hi, Alice!", "authorId": user1Id, "timestamp": start_time.isoformat()},
            {"content": "Hello, Bob!", "authorId": user2Id, "timestamp": add_minutes(start_time, 2).isoformat()},
            {"content": "How's your day going?", "authorId": user1Id, "timestamp": add_minutes(start_time, 4).isoformat()},
            {"content": "Pretty good, just working on some projects. You?", "authorId": user2Id, "timestamp": add_minutes(start_time, 6).isoformat()},
            {"content": "Same here. Got caught up in coding.", "authorId": user1Id, "timestamp": add_minutes(start_time, 8).isoformat()},
            {"content": "Coding can be quite the rabbit hole.", "authorId": user2Id, "timestamp": add_minutes(start_time, 10).isoformat()},
            {"content": "Indeed. Working on anything exciting?", "authorId": user1Id, "timestamp": add_minutes(start_time, 12).isoformat()},
            {"content": "Yeah, building a new app. It's challenging but fun.", "authorId": user2Id, "timestamp": add_minutes(start_time, 14).isoformat()},
            {"content": "Sounds interesting. What's the app about?", "authorId": user1Id, "timestamp": add_minutes(start_time, 16).isoformat()},
            {"content": "It's a productivity tool. Still in early stages though.", "authorId": user2Id, "timestamp": add_minutes(start_time, 18).isoformat()},
            {"content": "Keep me posted. Would love to try it out.", "authorId": user1Id, "timestamp": add_minutes(start_time, 20).isoformat()},
            {"content": "Definitely will. Could use your feedback.", "authorId": user2Id, "timestamp": add_minutes(start_time, 22).isoformat()},
            {"content": "Looking forward to it. Anyway, got any plans for the weekend?", "authorId": user1Id, "timestamp": add_minutes(start_time, 24).isoformat()},
            {"content": "Not much. Maybe just relax and catch up on some reading. You?", "authorId": user2Id, "timestamp": add_minutes(start_time, 26).isoformat()},
            {"content": "Planning a small hiking trip. The weather looks perfect.", "authorId": user1Id, "timestamp": add_minutes(start_time, 28).isoformat()},
            {"content": "That sounds like a great idea. Love hiking.", "authorId": user2Id, "timestamp": add_minutes(start_time, 30).isoformat()},
            {"content": "It's been too long since the last one. Can't wait.", "authorId": user1Id, "timestamp": add_minutes(start_time, 32).isoformat()},
            {"content": "Enjoy it! And take lots of pictures.", "authorId": user2Id, "timestamp": add_minutes(start_time, 34).isoformat()},
            {"content": "Will do. Maybe we can plan one together next time.", "authorId": user1Id, "timestamp": add_minutes(start_time, 36).isoformat()},
            {"content": "I'd like that. Let's definitely plan something.", "authorId": user2Id, "timestamp": add_minutes(start_time, 38).isoformat()},
            {"content": "Great, I'll look into some trails and let you know.", "authorId": user1Id, "timestamp": add_minutes(start_time, 40).isoformat()},
            {"content": "Sounds good. Talk later and have fun planning!", "authorId": user2Id, "timestamp": add_minutes(start_time, 42).isoformat()}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [user1Id, user3Id],
        "messages": [
            {"content": "How's it going, Charlie?", "authorId": user1Id, "timestamp": add_minutes(start_time, 50).isoformat()},
            {"content": "All good, Alice!", "authorId": user3Id, "timestamp": add_minutes(start_time, 52).isoformat()}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [user2Id, user4Id],
        "messages": [
            {"content": "Hey, Dana!", "authorId": user2Id, "timestamp": add_minutes(start_time, 60).isoformat()},
            {"content": "Hi, Bob! How are you?", "authorId": user4Id, "timestamp": add_minutes(start_time, 62).isoformat()}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [user3Id, user4Id],
        "messages": [
            {"content": "Dana, ready for the meeting?", "authorId": user3Id, "timestamp": add_minutes(start_time, 70).isoformat()},
            {"content": "Yes, Charlie. See you there!", "authorId": user4Id, "timestamp": add_minutes(start_time, 72).isoformat()}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [user1Id, user4Id],
        "messages": [
            {"content": "Alice, have you seen my book?", "authorId": user4Id, "timestamp": add_minutes(start_time, 80).isoformat()},
            {"content": "Not yet, Dana. I'll let you know if I do.", "authorId": user1Id, "timestamp": add_minutes(start_time, 82).isoformat()}
        ]
    }
]
