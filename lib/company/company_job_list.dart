import 'package:flutter/material.dart';
import 'package:job/bottom_bar/line_bottom.dart';
import 'package:job/job/list_job.dart';
import '../models/product.dart';
import '../job/detail_job.dart';

class CompanyJobListPage extends StatefulWidget {
  final Company company;
  const CompanyJobListPage({Key? key, required this.company}) : super(key: key);

  @override
  _CompanyJobListPageState createState() => _CompanyJobListPageState();
}

class _CompanyJobListPageState extends State<CompanyJobListPage> {
  late List<Job> companyJobs;

  @override
  void initState() {
    super.initState();
    companyJobs = allJobs
        .where((job) => job.company.name == widget.company.name)
        .toList();
  }

  void _sortJobsBySalary(bool ascending) {
    setState(() {
      if (ascending) {
        companyJobs.sort((a, b) => a.luong.compareTo(b.luong));
      } else {
        companyJobs.sort((a, b) => b.luong.compareTo(a.luong));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Việc làm cùng công ty'),
        centerTitle: true,
        bottom: const LineBottom(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ItemCompanyJob(companyJobs: companyJobs, onSort: _sortJobsBySalary),
          Expanded(
            child: ListView.builder(
              itemCount: companyJobs.length,
              itemBuilder: (context, index) {
                Job job = companyJobs[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JobDetailPage(job: job),
                      ),
                    );
                  },
                  child: SizedBox(
                    child: ListJob(job: job),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCompanyJob extends StatelessWidget {
  const ItemCompanyJob({
    Key? key,
    required this.companyJobs,
    required this.onSort,
  }) : super(key: key);

  final List<Job> companyJobs;
  final Function(bool) onSort;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  '${companyJobs.length}',
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 255, 156, 7)),
                ),
              ),
              const Text(
                'việc làm cùng công ty',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    width: 400,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 400,
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              onSort(true); // Sắp xếp tăng dần
                            },
                            child: const Text(
                              'Sắp xếp theo lương tăng dần',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            onSort(false); // Sắp xếp giảm dần
                          },
                          child: const Text('Sắp xếp theo lương giảm dần'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text('Sắp xếp'),
          ),
        ],
      ),
    );
  }
}
