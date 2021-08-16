import 'package:flutter/material.dart';

import 'Configs/ProjectStrings/project_strings.dart';

class TestingWidgetsC extends StatefulWidget {
  const TestingWidgetsC({Key? key}) : super(key: key);

  @override
  _TestingWidgetsCState createState() => _TestingWidgetsCState();
}

class _TestingWidgetsCState extends State<TestingWidgetsC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          profileVar,
        ),
        elevation: 1.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Warning'),
                    content: const Text('Hi this is Flutter Alert Dialog'),
                    actions: <Widget>[
                      IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ],
                  ));
            },
            child: const Text('Simple Dialog'),
          ),

        const Divider(),
        ElevatedButton(
          onPressed: () {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('AlertDialog Title'),
                content: const Text('AlertDialog description'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          },
          child: const Text('Simple Dialog'),
        ),

      ],
    ),
    );
  }
}
