# Martin Pulgar Construction App


<img src="header1.jpg" alt="header1" width="900"/>
<br /><br />
Martin Pulgar Construction is a fictitious construction company. They have approached their IT department <br />to create a new mobile app for their ground staff to upload photos.
<br /><br />

<img src="header.gif" alt="header" width="400"/>


### Installing

Install dependencies

```
flutter pub get
```

### Run the app

```
flutter run -v -d emulator-5554 (your device)
```

## Running the tests

```
flutter test
```

## Building scripts for [Mobx](https://pub.dev/packages/mobx) and [Mockito](https://pub.dev/packages/mockito):

```
dart run build_runner watch --delete-conflicting-outputs
```

## Built With

* [Flutter](https://flutter.dev) - Build apps for any screen
* [Dart](https://dart.dev) - Dart is a client-optimized language for fast apps on any platform
* [Mobx](https://pub.dev/packages/mobx) - MobX is a state-management library that makes it simple to connect the reactive data of your application with the UI
* [Mockito](https://pub.dev/packages/mockito) - Let's create mocks!

## Authors

* **Dry F.** - *Initial work* - [Linkedin](https://www.linkedin.com/in/dreyfiferreira) - [Website](https://dreyfi.com)

## What would I do in a real app?
* [Remote config](https://firebase.google.com/docs/remote-config) then remove all hardcoded params
* Form validations
* [Integration tests](https://docs.flutter.dev/cookbook/testing/integration/introduction). Write tests that runs the app and perform user flow simulation
* For multiple pages app I would use the [flutter_modular](https://pub.dev/packages/flutter_modular) package, then take advantage of your dependency injection system
* [Crashlytics](https://firebase.google.com/products/crashlytics) then know everything that goes wrong in prod

## Thanks

* All coffee makers in Australia
* My two dogs Nina and Dinger
* GTA V Online
