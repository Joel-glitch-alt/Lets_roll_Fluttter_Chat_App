import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'DWTA/lecture_hall.dart';
import 'DWTA/scheduled_lecture.dart';
import 'LETS_ROLL/FRIENDS/friends.dart';
import 'LETS_ROLL/MESSAGING/friends_messaging.dart';
import 'LETS_ROLL/MESSAGING/mycustomers_messaging.dart';
import 'LETS_ROLL/MESSAGING/providers_messaging.dart';
import 'LETS_ROLL/MY_CUSTOMERS/MY_CUSTOMERS_CHAT/my_customers_inquires.dart';
import 'LETS_ROLL/MY_CUSTOMERS/my_customers.dart';
import 'LETS_ROLL/PROVIDERS/PROVIDERS_CHAT/providers_inquires.dart';
import 'LETS_ROLL/PROVIDERS/providers.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Let\'s Roll',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:FriendsChats(),
      //AppPage(),
    );
  }
}

class AppPage extends StatelessWidget {
  AppPage({Key? key}) : super(key: key);

  static const String title = 'Let\'s Roll Routing';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        routes: <GoRoute>[
          GoRoute(
              path: 'providersPage', //path refers to the routes
              builder: (context, state) =>
                  const ProvidersSection() //builder refers to the pages
              ),
          GoRoute(
            path: 'mycustomersPage',
            builder: (context, state) => const MyCustomersSection(),
          ),
          GoRoute(
            path: 'providersinquiresPage',
            builder: (context, state) => const ProvidersInquiresSection(),
          ),
          GoRoute(
            path: 'mycustomersinquiresPage',
            builder: (context, state) => const MyCustomersInquiresSection(),
          ),
          GoRoute(
            path: 'friendsmessaging',
            builder: (context, state) => const FriendsMessaging(),
          ),
          GoRoute(
            path: 'providersmessaging',
            builder: (context, state) => const ProvidersMessaging(),
          ),
          GoRoute(
            path: 'mycustomersmessaging',
            builder: (context, state) => const MyCustomersInquiresChat(),
          ),
          GoRoute(
              path: 'scheduledLecturePage', //path refers to the routes
              builder: (context, state) =>
                  const ScheduledLecture() //builder refers to the pages
          ),
          GoRoute(
              path: 'lectureHallPage', //path refers to the routes
              builder: (context, state) =>
                  const LectureHall() //builder refers to the pages
          ),
          // GoRoute(
          //     path: 'homePage', //path refers to the routes
          //     builder: (context, state) =>
          //         const DWTAHomePage() //builder refers to the pages
          // ),
        ],
        //This is for initial page, in this case the HomePage
        path: '/',
        builder: (context, state) => const FriendsSection(),
      ),
    ],
  );
}
