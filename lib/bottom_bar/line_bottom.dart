import 'package:flutter/material.dart';

class LineBottom extends StatelessWidget implements PreferredSizeWidget {
  const LineBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.0, // Độ cao của đường kẻ
      color: const Color.fromARGB(255, 143, 143, 143), // Màu sắc của đường kẻ
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(1.0); // Kích thước ưa thích cho đường kẻ
}
