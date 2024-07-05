import uuid

users = {
    str(uuid.uuid4()): {
        "name": "Alice Wonderland",
        "imageUrl": "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
        "titles": ["Dr", "PhD"],
    },
    str(uuid.uuid4()): {
        "name": "Emanuel Henrike",
        "imageUrl": "https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg",
        "titles": ["Dr", "PhD"],
    },
    str(uuid.uuid4()): {
        "name": "Anneliese Edgar",
        "imageUrl": "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg",
        "titles": [],
    },
    str(uuid.uuid4()): {
        "name": "Dagmar Eugenie",
        "imageUrl": "https://i.pinimg.com/474x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg",
        "titles": ["Dr", "Prof"],
    }
}