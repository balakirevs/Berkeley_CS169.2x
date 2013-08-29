Quiz:

1. The term "authentication" refers to

   - proving who you are

2. Suppose we want to add a Theater model to Rotten Potatoes, with the assumption that a Theater is associated with one Movie, but a given Movie could be showing at many Theaters. In our Rails app we would like to be able to write movie.theaters to obtain a list of all the theaters at which a movie is showing. Which statement is correct?

   - We must add has_many :theaters to the Movie model.

3. Which of the following ActiveRecord lifecycle callbacks ("hooks") could get called when an ActiveRecord operation calls "create" (i.e. movie.create)? Select all that apply.

  - before_validation 
  - after_validation 
  - before_save 
  - after_save        

4. The programming methodology for DRYing out code by separating crosscutting concerns from the main code of the actions to which the concerns apply is called

  - Aspect-Oriented Programming

5. Which is true about third-party authentication between a requester and a provider?

  - Access can be time-limited to expire on a pre-set date 

6. Suppose we want to model the following in a Twitter-like app:

      a user follows many other users
      a user has many tweets
      we want to easily get the tweets of everyone a user follows
    
    Select the correct statement:

    - We do not need a foreign key for Tweets in the users table

7. Which of the following are true about partials?

       (i) Partials rely heavily on configuration over convention, rather than convention over configuration
       (ii) Partials help DRY out different views which use similar content
       (iii) A partial can access all of the same variables as the view that includes it
       (iv) Partial files must begin with an underscore

    - (ii) and (iv) only Status: correct

              