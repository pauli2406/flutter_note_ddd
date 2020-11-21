// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/notes/note.dart';
import '../notes/note_form/note_form_page.dart';
import '../notes/notes_overview/notes_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String signInPage = '/sign-in-page';
  static const String splashPage = '/';
  static const String notesOverviewPage = '/notes-overview-page';
  static const String noteFormPage = '/note-form-page';
  static const all = <String>{
    signInPage,
    splashPage,
    notesOverviewPage,
    noteFormPage,
  };
}

class AutoRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.notesOverviewPage, page: NotesOverviewPage),
    RouteDef(Routes.noteFormPage, page: NoteFormPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashPage(),
        settings: data,
      );
    },
    NotesOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotesOverviewPage(),
        settings: data,
      );
    },
    NoteFormPage: (data) {
      final args = data.getArgs<NoteFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NoteFormPage(
          key: args.key,
          editedNote: args.editedNote,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AutoRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushNotesOverviewPage() =>
      push<dynamic>(Routes.notesOverviewPage);

  Future<dynamic> pushNoteFormPage({
    Key key,
    @required Note editedNote,
  }) =>
      push<dynamic>(
        Routes.noteFormPage,
        arguments: NoteFormPageArguments(key: key, editedNote: editedNote),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NoteFormPage arguments holder class
class NoteFormPageArguments {
  final Key key;
  final Note editedNote;
  NoteFormPageArguments({this.key, @required this.editedNote});
}
