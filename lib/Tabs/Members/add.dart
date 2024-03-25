import 'package:flutter/material.dart';

class AddMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Member'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Memberid'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Membercode'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Membername'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Memberemail'),
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Memberphone'),
            ),
            TextFormField(
              maxLength: 255,
              decoration: InputDecoration(labelText: 'Note'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
