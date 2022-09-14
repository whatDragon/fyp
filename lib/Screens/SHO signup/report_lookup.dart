import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Police%20signup/model/report_model.dart';

class ReportsListScreen extends StatefulWidget {
  const ReportsListScreen({Key? key}) : super(key: key);

  @override
  State<ReportsListScreen> createState() => _ReportsListScreenState();
}

class _ReportsListScreenState extends State<ReportsListScreen> {
  Report report = Report();
  List<Report> reportsListScreen = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: reportsListScreen.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(reportsListScreen[index].id.toString()),
            ),
            title: Text(reportsListScreen[index].personInvolved!.name),
            subtitle: Text(reportsListScreen[index].incident!.location),
            trailing: Text(reportsListScreen[index].incident!.date),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ReportDetailScreen())),
          ),
        ),
      ),
    );
  }
}

class ReportDetailScreen extends StatelessWidget {
  const ReportDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
