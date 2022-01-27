import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/firebase_user_provider.dart';
import 'package:janzeto_cake/login_page/login_page_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'home_page/home_page_widget.dart';
import 'info_page/info_page_widget.dart';
import 'profile_page/profile_page_widget.dart';
import 'cart_page/cart_page_widget.dart';
import 'contact_page/contact_page_widget.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<JanzetoCakeFirebaseUser> userStream;
  JanzetoCakeFirebaseUser initialUser;

  @override
  void initState() {
    initPlatformState();
    userStream = janzetoCakeFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
  }

  static final String OneSignalAppId = "dbf110e9-fe77-4197-aad2-e2d49503d5e8";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.amber,
      debugShowCheckedModeBanner: false,
      title: 'Janzeto Cake',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null
          ? const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4b39ef)),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : HomePageWidget(),

      /**/
    );
  }

  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(OneSignalAppId);
    await FirebaseAuth.instance.signInAnonymously();
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'HomePage';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': HomePageWidget(),
      /*'ProfilePage': InfoPageWidget(),*/
      'CartPage': CartPageWidget(),
      'ContactPage': ContactPageWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cake,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.cake,
              size: 24,
            ),
            label: 'Меню',
          ),
          /*BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFF9E9E9E),
              size: 24,
            ),
            activeIcon: Icon(
              Icons.person,
              color: FlutterFlowTheme.primaryColor,
              size: 24,
            ),
            label: 'Профиль',
          ),*/
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_sharp,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.shopping_bag_sharp,
              size: 24,
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Color(0xFF9E9E9E),
              size: 24,
            ),
            activeIcon: Icon(
              Icons.location_on,
              color: FlutterFlowTheme.primaryColor,
              size: 24,
            ),
            label: 'Контакты',
          )
        ],
        backgroundColor: Colors.white,
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: Color(0xFF681A5C),
        unselectedItemColor: Color(0x8A000000),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
