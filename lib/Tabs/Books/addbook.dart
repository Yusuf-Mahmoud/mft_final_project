import 'package:flutter/material.dart';
import 'package:mft_final_project/Theme.dart';

class AddBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Book'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Genre'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Published Date'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Copies Available'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'ISBN'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Add',
                  style: TextStyle(fontSize: 20, color: apptheme.primarycolor)),
            ),
          ],
        ),
      ),
    );
  }
}
