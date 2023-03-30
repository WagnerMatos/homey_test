## Submission notes


### Considerations:


I have decided to use SQLite for easy of use and simplicity but its unlikely SQLite would be used as the final choice. I also try to follow the approach of only making technical decisions when I need to, keeping my options open for as long as I can.

Please note I have made some opinionated decisions as part of the setup (gems, lint, configuration, etc). This was mostly for convenience as I use scripts/snippets and defaults when starting new personal projects. Normally I’d discuss and consider each option with the team before adopting these defaults.

Please note there is one feature test that is missing, which is the test that checks whether the status changes accordingly. I was having an issue with the setup - the `js: true` flag was not working therefore the test wasn't passing. I've spent some  time debugging and the issue was due to configuration / gem versions but I needed a bit more time to get to the bottom of it however I was conscious I was running out of time so I decided to remove it altogether. 

### Questions

- What exactly is a project conversation history app? 
- Who is the target audience?
- Why is this required? What problem is this solving?

### Answers

- I feel this is more like a feature than an app in itself, only wrapped as an app for the purpose the a test (which makes perfect sense), however some context in terms of audience, core objectives, performance considerations, etc are missing which would normally guide some decisions, therefore I chose an approach of explaining my thinking in its context and providing alternatives/suggestions wherever applicable.
- For simplicity and saving time I have chosen PaperTrail gem to log the project change history. This is a case where more context would be required to make a final decision where PaperTrail is indeed the best choice for this app. Not to say that it wouldn’t be, only that other factors would be taken into consideration before making the decision.
- With the Comment model I faced a dilemma. Comment is a type of model that is very often used in many apps and also very often associated with multiple models, therefore a perfect candidate for a polymorphic, however not strictly required in this app. My general approach is to avoid adding anything until you need to, therein lies the question, should I add or not? Technically speaking I didn’t need to but I added so you could see this is something I’ve worked with.
