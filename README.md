# GoGaming

## This is a gamification web application for Gogoro, a Smartscooter  company, aiming at below:

* Improve the way of searching Gostations.
* Makes Riding Gogoro to be fun!

## In this application, users are able to :

* Plan their routes, directions and find Gostations or Friendly Store nearby
* Challenge on a Trip and get badge, points if trip is completed
* Reward by badges, points , ranking and Gogoro products.




# Screenshot

![image](https://github.com/Lienchi/GoGaming/blob/master/app/assets/images/screenshot/index.png)
![image](https://github.com/Lienchi/GoGaming/blob/master/app/assets/images/screenshot/trip_index.png)
![image](https://github.com/Lienchi/GoGaming/blob/master/app/assets/images/screenshot/trip_show.png)
![image](https://github.com/Lienchi/GoGaming/blob/master/app/assets/images/screenshot/user_show.png)

# Getting Started

1. Run `bundle install`
2. Run `rails db:migrate`
3. Run `rails db:seed`


# Prerequisites

Please check on [Merit](https://github.com/merit-gem/merit) to understand the PBL structure.

# ERD

![image](https://github.com/Lienchi/GoGaming/blob/master/app/assets/images/screenshot/ERD.png)


- **Challenge:**  a trip which user completed
- **Checkin:** a gostation which user checkin to ("not belongs to a trip")



# How to win badges

A trip include many trip_gostations , if all the trip_gostations#check status is true. Trip is completed (Challenge then create to user) and Badge will issue by Merit

# How to win points

1. receive a badge
2. gostations#checkin status is true

# Built With

- Rails '~> 5.1.5' - frame work
- Google Map API 
- [gon](https://github.com/gazay/gon)
- [Merit](https://github.com/merit-gem/merit) PBL system
- Bootstrap3 - Front End

# Deployment

- Heroku
- Amazon S3


# Authors
- Lienchi  
- Sapphirekuo 
- anna770822

