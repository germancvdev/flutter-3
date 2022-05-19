import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peru/src/activity/activity.dart';
import 'package:peru/src/home/view.dart';
import 'package:peru/src/hotel/hotel.dart';
import 'package:peru/src/restaurant/restaurant.dart';
import 'package:peru/src/shared/views/root_layout.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

const List<NavigationDestination> destinations = [
  NavigationDestination(
    label: 'Home',
    icon: Icon(Icons.dashboard),
    route: '/',
  ),
  NavigationDestination(
    label: 'Activities',
    icon: Icon(Icons.local_activity),
    route: '/activities',
  ),
  NavigationDestination(
    label: 'Restaurants',
    icon: Icon(Icons.local_drink),
    route: '/restaurants',
  ),
  NavigationDestination(
    label: 'Hotels',
    icon: Icon(Icons.local_hotel),
    route: '/hotels',
  ),
];

class NavigationDestination {
  const NavigationDestination({
    required this.route,
    required this.label,
    required this.icon,
    this.child,
  });

  final String route;
  final String label;
  final Icon icon;
  final Widget? child;
}

final appRouter = GoRouter(
  // navigatorBuilder: (context, state, child) => PlayPauseListener(child: child),
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 0,
          child: MyHomePage(),
        ),
      ),
    ),

    GoRoute(
      path: '/activities',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 1,
          child: ActivityPage(),
        ),
      ),
      routes: [
        GoRoute(
          path: ':pid',
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: const RootLayout(
              key: _scaffoldKey, currentIndex: 1, child: ActivityPage(),
              // playlist: playlistsProvider.getPlaylist(state.params['pid']!)!,
            ),
          ),
        ),
      ],
    ),

    // ArtistHomeScreen
    GoRoute(
      path: '/restaurants',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 2,
          child: RestaurantPage(),
        ),
      ),
      routes: [
        GoRoute(
          path: ':aid',
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: const RootLayout(
              key: _scaffoldKey,
              currentIndex: 2,
              child: RestaurantPage(),
            ),
          ),
          // builder: (context, state) => ArtistScreen(
          //   id: state.params['aid']!,
          // ),
        ),
      ],
    ),

    GoRoute(
      path: '/hotels',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: RootLayout(
          key: _scaffoldKey,
          currentIndex: 3,
          child: HotelPage(),
        ),
      ),
      routes: [
        GoRoute(
          path: ':aid',
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: const RootLayout(
              key: _scaffoldKey,
              currentIndex: 3,
              child: HotelPage(),
            ),
          ),
          // builder: (context, state) => ArtistScreen(
          //   id: state.params['aid']!,
          // ),
        ),
      ],
    ),

    for (final route in destinations.skip(4))
      GoRoute(
        path: route.route,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            currentIndex: destinations.indexOf(route),
            child: const SizedBox(),
          ),
        ),
      ),
  ],
);
