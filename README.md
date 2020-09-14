# Deocared Icon

An Icon that supports shadow decorations.

![snapshot](example/assets/images/snapshot.png)

## Usage

To use this plugin, add `decorated_icon` as a [dependency in your pubspec.yaml file](https://flutter.io/using-packages/).

## Example

Import the library.

``` dart
import 'package:decorated_icon/decorated_icon.dart';
```

Then use `DecoratedIcon` as you would any other widget:
```dart
Scaffold(
  body: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DecoratedIcon(
          Icons.android,
          color: Colors.purple,
          size: 60.0,
          shadows: [
            BoxShadow(
              blurRadius: 42.0,
              color: Colors.purpleAccent,
            ),
            BoxShadow(
              blurRadius: 12.0,
              color: Colors.white,
            ),
          ],
        ),
        DecoratedIcon(
          Icons.favorite,
          color: Colors.lightBlue.shade50,
          size: 60.0,
          shadows: [
            BoxShadow(
              blurRadius: 12.0,
              color: Colors.blue,
            ),
            BoxShadow(
              blurRadius: 12.0,
              color: Colors.green,
              offset: Offset(0, 6.0),
              spreadRadius: 60.0,
            ),
          ],
        ),
        DecoratedIcon(
          Icons.fingerprint,
          color: Colors.orange,
          size: 60.0,
          shadows: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3.0, 3.0),
            ),
          ],
        ),
      ],
    ),
  ),
);
```