enum Pages {
  welcome(true),
  home(false),
  error(false);

  final bool isChosen;

  const Pages(this.isChosen);
}
