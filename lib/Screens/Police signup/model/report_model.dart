class PersonInvolved {
  String name = '';
  String address = '';
  String phoneNumber = '';
  String cnicNumber = '';
  String gender = '';
}

class Incident {
  String type = '';
  String date = '';
  String time = '';
  String location = '';
  String policeNotified = '';
  int? caseNumber;
  String details = '';
  String anyWitness = '';
  String injuryDetails = '';
  String providedTreatment = '';
}

class Report {
  String name;
  int? id;
  final PersonInvolved? personInvolved;
  final Incident? incident;
  Report({this.name = '', this.id, this.personInvolved, this.incident});
}
