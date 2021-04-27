/// Provides a [DecoratedIcon] that can be easily decorated with shadows.
library decorated_icon;

import 'package:flutter/material.dart';

/// An icon that can be easily decorated with shadows.
class DecoratedIcon extends StatelessWidget {
  /// An icon that can be easily decorated with shadows.
  const DecoratedIcon(
    this.icon, {
    Key? key,
    this.size,
    this.color,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  }) : super(key: key);

  /// The color of the icon.
  ///
  /// Defaults to white, based on defaults for uninherited [TextStyle] values.
  final Color? color;

  /// The [IconData] to use as the icon. (E.g.: `Icons.favorite`)
  final IconData icon;

  /// A [List] of [Shadow] properties to apply to the icon.
  ///
  /// Note that Flutter stacks shadows in reverse order.
  /// Meaning the bottom-most shadow will display over the other shadows in the list.
  final List<Shadow>? shadows;

  /// The size of the icon in logical pixels.
  ///
  /// Defaults to `10.0`, based on defaults for uninherited [TextStyle] values.
  final double? size;

  /// Label announced with accessibility modes active
  /// (such as TalkBack or VoiceOver) but not shown in the UI.
  final String? semanticLabel;

  /// Will have no effect if [icon]'s [IconData.matchTextDirection] field is `false`,
  /// but a `DecoratedIcon` must provide text direction for specification coherence:
  /// either directly with this value or, if `null`, ambient [Directionality.of].
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    final iconDirection = textDirection ?? Directionality.of(context);

    Widget iconWidget = Text(
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

    if (icon.matchTextDirection) {
      switch (iconDirection) {
        case TextDirection.rtl:
          // Mirrors over Y-axis
          iconWidget = Transform(
            transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0), // scales X
            alignment: Alignment.center,
            transformHitTests: false,
            child: iconWidget,
          );
          break;
        case TextDirection.ltr:
          break;
      }
    }

    return Semantics(
      label: semanticLabel,
      child: ExcludeSemantics(child: iconWidget),
    );
  }
}
