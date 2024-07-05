import uuid
from users_seed import users

users = list(users.items())
user1Id = users[0][0]
user2Id = users[1][0]
user3Id = users[2][0]
user4Id = users[3][0]

chats_data = [
    {   
        "id": str(uuid.uuid4()),
        "participants": [ user1Id, user2Id ],
        "messages": [
            {"content": "Hi, Alice!", "userId": user1Id},
            {"content": "Hello, Bob!", "userId": user2Id},
            {"content": "How's your day going?", "userId": user1Id},
            {"content": "Pretty good, just working on some projects. You?", "userId": user2Id},
            {"content": "Pretty good, just working on some projects. You?", "userId": user2Id},
            {"content": "Pretty good, just working on some projects. You?", "userId": user2Id},
            {"content": "Same here. Got caught up in coding.", "userId": user1Id},
            {"content": "Coding can be quite the rabbit hole.", "userId": user2Id},
            {"content": "Indeed. Working on anything exciting?", "userId": user1Id},
            {"content": "Yeah, building a new app. It's challenging but fun.", "userId": user2Id},
            {"content": "Sounds interesting. What's the app about?", "userId": user1Id},
            {"content": "It's a productivity tool. Still in early stages though.", "userId": user2Id},
            {"content": "It's a productivity tool. Still in early stages though.", "userId": user2Id},
            {"content": "It's a productivity tool. Still in early stages though.", "userId": user2Id},
            {"content": "Keep me posted. Would love to try it out.", "userId": user1Id},
            {"content": "Definitely will. Could use your feedback.", "userId": user2Id},
            {"content": "Looking forward to it. Anyway, got any plans for the weekend?", "userId": user1Id},
            {"content": "Looking forward to it. Anyway, got any plans for the weekend?", "userId": user1Id},
            {"content": "Looking forward to it. Anyway, got any plans for the weekend?", "userId": user1Id},
            {"content": "Looking forward to it. Anyway, got any plans for the weekend?", "userId": user1Id},
            {"content": "Not much. Maybe just relax and catch up on some reading. You?", "userId": user2Id},
            {"content": "Planning a small hiking trip. The weather looks perfect.", "userId": user1Id},
            {"content": "That sounds like a great idea. Love hiking.", "userId": user2Id},
            {"content": "It's been too long since the last one. Can't wait.", "userId": user1Id},
            {"content": "Enjoy it! And take lots of pictures.", "userId": user2Id},
            {"content": "Will do. Maybe we can plan one together next time.", "userId": user1Id},
            {"content": "I'd like that. Let's definitely plan something.", "userId": user2Id},
            {"content": "Great, I'll look into some trails and let you know.", "userId": user1Id},
            {"content": "Sounds good. Talk later and have fun planning!", "userId": user2Id}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [ user1Id, user3Id ],
        "messages": [
            {"content": "How's it going, Charlie?", "userId": user1Id},
            {"content": "All good, Alice!", "userId": user3Id}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [ user2Id, user4Id ],
        "messages": [
            {"content": "Hey, Dana!", "userId": user2Id},
            {"content": "Hi, Bob! How are you?", "userId": user4Id}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [ user3Id, user4Id ],
        "messages": [
            {"content": "Dana, ready for the meeting?", "userId": user3Id},
            {"content": "Yes, Charlie. See you there!", "userId": user4Id}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [ user1Id, user4Id ],
        "messages": [
            {"content": "Alice, have you seen my book?", "userId": user4Id},
            {"content": "Not yet, Dana. I'll let you know if I do.", "userId": user1Id}
        ]
    }
]