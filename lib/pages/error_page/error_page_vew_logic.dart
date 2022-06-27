import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'error_page_bloc.dart';
import 'error_page_view.dart';

extension ErrorPageLogic on ErrorPage {
  void errorPageBottomButtonPushed(BuildContext context, ErrorPageState errorPageState) {
    context.read<ErrorPageBloc>().add(
          ErrorPagePushButton(
            errorPageState: errorPageState.copyWith(
              errorMessage: "Button is pushed",
            ),
          ),
        );
  }
}
