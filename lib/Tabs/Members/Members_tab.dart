import 'package:flutter/material.dart';
import 'package:mft_final_project/Tabs/Members/add.dart';
import 'package:mft_final_project/module/Member.dart';

class MembersTab extends StatefulWidget {
  @override
  State<MembersTab> createState() => _MembersTabState();
}

class _MembersTabState extends State<MembersTab> {
  @override
  Widget build(BuildContext context) {
    List<Member> member = [
      Member(
          Memberid: 1,
          Membercode: 'M2000149',
          Membername: 'YusufMahmoud',
          Memberemail: 'amegosss789@gamil.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
      Member(
          Memberid: 2,
          Membercode: 'M2000149',
          Membername: 'mhmdmagdy',
          Memberemail: 'mhmdmagdy@gamil.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
      Member(
          Memberid: 3,
          Membercode: 'M2000149',
          Membername: 'YusufZain',
          Memberemail: 'YusufZain@gamil.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
      Member(
          Memberid: 4,
          Membercode: 'M2000149',
          Membername: 'abdo',
          Memberemail: 'abdo@gamil.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
      Member(
          Memberid: 5,
          Membercode: 'M2000149',
          Membername: '2ofa',
          Memberemail: '2ofa@gamil.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
      Member(
          Memberid: 6,
          Membercode: 'M2000149',
          Membername: 'marawan',
          Memberemail: 'marawan@gamil.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
      Member(
          Memberid: 7,
          Membercode: 'M2000149',
          Membername: 'Example',
          Memberemail: 'Example@gmail.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
      Member(
          Memberid: 8,
          Membercode: 'M2000149',
          Membername: 'Example',
          Memberemail: 'Example@gmail.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
      Member(
          Memberid: 9,
          Membercode: 'M2000149',
          Membername: 'Example',
          Memberemail: 'Example@gmail.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
      Member(
          Memberid: 10,
          Membercode: 'M2000149',
          Membername: 'Example',
          Memberemail: 'Example@gmail.com',
          Memberphone: '01000000000',
          Note: 'Cairo'),
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('ID',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Code',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Email',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Phone',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Note',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: member.length,
            itemBuilder: (context, index) {
              Color rowColor =
                  index.isEven ? Colors.grey[200] ?? Colors.grey : Colors.white;
              return Container(
                color: rowColor,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(member[index].Memberid.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(member[index].Membercode),
                    Text(member[index].Membername),
                    Text(member[index].Memberemail),
                    Text(member[index].Memberphone),
                    Text(member[index].Note),
                  ],
                ),
              );
            },
          ),
        ),
        ElevatedButton(
  onPressed: () async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddMember()),
    );

    if (result != null && result is Member) {
      setState(() {
        member.add(result);
      });
    }
  },
  child: Text('Add Member', style: TextStyle(fontSize: 20)),
),

      ],
    );
  }
}
