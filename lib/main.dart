// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// This scenario demonstrates a simple two-page app.
//
// The first route '/' is mapped to Page1Screen, and the second route '/page2'
// is mapped to Page2Screen. To navigate between pages, press the buttons on the
// pages.
//
// The onPress callbacks use context.go() to navigate to another page. This is
// equivalent to entering url to the browser url bar directly.

void main() => runApp(App());

/// The main app.
class App extends StatelessWidget {
  /// Creates an [App].
  App({Key? key}) : super(key: key);

  /// The title of the app.
  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: _router,
    title: title,
  );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
        const Login(),
        routes: <GoRoute>[
          GoRoute(
            path: 'register',
            builder: (BuildContext context, GoRouterState state) =>
            const Register(),
          ),
          GoRoute(
            path: 'pageind',
            builder: (BuildContext context, GoRouterState state) =>
            const Regind(),
          ),
          GoRoute(
            path: 'pageorg',
            builder: (BuildContext context, GoRouterState state) =>
            const Regiorg(),
          ),
          GoRoute(
            path: 'comdis',
            builder: (BuildContext context, GoRouterState state) =>
            const Comdis(),
          ),
          GoRoute(
            path: 'pedirdes',
            builder: (BuildContext context, GoRouterState state) =>
            const Desdisp(),
          ),
          GoRoute(
            path: 'darcom',
            builder: (BuildContext context, GoRouterState state) =>
            const Darcom(),
          ),
          GoRoute(
            path: 'dardes',
            builder: (BuildContext context, GoRouterState state) =>
            const Dardes(),
          ),
          GoRoute(
            path: 'fin',
            builder: (BuildContext context, GoRouterState state) =>
            const Fin(),
          ),
        ],
      ),
    ],
  );
}

/// The screen of the first page.
class Login extends StatelessWidget {
  /// Creates a [Page1Screen].
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(

    body: Stack(
      children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(image: AssetImage("assets/images/login.jpeg"), fit: BoxFit.cover,),
                ),
              ),
            Column(
              children: [
                Expanded(flex: 1,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(flex: 1,
                  child: Container(
                    child: GestureDetector(
                        onTap:()=> context.go('/register') ,
                    ),
                  ),
                ),
              ]
            )
        ],
    ),

  );
}

/// The screen of the second page.
class Register extends StatelessWidget {
  /// Creates a [Page2Screen].
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(

      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: AssetImage("assets/images/re.jpeg"), fit: BoxFit.cover,),
            ),
          ),
          Row(
            children: [
              Expanded(flex: 1,
                child: Container(
                  //color: Colors.red,
                  child: GestureDetector(
                    onTap:()=> context.go('/pageind') ,
                    ),
                  ),
                ),
              Expanded(flex: 1,
                child: Container(
                  //color: Colors.blue,
                  child: GestureDetector(
                    onTap:()=> context.go('/pageorg') ,
                  ),
                ),
              ),

            ],
          )
        ],
      ),

  );
}

class Regind extends StatelessWidget {
  /// Creats a [Page2Screen].
  const Regind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: AssetImage("assets/images/reind.jpeg"), fit: BoxFit.cover,),
          ),
        ),
        Column(
          children: [
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
                //color: Colors.red,
                child: GestureDetector(
                  onTap:()=> context.go('/comdis') ,
                ),
              ),
            ),

          ],
        )
      ],
    ),

  );
}

class Regiorg extends StatelessWidget {
  /// Creats a [Page2Screen].
  const Regiorg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: AssetImage("assets/images/reorg.jpeg"), fit: BoxFit.cover,),
          ),
        ),
        Column(
          children: [
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
                //color: Colors.red,
                child: GestureDetector(
                  onTap:()=> context.go('/') ,
                ),
              ),
            ),

          ],
        )
      ],
    ),

  );
}

class Comdis extends StatelessWidget {
  /// Creats a [Page2Screen].
  const Comdis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: AssetImage("assets/images/comdis4.jpeg"), fit: BoxFit.cover,),
          ),
        ),
        Column(
          children: [
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
                //color: Colors.red,
                child: GestureDetector(
                  onTap:()=> context.go('/darcom') ,
                ),
              ),
            ),
            Expanded(flex: 1,
              child: Container(
                //color: Colors.blue,
                child: GestureDetector(
                  onTap:()=> context.go('/pedirdes') ,
                ),
              ),

            ),
            Expanded(flex: 1,
              child: Container(
                //color: Colors.purple,
                child: GestureDetector(
                  onTap:()=> context.go('/dardes') ,
                ),
              ),
            ),

          ],
        )

      ],
    ),

  );
}
class Darcom extends StatelessWidget {
  /// Creats a [Page2Screen].
  const Darcom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: AssetImage("assets/images/darcom.jpeg"), fit: BoxFit.cover,),
          ),
        ),
          Column(
            children: [
            Expanded(flex: 1,
            child: Container(
                ),
            ),

              Expanded(flex: 1,
                child: Container(
                  //color: Colors.purple,
                  child: GestureDetector(
                    onTap:()=> context.go('/fin') ,
                  ),
                ),
              ),

          ],
        )
    ])
  );
}

class Dardes extends StatelessWidget {
/// Creats a [Page2Screen].
const Dardes({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: AssetImage("assets/images/dardesc.jpeg"), fit: BoxFit.cover,),
          ),
        ),

      ],
    )
);
}

class Desdisp extends StatelessWidget {
/// Creats a [Page2Screen].
const Desdisp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: AssetImage("assets/images/desdisp2.jpeg"), fit: BoxFit.cover,),
          ),
        ),

      ],
    )
);
}
class Fin extends StatelessWidget {
/// Creats a [Page2Screen].
const Fin({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: AssetImage("assets/images/fin.jpeg"), fit: BoxFit.cover,),
          ),
        ),
        Column(
          children: [
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),
            Expanded(flex: 1,
              child: Container(
              ),
            ),

            Expanded(flex: 1,
              child: Container(
                //color: Colors.purple,
                child: GestureDetector(
                  onTap:()=> context.go('/') ,
                ),
              ),
            ),
          ],
        )


      ],
    )
);
}
/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Home()));
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child:
        FittedBox(
            child: Image.asset('assets/images/login.jpeg'),
            fit: BoxFit.cover
        )
    );
  }
}
class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        child:
        FittedBox(
            child: Image.asset('assets/images/user_type.jpeg'),
            fit: BoxFit.cover
        )
    );
  }
}
*/
