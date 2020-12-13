import 'package:flutter/material.dart';

class Shadow extends StatelessWidget {
  final Widget child;

  Shadow({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0xFF1E1E1E),
          ),
        ],
      ),
      child: this.child,
    );
  }
}
