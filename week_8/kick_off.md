# Teams
## Agile vs Waterfall
## Waterfall
- Specialist
- Linear and sequential 
- Split project into phases
- Only start one phase when one is complete
  - Proposal/ plan/ viability etc
  - Requirements gathering
  - Technical architects
  - Designers
  - Developers building the thing
  - Quality assurance
  - Release number one to users
- Problems
  - Long time in between phases
  - Find out too late that you have built the wrong thing (doesn't meet user needs etc)
  - A lot of effort put in before any work done

## Agile
- Multidisciplinary
- A solution to the above
- Build something iteratively
- Some of the phases are the same but done over shorter period of time and repeatedly in a cycle
  - Discovery 
    - Short feasibility study
    - focus on user need
  - Development
    - Work in sprints (1/2 weeks)
    - Meetings 
      - stand ups (super quick)
        - what you did yesterday
        - what you're doing today
        - blockers
      - Sprint planning
        - Deciding on sprint goal
        - Break down the sprit goal into small pieces
      - Retro
        - How can we be a better team?
        - How do we know if our ceremonies are effective?
      - Review
        - Show your work
  - Maintenance (normally a separate team)
    - Keeping the app running
    - Responding to issues

## Sprint planning
- How do you know if this time was useful?
  - During a sprint, you can take a ticket from the to do list and get on with it
  - Everyone understands what the sprint goal is and why it has been chosen
- Break up the sprint goal in to tickets
- Break up tickets into steps/ checklist
- Estimate complexity
  - Numbers i.e. 1, 3, 5, 8, 13
  - Planning Poker
    - Each team member estimates in their head
    - Then reveal estimates at the same time
    - Then agree on estimate
    - If you can't decide, go with the higher estimate
  - T shirt sizing S, M, L

## Workflow
- main branch - all code on here is reviewed and tests are ALWAYS passing
- do development on 'feature' branches (one branch per ticket)
  - i.e. sign_up branch for Sign up feature
  - Work on that branch, commit often
  - push your branch when with work is complete
  - open a pull request and someone reviews it
    - is it readable, is it fulfilling the task described in the ticket?
  - Approval or ask for changes
    - Request for changes is _normal_
  - Once approved, the author merges it
  - CAVEAT: Merge conflicts!
  - START AGAIN!

## Teams and tech stacks
TEAM: 
Me, Graeme, Harry, Harry, Mitchel

Sinatra, Capybara, RSpec, ActiveRecord
Bcrypt
Example repo: EdwardAndress/active_chitter/app/
Have a look at the docs for the challenge

Decide on MVP