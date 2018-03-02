# GoogleMaps-iOS-BOILERPLATE

## First Steps

Get an API key

Follow these steps to get an API key:

- Go to the [Google API Console.](https://console.developers.google.com/flows/enableapi?apiid=maps_ios_backend&reusekey=true)

- Create or select a project.

- Click Continue to enable the Google Maps SDK for iOS.

- On the Credentials page, get an API key. 

Note: If you have a key with iOS restrictions, you may use that key. You can use the same key with any of your iOS applications within the same project.
From the dialog displaying the API key, select Restrict key to set an iOS restriction on the API key.
In the Restrictions section, select iOS apps, then enter your app's bundle identifier. For example: com.example.hellomap.

- Click Save.

Your new iOS-restricted API key appears in the list of API keys for your project. An API key is a string of characters, something like this:

    AIzaSyBdVl-cTICSwYKrZ95SuvNw7dbMuDt1KG0

For more information on using the Google API Console, see [API Console Help](https://support.google.com/googleapi).

## SIMPLE SETUP

First, open the file:

    AppDelegate.m

And replace "AIzaSyDCuIBpXuEQTZHFAJTQ-oMh1aZLk2GYmxQ" by your KEY in:

    [GMSServices provideAPIKey:@"AIzaSyDCuIBpXuEQTZHFAJTQ-oMh1aZLk2GYmxQ"];
    
## RUN & ENJOY

