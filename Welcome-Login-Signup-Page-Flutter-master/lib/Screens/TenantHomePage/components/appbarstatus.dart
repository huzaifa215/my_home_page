import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/TenantHomePage/TenantHomePage.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
//
// class AppBarStatus1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AppBarStatus(),
//     );
//
//   }
// }
class AppBarStatus extends StatefulWidget {
  @override
  _AppBarStatusState createState() => _AppBarStatusState();
}

class _AppBarStatusState extends State<AppBarStatus> {
  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: new Text('Search Bar Demo'),
        actions: [searchBar.getSearchAction(context)]);
  }

  void onSubmitted(String value) {
    setState(() => _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text('You wrote $value!'))));
  }

  _AppBarStatusState() {
    {
      searchBar = new SearchBar(
          inBar: false,
          buildDefaultAppBar: buildAppBar,
          setState: setState,
          onSubmitted: onSubmitted,
          onCleared: () {
            print("cleared");
          },
          onClosed: () {
            print("closed");
          });
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.build(context),
      key: _scaffoldKey,
      body: TenantHomePage()
    );
  }
}


