// class Pages {
//   static final Pages _instance = Pages._internal();
//   Map<String, Widget> pages = {'/admin': const WelcomePage(), '/admin/error': const ErrorPage()};
//
//   factory Pages() {
//     return _instance;
//   }
//
//   Pages._internal() {
//     // initialization logic
//   }
// }

enum Pages {
  welcomePage("/welcome"),
  errorPage("/error"),
  dataTablePage("/dataTable");

  final String routeName;

  const Pages(this.routeName);
}
