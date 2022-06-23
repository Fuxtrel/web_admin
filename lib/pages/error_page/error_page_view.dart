import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            'Error',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
