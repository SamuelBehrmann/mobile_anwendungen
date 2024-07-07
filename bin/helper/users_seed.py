import uuid

users = {
    str(uuid.uuid4()): {
        "name": "Alice Johnson",
        "imageUrl": "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
        "titles": ["Dr", "PhD"],
        "email": "alice.johnson@wishmail.de",
        "description": "Researcher in quantum computing and avid chess player.",
        "password": "A1ic3J0hns0n!",
        "phone": "+1234567890"
    },
    str(uuid.uuid4()): {
        "name": "Bob Smith",
        "imageUrl": "https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg",
        "titles": ["Dr", "PhD"],
        "email": "bob.smith@wishmail.de",
        "description": "Environmental scientist passionate about sustainable living.",
        "password": "B0bSm!th#2023",
        "phone": "+0987654321"
    },
    str(uuid.uuid4()): {
        "name": "Charlie Brown",
        "imageUrl": "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg",
        "titles": [],
        "email": "charlie.brown@wishmail.de",
        "description": "Digital artist and freelance graphic designer.",
        "password": "Ch@rlieBr0wnArt",
        "phone": "+1122334455"
    },
    str(uuid.uuid4()): {
        "name": "Dana Williams",
        "imageUrl": "https://i.pinimg.com/474x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg",
        "titles": ["Dr", "Prof"],
        "email": "dana.williams@wishmail.de",
        "description": "Professor of medieval literature with a love for hiking.",
        "password": "D@n@W!lli@ms2023",
        "phone": "+5566778899"
    }
}
