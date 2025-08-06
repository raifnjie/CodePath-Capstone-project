# CodePath-Capstone-project

Original App Design Project - README Template
===

# CafeMe

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

As someone who likes Cafes its hard to find a good one that has a good reputation and good coffee of course! With Cafe finder users can browse differnt cafes in their area and look at ratings of them and even pictures differtnt people have uploaded on the app about the cafe. 

### App Evaluation

-**Category:** Lifestyle/social 
   - **Mobile:** Website is view only, mobile first experience.
   - **Story:** Users can browse cafes relative to their location on the home feed. They can click on it and see user uploaded pictures and menus of the cafes. 
   - **Habit:** App can be used anytime anywhere and promotes lifestyle based exploration.  
   - **Market:** College students, Remote workers, Young adults, etc.
   - **Scope:** Zip code search + map of cafés, Filters for Wi-Fi, vibe, food, seating, User uploads, saved lists, favorites,Aesthetic-based categories, in-app check-ins. 


## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

-User can log in/sign up
-User can search for cafés by zip code
-User can browse list of nearby cafés
-User can tap a café to view its detail page
-User can see user-uploaded photos of the café
-User can upload a photo and tag the vibe (e.g., quiet, aesthetic, Wi-Fi)
-User can save cafés to a favorites list
-User can log out

**Optional Nice-to-have Stories**

-User can filter cafés by tags (e.g., quiet, food, seating)
-User can check in at cafés and add to a “visited” log
-User can leave a written review or short rating
-Push notifications for newly opened cafés nearby
-AI café matcher based on user history/preferences
-Integrated café journal with notes & mood

### 2. Screen Archetypes
Login/Signup Screen:
    User can log in or create a new account

Home / Explore Screen:
Search bar
List of nearby cafés
Map view toggle

Café Detail Screen:
Café info, tags, photo gallery, basic location/map
Option to add to favorites

Upload / Post Café Photo Screen:
Upload image + tag the café vibe
Submit to public gallery

User Profile Screen:
View saved cafés
View uploaded images
Edit profile

### 3. Navigation

**Tab Navigation** (Tab to Screen)

-Home / Explore
-Upload / Post
-Profile

**Flow Navigation** (Screen to Screen)

-Login → Home
-Home → Café Detail
-Café Detail → Upload
-Profile → Saved Cafés
-Profile → Uploaded Images

## Wireframes
<img src="file:///Users/Raif/Downloads/CafeMe%20Spec%20overview.pdf" width=600>
Image is embeded above, but cant get it to show up. 

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
<div>
    <a href="https://www.loom.com/share/f111742a683d48708be2e5c9c374986c">
    </a>
    <a href="https://www.loom.com/share/f111742a683d48708be2e5c9c374986c">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/f111742a683d48708be2e5c9c374986c-ad8bbcf555e356a7-full-play.gif">
    </a>
  </div>
Comeplted so far during sprints: 
1. Created a new Xcode project using UIKit and Storyboard
-App is named CafeMe
-Interface is Storyboard-based
Initial ViewController was modified to become the Login Screen

2. Tab Bar Navigation
 -Added a UITabBarController to the storyboard
-Connected 3 View Controllers to the Tab Bar:
-Home View
-Upload View
- Profile View
-Each tab has a proper title/icon set
-Each tab screen is linked to a matching Swift class file
-Verified tabs show up properly when app runs

3. Login Screen
 -Reused the initial default ViewController as your Login screen
 -Added UITextFields and UIButton for user login
- Renamed the class to LoginViewController (had a crash, but recovered)
 -Connected the login screen to its .swift file again (or are in process of doing so)
 -Set the Login screen as the Initial View Controller
 -Added a segue from the Login button to the Tab Bar Controller
 -Configured that segue to "Present Modally" and "Full Screen"

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
