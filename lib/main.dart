import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ClickMeButton(),
        ),
      ),
    );
  }
}

class ClickMeButton extends StatefulWidget {
  @override
  _ClickMeButtonState createState() => _ClickMeButtonState();
}

class _ClickMeButtonState extends State<ClickMeButton> {
  String _animationName = "idle";

  void _startAnimation() {
    setState(() {
      _animationName = "click";
    });
  }

  void _resetAnimation() {
    setState(() {
      _animationName = "idle";
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _startAnimation(),
      onTapUp: (_) => _resetAnimation(),
      onTapCancel: _resetAnimation,
      child: Container(
        width: 200,
        height: 200,
        child: FlareActor(
          "assets/your_animation.flr", // Replace with your animation file path
          animation: _animationName,
        ),
      ),
    );
  }
}

///second button
// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DancingButton(),
//     );
//   }
// }
//
// class DancingButton extends StatefulWidget {
//   @override
//   _DancingButtonState createState() => _DancingButtonState();
// }
//
// class _DancingButtonState extends State<DancingButton>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _animation;
//
//   double _offsetX = 0.0;
//   double _offsetY = 0.0;
//
//   @override
//   void initState() {
//     super.initState();
//
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );
//
//     _animation = Tween(begin: -10.0, end: 10.0).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Curves.easeInOut,
//       ),
//     )..addListener(() {
//         setState(() {});
//       });
//
//     _animationController.repeat(reverse: true);
//   }
//
//   void _moveButtonRandomly() {
//     final random = Random();
//     setState(() {
//       _offsetX = (random.nextDouble() - 0.5) * 40.0;
//       _offsetY = (random.nextDouble() - 0.5) * 40.0;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dancing Button'),
//       ),
//       body: Center(
//         child: Transform.translate(
//           offset: Offset(
//             _offsetX + _animation.value,
//             _offsetY + _animation.value,
//           ),
//           child: ElevatedButton(
//             onPressed: _moveButtonRandomly,
//             child: Text('Dance Button'),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
// }

///first button

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DancingButton(),
//     );
//   }
// }
//
// class DancingButton extends StatefulWidget {
//   @override
//   _DancingButtonState createState() => _DancingButtonState();
// }
//
// class _DancingButtonState extends State<DancingButton>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );
//
//     _animation = Tween(begin: -10.0, end: 10.0).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Curves.easeInOut,
//       ),
//     )..addListener(() {
//         setState(() {});
//       });
//
//     _animationController.repeat(reverse: true);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dancing Button'),
//       ),
//       body: Center(
//         child: Transform.translate(
//           offset: Offset(0.0, _animation.value),
//           child: ElevatedButton(
//             onPressed: () {},
//             child: Text('Dance Button'),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
// }
