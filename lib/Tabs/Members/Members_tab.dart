import 'package:flutter/material.dart';
import 'package:mft_final_project/module/Member.dart';

class MembersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Member> member = [
      Member(
          Memberid: 1,
          Membercode: 'M2000149',
          Membername: 'YusufMahmoud',
          Memberemail: 'amegosss789@gamil.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
      Member(
          Memberid: 2,
          Membercode: 'M2000149',
          Membername: 'mhmdmagdy',
          Memberemail: 'mhmdmagdy@gamil.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
      Member(
          Memberid: 3,
          Membercode: 'M2000149',
          Membername: 'YusufZain',
          Memberemail: 'YusufZain@gamil.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
      Member(
          Memberid: 4,
          Membercode: 'M2000149',
          Membername: 'abdo',
          Memberemail: 'abdo@gamil.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
      Member(
          Memberid: 5,
          Membercode: 'M2000149',
          Membername: '2ofa',
          Memberemail: '2ofa@gamil.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
      Member(
          Memberid: 6,
          Membercode: 'M2000149',
          Membername: 'marawan',
          Memberemail: 'marawan@gamil.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
      Member(
          Memberid: 7,
          Membercode: 'M2000149',
          Membername: 'Example',
          Memberemail: 'Example@gmail.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
      Member(
          Memberid: 8,
          Membercode: 'M2000149',
          Membername: 'Example',
          Memberemail: 'Example@gmail.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
      Member(
          Memberid: 9,
          Membercode: 'M2000149',
          Membername: 'Example',
          Memberemail: 'Example@gmail.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
      Member(
          Memberid: 10,
          Membercode: 'M2000149',
          Membername: 'Example',
          Memberemail: 'Example@gmail.com',
          Memberphone: '01000000000',
          Memberaddress: 'Cairo'),
    ];
    return Column(
      children: [
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
                    Text(member[index].Memberaddress),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
