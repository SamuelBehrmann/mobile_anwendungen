import uuid

users = {
    str(uuid.uuid4()): {
        "name": "Alice Wonderland",
        "imageUrl": "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
        "titles": ["Dr", "PhD"],
        "email": "Alice.Wonderland@Wishmail.de",
        "description": "Researcher in quantum computing and avid chess player.",
        "password": "A1ic3W0nd3rl@nd!",
        "phone": "+1234567890"
    },
    str(uuid.uuid4()): {
        "name": "Emanuel Henrike",
        "imageUrl": "https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg",
        "titles": ["Dr", "PhD"],
        "email": "Emanuel.Herike@Wishmail.de",
        "description": "Environmental scientist passionate about sustainable living.",
        "password": "Emanu3lH3nrik3#2023",
        "phone": "+0987654321"
    },
    str(uuid.uuid4()): {
        "name": "Anneliese Edgar",
        "imageUrl": "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg",
        "titles": [],
        "email": "Annelise.Edgar@Wishmail.de",
        "description": "Digital artist and freelance graphic designer.",
        "password": "Ann3l!eseEdg@rArt",
        "phone": "+1122334455"
    },
    str(uuid.uuid4()): {
        "name": "Dagmar Eugenie",
        "imageUrl": "https://i.pinimg.com/474x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg",
        "titles": ["Dr", "Prof"],
        "email": "Dagmar.Eugenie@Wishmail.de",
        "description": "Professor of medieval literature with a love for hiking.",
        "password": "D@gm@rEug3nie2023",
        "phone": "+5566778899"
    }
}