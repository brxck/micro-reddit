# micro-reddit

## Model planning

User
  - username
  - email
  - password

  - has_many posts
  - has_many comments

Post
  - title
  - text
  - image

  - has_many comments
  - has_one user

Comment
  - text

  - has_one user
  - has_one post