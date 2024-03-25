import 'package:intl/intl.dart';

class borwBooks {
  int Issueid;
  String booktitle;
  String MemberName;
  String membercode;
  DateFormat issueDate;
  String returnDate;
  String status;

  borwBooks({
    required this.Issueid,
    required this.booktitle,
    required this.MemberName,
    required this.membercode,
    required this.issueDate,
    required this.returnDate,
    required this.status,
  });
}
