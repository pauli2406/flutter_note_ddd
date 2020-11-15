import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:neverForget/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neverForget/application/note/note_actor/note_actor_bloc.dart';
import 'package:neverForget/application/note/note_watcher/note_watcher_bloc.dart';
import 'package:neverForget/injection.dart';
import 'package:neverForget/presentation/routes/router.gr.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) =>
                  ExtendedNavigator.of(context).replace(Routes.signInPage),
              orElse: () {},
            );
          }),
          BlocListener<NoteActorBloc, NoteActorState>(
              listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                FlushbarHelper.createError(
                  duration: const Duration(seconds: 5),
                  message: state.noteFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact the support.',
                      insufficientPermission: (_) => 'Insufficient permissions',
                      unableToUpdate: (_) => 'Impossible Error'),
                ).show(context);
              },
              orElse: () {},
            );
          }),
        ],
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Notes'),
              leading: IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signedOut());
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.indeterminate_check_box),
                  onPressed: () {},
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // TODO navigate to NoteFormPage
              },
              child: const Icon(Icons.add),
            )),
      ),
    );
  }
}
