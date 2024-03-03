import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import './detail_candiadte.dart';
import 'package:job/models/product.dart';

class ListViewCandidate extends StatelessWidget {
  const ListViewCandidate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allCandidate.length,
      itemBuilder: (context, index) {
        final candidate = allCandidate[index];
        return InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => CandidateDetailPage(
            //       candidate: candidate,
            //     ),
            //   ),
            // );
          },
          child: ListCandidate(candidate: candidate),
        );
      },
    );
  }
}

class ListCandidate extends StatelessWidget {
  const ListCandidate({
    Key? key,
    required this.candidate,
  }) : super(key: key);
  final Candidate candidate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, right: 15, left: 15),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 200, 200, 200)),
          borderRadius: BorderRadius.circular(8)),
      child: Card(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          candidate.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                candidate.chuyenmon,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        overflow:
                            TextOverflow.ellipsis, // Set overflow property
                        maxLines: 3,
                        candidate.luong,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: FaIcon(
                      FontAwesomeIcons.solidCircle,
                      size: 12,
                      color: Color.fromARGB(255, 127, 127, 127),
                    ),
                  ),
                  Text(
                    candidate.age,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: FaIcon(
                      FontAwesomeIcons.solidCircle,
                      size: 12,
                      color: Color.fromARGB(255, 127, 127, 127),
                    ),
                  ),
                  Text('Kinh nghiệm: ${candidate.kinhnghiem}',
                      style: const TextStyle(fontSize: 16))
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: FaIcon(
                      FontAwesomeIcons.locationDot,
                      size: 18,
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    'Địa điểm: ${candidate.diadiem}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: FaIcon(
                      FontAwesomeIcons.codeBranch,
                      size: 18,
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    'Cấp bậc: ${candidate.capbac}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: FaIcon(
                      FontAwesomeIcons.star,
                      size: 18,
                      color: Colors.amber,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      'Ngành nghề: ${candidate.nganhnghe}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
