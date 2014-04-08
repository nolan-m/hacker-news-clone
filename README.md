Hacker News clone

-DONE- As a user, I want to post a link, so that I can share it with other nerds.

-DONE- As a user, I want to vote up other people's links, so that I can promote links that I like.

-DONE- As a user, I want the links with the most votes to be listed first, so that I can know what's most popular.

-DONE- As a user, I want the link ranking to be a function of both the number of votes and the time since the post, so that popular links don't stay on the homepage forever. Hint: come up with a way to score links where they get a certain number of points for how new they are, and a certain number for how many votes they have. Don't spend too much time fussing with the algorithm - just make up something simple.

-DONE- As a user, I want to comment on a link, so that I can have a discussion about the article that was submitted.

As a user, I want to comment on a comment, so that I can have a discussion about the comment. Hint: use polymorphism so that a comment can belong to a post or to another comment.

To display comments on comments, make each comment a partial. For each comment, loop through the comments on the comment, recursively rendering partial within itself.
