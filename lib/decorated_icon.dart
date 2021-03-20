library decorated_icon;

import 'package:flutter/material.dart';

/// An icon that can be easily decorated with shadows.
class DecoratedIcon extends StatelessWidget {
  /// The color of the icon.
  ///
  /// Defaults to white, based on Flutter's defaults for uninherited [TextStyle] values.
  final Color? color;

  /// The [IconData] to use as the icon. (E.g.: `Icons.favorite`)
  final IconData icon;

  /// A [List] of [Shadow] properties to apply to the icon.
  ///
  /// Note that Flutter stacks shadows in reverse order.
  /// Meaning the bottom-most shadow will display over the other shadows in the list.
  final List<Shadow>? shadows;

  /// The size of the icon.
  ///
  /// Defaults to 10 pixels, based on Flutter's defaults for uninherited [TextStyle] values.
  final double? size;

  const DecoratedIcon(
    this.icon, {
    Key? key,
    this.color,
    this.shadows,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      String.fromCharCode(icon.codePoint),
      style: TextStyle(
        color: color,
        decoration: TextDecoration.none,
        fontFamily: icon.fontFamily,
        fontWeight: FontWeight.normal,
        fontSize: size,
        height: 1,
        inherit: false,
        package: icon.fontPackage,
        shadows: shadows,
      ),
    );
  }
}
