import 'package:flutter/material.dart';
import 'package:job/candidate/list_candidate.dart';
import '../job/list_job.dart';
import '../company/list_company.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text('Trang Chủ'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Việc Làm'),
                Tab(text: 'Công ty'),
                Tab(text: 'Ứng viên'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ListViewJob(),
              ListViewCompany(),
              ListViewCandidate(),
            ],
          )),
    );
  }
}
