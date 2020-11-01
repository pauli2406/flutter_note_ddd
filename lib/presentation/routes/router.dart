import 'package:auto_route/auto_route_annotations.dart';
import 'package:neverForget/presentation/sign_in/sign_in_page.dart';
import 'package:neverForget/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: [
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SplashPage, initial: true),
  ],
)
class $AutoRouter {}
