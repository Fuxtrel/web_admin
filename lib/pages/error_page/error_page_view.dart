import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_admin/colors.dart';
import 'package:web_admin/pages/error_page/error_page_vew_logic.dart';
import 'package:web_admin/pages/router.dart';

import 'error_page_bloc.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ErrorPageBloc(),
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.lightBlueAccent,
            child: GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print("Press error button");
                }
                // Navigator.pop(context, true);
                Navigator.of(context).pushReplacementNamed(Pages.welcomePage.routeName);
              },
              child: BlocBuilder<ErrorPageBloc, ErrorPageState>(
                builder: (context, state) {
                  return Text(
                    state.errorMessage,
                    style: TextStyle(color: state.errorColor),
                  );
                },
              ),
            ),
          ),
        ),
        floatingActionButton: BlocBuilder<ErrorPageBloc, ErrorPageState>(
          builder: (context, state) {
            return BlocBuilder<ErrorPageBloc, ErrorPageState>(
              builder: (context, errorPageState) {
                return FloatingActionButton(
                  onPressed: () {
                    errorPageBottomButtonPushed(context, errorPageState);
                  },
                  child: const Icon(Icons.add),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
