import 'package:flutter/material.dart';

class AnimationSample extends StatefulWidget {
  const AnimationSample({super.key});

  @override
  State<AnimationSample> createState() => _AnimationSampleState();
}

class _AnimationSampleState extends State<AnimationSample> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,
    duration: const Duration(seconds: 2));

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          FadeTransition(opacity: _animation, 
          child: Container(width: 200, height: 200, color: Colors.blue,),)
        ],
      ),
    );
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
