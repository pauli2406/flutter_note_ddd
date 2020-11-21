import 'package:auto_route/auto_route_annotations.dart';
import 'package:neverForget/presentation/notes/note_form/note_form_page.dart';
import 'package:neverForget/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:neverForget/presentation/sign_in/sign_in_page.dart';
import 'package:neverForget/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: [
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: NotesOverviewPage),
    MaterialRoute(page: NoteFormPage, fullscreenDialog: true)
  ],
)
class $AutoRouter {}
