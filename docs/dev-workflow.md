# The Dev Workflow

We are using a modified version of the [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow).

## Setting up

1. Clone and checkout the following branch: 'main'

### When starting a new feature/unit of work

1. __Pick up an issue on Github__
    Before you actually start working, assign to yourself an issue on Github or create a new issue if one doesn't exist. That helps the team to know what everyone is doing at any point in time.

1. __Pull the latest.__
    Begin by pulling to make sure you are up-to-date before creating a branch to do your work  
    This assumes you have no local commits that haven't yet been pushed (i.e., that you were  
    previously up-to-date with origin).

1. __Create a topic branch to do your work.__
    You must work in topic branches, in order to help us keep our features isolated and easily moved between branches.
    Our policy is to start all topic branches off of the 'main' branch.
    Branch names should use the following format '[ticketnumber]-[shortdescription]'. If there is no ticket yet, create one and assign it to yourself!

        git checkout main
        git checkout -b foo-1337-add-more-cowbells

1. __Do your work.__
    Now, do your work using the following highly accurate and efficient algorithm :)

    1. Make changes.
    1. Test your changes (you're testing, right?).
    1. Add your changes to Git.
    1. Commit your changes.
    1. if (moreWorkToDo) go to #3.1 else continue.
    1. [Rebase](https://git-scm.com/book/en/v2/Git-Branching-Rebasing) the latest changes from main onto your feature branch.
    1. This is a good time to tidy up your branch by squashing and [fixing commit messages](https://chris.beams.io/posts/git-commit/).
1. __Start a code review.__
    Start a code review by pushing your branch up to Github and creating a Pull Request from your branch to ***main***. Wait for all the green goodness from the CI/CD stuff and at least someone on the team to approve the PR.

1. __Rebase your changes in to main.__
    Click the bright green "Rebase" button on your pull request! **NOTE: DO NOT DELETE THE TOPIC BRANCH!!**

1. __Be ready to guide your change through QA, Staging and Prod__
    Your change will make its way through the QA and finally Prod environments. Be prepared to fix additional bugs!

**NOTE: DO NOT DELETE THE TOPIC BRANCH!!**
