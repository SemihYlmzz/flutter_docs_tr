import '../../../features/features.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: DocumentsView,
      initial: true,
      path: '/',
    ),
    AutoRoute(
      page: DartView,
      path: '/dart',
    ),
  ],
)
class AppRouter extends _$AppRouter {}
