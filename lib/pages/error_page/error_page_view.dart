import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'error_page_bloc.dart';

class ErrorPage extends StatelessWidget {
  final String title;
  const ErrorPage({Key? key, this.title = "title"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ErrorPageBloc(),
      child: Center(
        child: Container(
          color: Colors.lightBlueAccent,
          child: GestureDetector(
            onTap: () {
              print("Press error button");
              // Navigator.pop(context, true);
              Navigator.of(context)
                  .pushReplacementNamed('/admin', arguments: "");
            },
            child: BlocBuilder<ErrorPageBloc, ErrorPageState>(
              builder: (context, state) {
                return Text(
                  "$title ${state.errorMessage}",
                  style: TextStyle(color: Colors.red),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
