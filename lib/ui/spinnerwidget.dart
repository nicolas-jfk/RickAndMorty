import 'package:flutter/material.dart';

class SpinnerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: AlignmentDirectional.bottomCenter,
        child: Column(
          children: const [CircularProgressIndicator()],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
