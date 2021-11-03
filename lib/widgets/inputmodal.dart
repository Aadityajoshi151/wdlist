import 'package:flutter/material.dart';

class InputModal extends StatefulWidget {
  const InputModal({ Key? key }) : super(key: key);

  @override
  _InputModalState createState() => _InputModalState();
}

class _InputModalState extends State<InputModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                    scrollable: true,
                    title: const Text('Enter The Task'),
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Name',
                                icon: Icon(Icons.account_box),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                     actions: [
                      ElevatedButton(
                          child: Text("Submit"),
                          onPressed: () {
                            print("Submit Pressed");
                          })
                    ],
                  );
  }
}