import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job/company/company_job_list.dart';
import 'package:job/company/detail_company.dart';
import 'package:job/models/product.dart';
import '../bottom_bar/line_bottom.dart';
// import '../company/detail_company.dart';

class JobDetailPage extends StatelessWidget {
  final Job job;

  const JobDetailPage({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiêt việc làm'),
        centerTitle: true,
        bottom: const LineBottom(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CardJob(job: job),
          ],
        ),
      ),
      bottomNavigationBar: const BottomButton(),
    );
  }
}

class CardJob extends StatelessWidget {
  const CardJob({
    super.key,
    required this.job,
  });

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailJobOne(job: job),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 170,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 211, 211),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Đặt borderRadius
                      ), // Đặt màu nền cho nút
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CompanyDetailPage(company: job.company)));
                    },
                    child: const Text(
                      'Thông tin công ty',
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 170,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 211, 211, 211), // Đặt màu nền cho nút
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Đặt borderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CompanyJobListPage(
                                    company: job.company,
                                  )));
                    },
                    child: const Text(
                      'Việc làm khác',
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              height: 1,
              width: 360,
              color: const Color.fromARGB(
                  255, 143, 143, 143), // Màu sắc của đường kẻ
            ),
            const SizedBox(height: 10),
            // Thông tin công việc
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'THÔNG TIN CÔNG VIỆC',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                // lương
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.amber,
                        ),
                      ),
                      const Text(
                        'Mức lương:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.luong,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //loại cv
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.wallet_travel_outlined,
                          color: Colors.amber,
                        ),
                      ),
                      const Text(
                        'Loại hình công việc:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.loai,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //số lượng
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.groups_outlined,
                          color: Colors.amber,
                        ),
                      ),
                      const Text(
                        'Số lượng cần tuyển:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.soluong,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //địa chỉ làm viêc
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.wallet_travel_outlined,
                          color: Colors.amber,
                        ),
                      ),
                      const Text(
                        'Địa chỉ làm việc:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            job.company.address,
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              height: 1,
              width: 360,
              color: const Color.fromARGB(
                  255, 143, 143, 143), // Màu sắc của đường kẻ
            ),
            const SizedBox(height: 10),
            //lịch làm việc
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lịch LÀM VIỆC',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                // Thời gian
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.watch_later_outlined,
                          color: Colors.amber,
                        ),
                      ),
                      const Text(
                        'Thời gian làm việc:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.lich,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              height: 1,
              width: 360,
              color: const Color.fromARGB(
                  255, 143, 143, 143), // Màu sắc của đường kẻ
            ),
            const SizedBox(height: 10),
            //yêu cầu
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'YÊU CẦU',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                // giới tính
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: FaIcon(
                          FontAwesomeIcons.venusMars,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ),
                      const Text(
                        'Giới tính:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.gioitinh,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //độ tuổi
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.cake_outlined,
                          color: Colors.amber,
                        ),
                      ),
                      const Text(
                        'Độ tuổi:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.tuoi,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //học vấn
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: FaIcon(
                          FontAwesomeIcons.graduationCap,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ),
                      const Text(
                        'Học vấn:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.hocvan,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //kinh nghiệm
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: FaIcon(
                          FontAwesomeIcons.medal,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ),
                      const Text(
                        'Kinh nghiệm:',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.kinhnghiem,
                          style: const TextStyle(fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              height: 1,
              width: 360,
              color: const Color.fromARGB(
                  255, 143, 143, 143), // Màu sắc của đường kẻ
            ),
            const SizedBox(height: 10),
            //mô tả
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'MÔ TẢ CÔNG VIỆC',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    job.description,
                    style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 158, 155, 145)),
                    maxLines: 10, // Số dòng tối đa
                    overflow:
                        TextOverflow.ellipsis, // Tràn dòng với dấu chấm elipsis
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              height: 1,
              width: 360,
              color: const Color.fromARGB(
                  255, 143, 143, 143), // Màu sắc của đường kẻ
            ),
            const SizedBox(height: 10),
            // yêu cầu khác
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'YÊU CẦU KHÁC',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.yeucaukhac,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(8),
              height: 1,
              width: 360,
              color: const Color.fromARGB(
                  255, 143, 143, 143), // Màu sắc của đường kẻ
            ),
            const SizedBox(height: 10),
            // phúc lợi
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'PHÚC LỢI',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          job.phucloi,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailJobOne extends StatelessWidget {
  const DetailJobOne({
    super.key,
    required this.job,
  });

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              errorBuilder: (context, error, stackTrace) {
                return const Placeholder(
                  fallbackHeight: 70,
                  fallbackWidth: 70,
                ); // hoặc thay thế bằng hình ảnh mặc định khác
              },
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
                              fontWeight: FontWeight.bold, fontSize: 17),
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
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  job.company.name,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      color:
                                          Color.fromARGB(255, 158, 155, 145)),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 167, 16, 139),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Đặt borderRadius
                  ), // Đặt màu nền cho nút
                ),
                child: const Text(
                  'Ứng Tuyển',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // Xử lý khi nút được nhấn
                },
              ),
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 6, 204, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Đặt borderRadius
                  ), // Đặt màu nền cho nút
                ),
                child: const Text('Gọi Ngay',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Xử lý khi nút được nhấn
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
