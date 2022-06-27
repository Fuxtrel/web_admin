import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_admin/colors.dart';
import 'package:web_admin/generated/assets.dart';
import 'package:web_admin/pages/error_page/error_page_bloc.dart';
import 'package:web_admin/pages/router.dart';
import 'package:web_admin/pages/welcome_page/welcome_bloc.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);
  final _title = "Welcome to Flutter admin panel";
  final _tagline = "One Admin\nto rule them all";
  ValueNotifier<double> _fontSize = ValueNotifier<double>(12);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(
          create: (context) => ErrorPageBloc(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: Stack(
          children: [
            Center(
              child: Container(
                color: lightBlueBackgroundColor,
              ),
            ),
            Center(
              child: Container(
                width: 600,
                // color: Colors.blueGrey.shade700,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade700,
                      spreadRadius: 70.0,
                      blurRadius: 600.0,
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _logo(context),
                  SizedBox(
                    height: equalResize(context) * 0.3,
                    child: BlocBuilder<WelcomeBloc, WelcomeState>(
                      builder: (context, state) {
                        _fontSize = ValueNotifier<double>((MediaQuery.of(context).size.height / (1040 / 130)));
                        return ValueListenableBuilder<double>(
                          valueListenable: _fontSize,
                          builder: (BuildContext context, double value, Widget? child) {
                            return Text(
                              maxLines: 2,
                              softWrap: false,
                              _tagline,
                              style: TextStyle(
                                fontSize: min(MediaQuery.of(context).size.height / (1040 / 130), MediaQuery.of(context).size.width / (1415 / 140)),
                                fontFamily: 'Paralines',
                                color: Colors.yellow,
                              ),
                              textAlign: TextAlign.center,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  _logo(context),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return BlocBuilder<ErrorPageBloc, ErrorPageState>(
              builder: (context, state_) {
                return FloatingActionButton(
                  onPressed: () async {
                    context.read<WelcomeBloc>().add(const ButtonPush());
                    Navigator.pushNamed(
                      context,
                      Pages.errorPage.routeName,
                      arguments: state_.copyWith(errorMessage: "ABBA"),
                    );
                  },
                  tooltip: 'Invoke error',
                  child: const Icon(Icons.add),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _logo(BuildContext context) {
    return SizedBox(
      width: equalResize(context) * 0.3,
      height: equalResize(context) * 0.3,
      child: SvgPicture.asset(
        Assets.assetsIcon,
        color: darkBlueLogoColor,
      ),
    );
  }

  double equalResize(BuildContext context) {
    return min(MediaQuery.of(context).size.height, MediaQuery.of(context).size.width);
  }
}
