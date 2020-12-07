# README
Ruby version

ruby '2.6.2'

Software Dependencies( important gems)

gem 'groupdate'
gem 'chartkick'
# For xls and csv files upload
gem 'roo', '~> 2.8.0'
gem 'roo-xls'
gem 'font-awesome-sass', '~> 5.13.0'
gem 'image_processing', '~> 1.2'
gem 'jquery-rails'
gem 'searchkick'
gem 'devise'
gem 'mini_magick'
gem 'figaro'
gem 'fog-aws'
gem 'carrierwave', '~> 2.0'
gem 'pg', group: :production
gem 'rails_12factor', group: :production 

This application is an aggregator for particular political election. I created this application in roughly 2 days..The application enables the user to able to create read update and delete records of electoral process within constituencies. It then aggregator results from the regions based on each party and displays the party that is leading the elections. The app presents results as tables, pie-charts, bar-charts and line plots respectively using chartkick & chart.js gem. You can also upload results as CSV files in specific format given within tables of data.

The application has user-login admin sign-out features. The application can view as follows
![vote7](https://user-images.githubusercontent.com/1752399/101395892-d7ccbb00-38ca-11eb-8aa2-b0e1e8d8ab4a.png)
![vote1](https://user-images.githubusercontent.com/1752399/101395843-c97e9f00-38ca-11eb-8492-6bdb48a0a99a.png)
![vote2](https://user-images.githubusercontent.com/1752399/101395845-caafcc00-38ca-11eb-8b97-8f51de417472.png)
![vote3](https://user-images.githubusercontent.com/1752399/101395847-cb486280-38ca-11eb-8890-ad468d169342.png)
![vote8](https://user-images.githubusercontent.com/1752399/101395849-cc798f80-38ca-11eb-91a0-d7bfddb15d84.png)
![vote4](https://user-images.githubusercontent.com/1752399/101395886-d69b8e00-38ca-11eb-9150-bf8310c04f63.png)
![vote6](https://user-images.githubusercontent.com/1752399/101395903-db604200-38ca-11eb-9703-cf07c940588c.png)
![vote5](https://user-images.githubusercontent.com/1752399/101395916-def3c900-38ca-11eb-998b-1206ca6deeaa.png)
