import uuid
from users_seed import users
from datetime import datetime, timedelta

# Assuming users dictionary is imported or defined above
# Converting users dictionary to list of tuples
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
            {"content": "Hi, Bob!", "authorId": user1Id, "timestamp": start_time.isoformat()},
            {"content": "Hello, Alice!", "authorId": user2Id, "timestamp": add_minutes(start_time, 2).isoformat()},
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
            {"content": "All good, Alice!", "authorId": user3Id, "timestamp": add_minutes(start_time, 52).isoformat()},
            {"content": "What are you working on these days?", "authorId": user1Id, "timestamp": add_minutes(start_time, 54).isoformat()},
            {"content": "Mostly graphic design projects. A bit of digital art too.", "authorId": user3Id, "timestamp": add_minutes(start_time, 56).isoformat()},
            {"content": "Sounds creative! I'd love to see some of your work.", "authorId": user1Id, "timestamp": add_minutes(start_time, 58).isoformat()},
            {"content": "Sure, I can share a few pieces with you.", "authorId": user3Id, "timestamp": add_minutes(start_time, 60).isoformat()},
            {"content": "That would be awesome. Always interested in art.", "authorId": user1Id, "timestamp": add_minutes(start_time, 62).isoformat()},
            {"content": "Great! I'll send you some files soon.", "authorId": user3Id, "timestamp": add_minutes(start_time, 64).isoformat()},
            {"content": "Looking forward to it!", "authorId": user1Id, "timestamp": add_minutes(start_time, 66).isoformat()},
            {"content": "By the way, do you have any book recommendations?", "authorId": user1Id, "timestamp": add_minutes(start_time, 67).isoformat()},
            {"content": "Yes, absolutely. I just finished a great novel on AI ethics.", "authorId": user3Id, "timestamp": add_minutes(start_time, 68).isoformat()},
            {"content": "That sounds intriguing. What's the title?", "authorId": user1Id, "timestamp": add_minutes(start_time, 69).isoformat()},
            {"content": "It's called 'Moral Machines'. A very thought-provoking read.", "authorId": user3Id, "timestamp": add_minutes(start_time, 70).isoformat()},
            {"content": "I'll definitely check it out. Thanks for the recommendation!", "authorId": user1Id, "timestamp": add_minutes(start_time, 71).isoformat()}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [user2Id, user4Id],
        "messages": [
            {"content": "Hey, Dana!", "authorId": user2Id, "timestamp": add_minutes(start_time, 60).isoformat()},
            {"content": "Hi, Bob! How are you?", "authorId": user4Id, "timestamp": add_minutes(start_time, 62).isoformat()},
            {"content": "Doing well, just busy with some environmental reports.", "authorId": user2Id, "timestamp": add_minutes(start_time, 64).isoformat()},
            {"content": "That sounds important. Anything interesting in the reports?", "authorId": user4Id, "timestamp": add_minutes(start_time, 66).isoformat()},
            {"content": "Yeah, some new findings on renewable energy impact.", "authorId": user2Id, "timestamp": add_minutes(start_time, 68).isoformat()},
            {"content": "I'd love to hear more about it. Maybe we can discuss over coffee?", "authorId": user4Id, "timestamp": add_minutes(start_time, 70).isoformat()},
            {"content": "Sure, let's plan for it next week.", "authorId": user2Id, "timestamp": add_minutes(start_time, 72).isoformat()},
            {"content": "Sounds good. Looking forward to it.", "authorId": user4Id, "timestamp": add_minutes(start_time, 74).isoformat()}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [user3Id, user4Id],
        "messages": [
            {"content": "Dana, ready for the meeting?", "authorId": user3Id, "timestamp": add_minutes(start_time, 70).isoformat()},
            {"content": "Yes, Charlie. See you there!", "authorId": user4Id, "timestamp": add_minutes(start_time, 72).isoformat()},
            {"content": "I have some notes I want to share with you beforehand.", "authorId": user3Id, "timestamp": add_minutes(start_time, 74).isoformat()},
            {"content": "Sure, let's go over them quickly.", "authorId": user4Id, "timestamp": add_minutes(start_time, 76).isoformat()},
            {"content": "Alright, here are the key points...", "authorId": user3Id, "timestamp": add_minutes(start_time, 78).isoformat()},
            {"content": "Point one: We need to improve our project management tools.", "authorId": user3Id, "timestamp": add_minutes(start_time, 79).isoformat()},
            {"content": "Point two: Client feedback must be integrated more efficiently.", "authorId": user3Id, "timestamp": add_minutes(start_time, 80).isoformat()},
            {"content": "Good points. Let's address these in the meeting.", "authorId": user4Id, "timestamp": add_minutes(start_time, 82).isoformat()},
            {"content": "Great, see you in the conference room.", "authorId": user3Id, "timestamp": add_minutes(start_time, 83).isoformat()}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [user1Id, user4Id],
        "messages": [
            {"content": "Alice, have you seen my book?", "authorId": user4Id, "timestamp": add_minutes(start_time, 80).isoformat()},
            {"content": "Not yet, Dana. I'll let you know if I do.", "authorId": user1Id, "timestamp": add_minutes(start_time, 82).isoformat()},
            {"content": "It's the one with the blue cover.", "authorId": user4Id, "timestamp": add_minutes(start_time, 83).isoformat()},
            {"content": "Got it. I'll keep an eye out for it.", "authorId": user1Id, "timestamp": add_minutes(start_time, 84).isoformat()},
            {"content": "Thanks! I really need it for my lecture.", "authorId": user4Id, "timestamp": add_minutes(start_time, 85).isoformat()},
            {"content": "No problem. I'll let you know as soon as I find it.", "authorId": user1Id, "timestamp": add_minutes(start_time, 86).isoformat()}
        ]
    },
    {
        "id": str(uuid.uuid4()),
        "participants": [user1Id, user2Id, user3Id],
        "messages": [
            {"content": "Hi everyone, quick team sync?", "authorId": user1Id, "timestamp": add_minutes(start_time, 90).isoformat()},
            {"content": "Sure, Alice!", "authorId": user2Id, "timestamp": add_minutes(start_time, 92).isoformat()},
            {"content": "Count me in!", "authorId": user3Id, "timestamp": add_minutes(start_time, 94).isoformat()},
            {"content": "Alright, let's start with project updates.", "authorId": user1Id, "timestamp": add_minutes(start_time, 95).isoformat()},
            {"content": "I'm currently working on the app's UI design.", "authorId": user3Id, "timestamp": add_minutes(start_time, 96).isoformat()},
            {"content": "The environmental report is almost done on my end.", "authorId": user2Id, "timestamp": add_minutes(start_time, 97).isoformat()},
            {"content": "Great! I'll be focusing on the backend improvements.", "authorId": user1Id, "timestamp": add_minutes(start_time, 98).isoformat()},
            {"content": "Let's aim to wrap things up by end of this week.", "authorId": user1Id, "timestamp": add_minutes(start_time, 99).isoformat()},
            {"content": "Sounds good.", "authorId": user2Id, "timestamp": add_minutes(start_time, 100).isoformat()},
            {"content": "Agreed.", "authorId": user3Id, "timestamp": add_minutes(start_time, 101).isoformat()},
            {"content": "Awesome, thanks team!", "authorId": user1Id, "timestamp": add_minutes(start_time, 102).isoformat()}
        ]
    }
]
