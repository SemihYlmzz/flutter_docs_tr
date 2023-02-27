import '../../../features/features.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: DocumentsView,
      initial: true,
      path: AppRoutes.routeNameDefault,
    ),
    AutoRoute(
      page: DartView,
      path: AppRoutes.routeNameDart,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
