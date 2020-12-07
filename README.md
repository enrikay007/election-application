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
