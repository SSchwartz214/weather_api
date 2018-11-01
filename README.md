# Event Mapper Weather API
[![Build Status](https://travis-ci.com/SSchwartz214/weather_api.svg?branch=master)](https://travis-ci.com/SSchwartz214/weather_api)

## Description

This is a microservice API that supplies weather conditions for the location of events on [Event Mapper](https://event-mapper-fe.herokuapp.com/), an app that locates and displays events hosted by Ticket Master on a map.  The user can then add events to their watchlist to view and purchase tickets to at a later date.


## Rails version: 5.1.6

## Configuration

* Clone the repository:
```
git clone https://github.com/SSchwartz214/event_mapper_weather_api.git
```

* Setup:
```
$ bundle install
$ bundle update
$ rake db:{create,migrate}
```

* To view locally:
```
$ rails s
visit 'localhost:3000' in your browser
```

* How to run the test suite
```
$ rspec
```

* Production Link:
  [Event Mapper Weather API](https://event-mapper-weather.herokuapp.com/)

## API Endpoints

### Weather:

* GET /api/v1/weather/[latitude],[longitude],[time]
  * Returns weather conditions for the specified location and time
    * example request url: 
    ```
    /api/v1/weather?lat=42.3601&lng=-71.0589&date=2019-04-02T01:30:00Z
    ```
   
 ## Contributors

* Seth Schwartz: https://github.com/SSchwartz214
* Paul Kim: https://github.com/sojurner
* Joel O'Connor: https://github.com/JoOCon
