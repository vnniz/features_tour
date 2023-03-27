import 'package:features_tour/features_tour.dart';
import 'package:flutter/material.dart';

class IntrodureConfig {
  /// Global configuration
  static IntrodureConfig global = const IntrodureConfig();

  /// Color of the background
  final Color backgroundColor;

  /// Padding of the `introdure` widget
  final EdgeInsetsGeometry padding;

  /// Alignmnent of the `introdure` widget in side `quarantAlignment`.
  ///
  /// This value automatically aligns depending on the `quarantAlignment`.
  /// Make it as close as possible to other.
  final Alignment? alignment;

  /// Quadrant rectangle for `introdure` widget.
  final QuadrantAlignment quadrantAlignment;

  const IntrodureConfig({
    this.backgroundColor = Colors.black87,
    this.padding = const EdgeInsets.all(20.0),
    this.alignment,
    this.quadrantAlignment = QuadrantAlignment.top,
  });

  /// Apply new settings to the `introdure` widget base on [global] settings.
  factory IntrodureConfig.copyWith({
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
    Alignment? alignment,
    QuadrantAlignment? quadrantAlignment,
  }) {
    return IntrodureConfig(
      backgroundColor: backgroundColor ?? global.backgroundColor,
      padding: padding ?? global.padding,
      alignment: alignment ?? global.alignment,
      quadrantAlignment: quadrantAlignment ?? global.quadrantAlignment,
    );
  }

  IntrodureConfig copyWith({
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
    Alignment? alignment,
    QuadrantAlignment? quadrantAlignment,
    Duration? animationDuration,
  }) {
    return IntrodureConfig(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      alignment: alignment ?? this.alignment,
      quadrantAlignment: quadrantAlignment ?? this.quadrantAlignment,
    );
  }
}
