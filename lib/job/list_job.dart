import 'package:flutter/material.dart';
import 'package:job/models/product.dart';
import 'detail_job.dart';

class ListViewJob extends StatelessWidget {
  const ListViewJob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allJobs.length,
      itemBuilder: (context, index) {
        final job = allJobs[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JobDetailPage(
                  job: job,
                ),
              ),
            );
          },
          child: ListJob(job: job),
        );
      },
    );
  }
}

class ListJob extends StatelessWidget {
  const ListJob({
    Key? key,
    required this.job,
  }) : super(key: key);
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 200, 200, 200)),
          borderRadius: BorderRadius.circular(8)),
      height: 180,
      child: Card(
        elevation: 0.1,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 200, 200, 200),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        job.imageUrl,
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Column(
                                children: [
                                  Text(
                                    job.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.where_to_vote_rounded,
                                        color: Colors.green,
                                        size: 22,
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Text(
                                            job.company.name,
                                            style: const TextStyle(
                                                fontSize: 17,
                                                color: Color.fromARGB(
                                                    255, 158, 155, 145)),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.share_location_outlined,
                        color: Colors.amber,
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            job.company.address,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.monetization_on,
                        color: Colors.amber,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(job.luong),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
