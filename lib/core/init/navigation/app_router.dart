import '../../../features/features.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeView,
      initial: true,
    ),
    AutoRoute(
      page: DartView,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
