import 'package:flutter/material.dart';
import 'package:neverForget/domain/notes/note_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NoteFailure failure;

  const CriticalFailureDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            failure.maybeMap(
              orElse: () => 'Unexpected Error. \n Please contect support.',
              insufficientPermission: (_) => 'Insufficient Permissions',
            ),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: () {
                print('Sending email!');
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.mail),
                  SizedBox(
                    width: 4,
                  ),
                  Text('I NEED HELP'),
                ],
              ))
        ],
      ),
    );
  }
}
