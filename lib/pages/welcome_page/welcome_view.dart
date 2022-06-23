import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_admin/colors.dart';
import 'package:web_admin/generated/assets.dart';
import 'package:web_admin/pages/welcome_page/welcome_bloc.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  final _title = "Welcome to Flutter admin panel";
  final _tagline = "One Admin\nto rule them all";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeBloc(),
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
                  _logo(),
                  Text(
                    _tagline,
                    style: _taglineTextStyle(),
                    textAlign: TextAlign.center,
                  ),
                  _logo(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                context.read<WelcomeBloc>().add(const ButtonPush());
                Navigator.of(context).pushReplacementNamed('/error');
              },
              tooltip: state.isFirstTimeOpened ? 'Increment' : 'Decrement',
              child: const Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }

  Widget _logo() {
    return SizedBox(
      width: 500,
      height: 500,
      child: SvgPicture.asset(
        Assets.assetsIcon,
        color: darkBlueLogoColor,
      ),
    );
  }

  TextStyle _taglineTextStyle() {
    return const TextStyle(
      fontSize: 140,
      fontFamily: 'Paralines',
      color: Colors.yellow,
    );
  }
}
