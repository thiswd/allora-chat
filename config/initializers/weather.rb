require 'open_weather'

options = { units: "metric", APPID: "f2aa967fb9c24b70e9ce5e29b55f7fb6" }
OpenWeather::Current.city("Berlin, DE", options)
