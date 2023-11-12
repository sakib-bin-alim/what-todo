import 'package:flutter/material.dart';
import 'package:what_todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final myController;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.myController,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            //Text Field
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Add a new task",
              ),
            ),

            //Buttons
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //Save Button
                  MyButton(
                    text: 'Save',
                    onPressed: onSave,
                  ),
                  SizedBox(width: 8),
                  //Cancel Button
                  MyButton(
                    text: 'Cancel',
                    onPressed: onCancel,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
