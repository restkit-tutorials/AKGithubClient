# AKGithubClient

iOS app built with RestKit that pulls some basic data from Github API for http://restkit-tutorials.com/ article

Check out full article here: [Building iOS app with RestKit. Part 1](http://restkit-tutorials.com/building-ios-app-with-restkit/)

# Installation
You need to install [Cocoapods](http://cocoapods.org/)

```shell
git clone git@github.com:restkit-tutorials/AKGithubClient.git
cd AKGithubClient
pod install
```

# Running
If you don't want to read a post and just want to play around with code, make sure to do couple of simple steps:

### Step 1. Create Personal Access Token

* Go to Github
* Go to Account Settings -> Applications
* Find "Personal Access Tokens" section
* Create your Personal Access Token and copy it

### Step 2. Update PERSONAL_ACCESS_TOKEN in app

* Open file `AKGithubClient-Prefix.pch`
* Find `PERSONAL_ACCESS_TOKEN` and set it to your token

Now you can start the app.


