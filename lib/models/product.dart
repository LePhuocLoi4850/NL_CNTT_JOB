class Job {
  final String? id;
  final String title;
  final String imageUrl;
  final String luong;
  final String loai;
  final String soluong;
  final String lich;
  final String gioitinh;
  final String tuoi;
  final String hocvan;
  final String kinhnghiem;
  final String description;
  final String yeucaukhac;
  final String phucloi;
  final Company company;

  const Job({
    this.id,
    required this.title,
    required this.imageUrl,
    required this.luong,
    required this.loai,
    required this.soluong,
    required this.lich,
    required this.gioitinh,
    required this.tuoi,
    required this.hocvan,
    required this.kinhnghiem,
    required this.description,
    required this.yeucaukhac,
    required this.phucloi,
    required this.company,
    bool isFavorite = false,
  });

  Job copyWith({
    String? id,
    String? title,
    String? imageUrl,
    String? luong,
    String? loai,
    String? soluong,
    String? lich,
    String? gioitinh,
    String? tuoi,
    String? hocvan,
    String? kinhnghiem,
    String? description,
    String? yeucaukhac,
    String? phucloi,
    Company? company,
    bool? isFavorite,
  }) {
    return Job(
      id: id ?? this.id,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      luong: luong ?? this.luong,
      loai: loai ?? this.loai,
      soluong: soluong ?? this.soluong,
      lich: lich ?? this.lich,
      gioitinh: gioitinh ?? this.gioitinh,
      tuoi: tuoi ?? this.tuoi,
      hocvan: hocvan ?? this.hocvan,
      kinhnghiem: kinhnghiem ?? this.kinhnghiem,
      description: description ?? this.description,
      yeucaukhac: yeucaukhac ?? this.yeucaukhac,
      phucloi: phucloi ?? this.phucloi,
      company: company ?? this.company,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'luong': luong,
      'loai': loai,
      'soluong': soluong,
      'lich': lich,
      'gioitinh': gioitinh,
      'tuoi': tuoi,
      'hocvan': hocvan,
      'kinhnghiem': kinhnghiem,
      'description': description,
      'yeucaukhac': yeucaukhac,
      'phucloi': phucloi,
      'company': company.toJson(),
    };
  }

  static Job fromJson(Map<String, dynamic> json) {
    return Job(
      id: json['id'],
      title: json['title'],
      imageUrl: json['imageUrl'],
      luong: json['luong'],
      loai: json['loai'],
      soluong: json['soluong'],
      lich: json['lich'],
      gioitinh: json['gioitinh'],
      tuoi: json['tuoi'],
      hocvan: json['hocvan'],
      kinhnghiem: json['kinhnghiem'],
      description: json['description'],
      yeucaukhac: json['yeucaukhac'],
      phucloi: json['phucloi'],
      company: Company.fromJson(json['company']),
      isFavorite: json['isFavorite'] ?? false,
    );
  }
}

const allJobs = [
  Job(
    title: 'Nhân Viên Telesale, Không Yêu Cầu Kinh Nghiệm',
    imageUrl:
        'https://tse4.mm.bing.net/th?id=OIP.tUVlmB4TJu38NOzw6VgU5gHaJl&pid=Api&P=0&h=220',
    luong: '9 000 000 đến 11 000 000',
    loai: 'Full-time',
    soluong: '5',
    lich: 'T2-T6',
    gioitinh: 'Nam',
    tuoi: '20-30',
    hocvan: 'Đại học',
    kinhnghiem: '1 năm',
    description: 'GOOD JOB',
    company: Company(
      description: 'good',
      name: 'Công ty Cổ phần Airtech Thế Long',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: 'Đường 3/2, Xuân Khánh, Ninh Kiều, Cần Thơ',
    ),
    yeucaukhac: 'Yêu cầu khác cho công việc 1',
    phucloi: 'Phúc lợi cho công việc 1',
    isFavorite: true,
  ),
  Job(
    title: 'Nhân Viên Telesale',
    imageUrl:
        'https://tse4.mm.bing.net/th?id=OIP.tUVlmB4TJu38NOzw6VgU5gHaJl&pid=Api&P=0&h=220',
    luong: '7 000 000 đến 8 000 000',
    loai: 'Full-time',
    soluong: '5',
    lich: 'T2-T6',
    gioitinh: 'Nam',
    tuoi: '20-30',
    hocvan: 'Đại học',
    kinhnghiem: '1 năm',
    description: 'GOOD JOB',
    company: Company(
      description: 'good',
      name: 'Công ty Cổ phần Airtech Thế Long',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: 'Đường 3/2, Xuân Khánh, Ninh Kiều, Cần Thơ',
    ),
    yeucaukhac: 'Yêu cầu khác cho công việc 1',
    phucloi: 'Phúc lợi cho công việc 1',
    isFavorite: true,
  ),
  Job(
    title: 'Nhân Viên Tư Vấn Làm Tại VP - Không Yêu Cầu Kinh Nghiệm',
    imageUrl:
        'https://tse4.mm.bing.net/th?id=OIP.tUVlmB4TJu38NOzw6VgU5gHaJl&pid=Api&P=0&h=220',
    luong: '7 000 000 đến 10 000 000',
    loai: 'Part-time',
    soluong: '3',
    lich: 'T2-T6',
    gioitinh: 'Nữ',
    tuoi: '18-25',
    hocvan: 'Cao đẳng',
    kinhnghiem: 'Không yêu cầu',
    description: 'GOOD JOB',
    yeucaukhac: 'Yêu cầu khác cho công việc 2',
    phucloi: 'Phúc lợi cho công việc 2',
    company: Company(
        name: 'Công ty Cổ phần dưỡng sinh công nghệ quốc tế New Sky',
        imageUrl:
            'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
        address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
        description: 'description'),
    isFavorite: false,
  ),
  // Thêm 10 công việc nữa
  Job(
    title: 'Nhân Viên Kinh Doanh',
    imageUrl:
        'https://tse4.mm.bing.net/th?id=OIP.tUVlmB4TJu38NOzw6VgU5gHaJl&pid=Api&P=0&h=220',
    luong: '10 000 000 đến 15 000 000',
    loai: 'Full-time',
    soluong: '7',
    lich: 'T2-T7',
    gioitinh: 'Nữ',
    tuoi: '22-35',
    hocvan: 'Cao đẳng trở lên',
    kinhnghiem: '2 năm',
    description: 'GOOD JOB',
    yeucaukhac: 'Yêu cầu khác cho công việc 3',
    phucloi: 'Phúc lợi cho công việc 3',
    company: Company(
        name: 'Công ty cổ phần ABC Việt Nam',
        imageUrl:
            'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
        address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
        description: 'description'),
    isFavorite: true,
  ),
  Job(
    title: 'Cộng Tác Viên Mảng Tin Tức Tiếng Anh',
    imageUrl:
        'https://tse4.mm.bing.net/th?id=OIP.tUVlmB4TJu38NOzw6VgU5gHaJl&pid=Api&P=0&h=220',
    luong: '5 000 000 đến 7 000 000',
    loai: 'Full-time',
    soluong: '10',
    lich: 'T3-T7',
    gioitinh: 'Nữ',
    tuoi: '20-28',
    hocvan: 'Đại học',
    kinhnghiem: '1 năm',
    description: 'GOOD JOB',
    yeucaukhac: 'Yêu cầu khác cho công việc 4',
    phucloi: 'Phúc lợi cho công việc 4',
    company: Company(
        name: 'CÔNG TY CỔ PHẦN CÔNG NGHỆ DỊCH VỤ SÀI GÒN',
        imageUrl:
            'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
        address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
        description: 'description'),
    isFavorite: false,
  ),
  Job(
    title: 'CTV Quản Trị Page Mảng Tin Tức',
    imageUrl:
        'https://tse4.mm.bing.net/th?id=OIP.tUVlmB4TJu38NOzw6VgU5gHaJl&pid=Api&P=0&h=220',
    luong: '8 000 000 đến 10 000 000',
    loai: 'Part-time',
    soluong: '5',
    lich: 'T2-T6',
    gioitinh: 'Nữ',
    tuoi: '18-30',
    hocvan: 'Trung cấp',
    kinhnghiem: 'Không yêu cầu',
    description: 'Mô tả công việc 5',
    yeucaukhac: 'Yêu cầu khác cho công việc 5',
    phucloi: 'Phúc lợi cho công việc 5',
    company: Company(
        name: 'Công ty Cổ phần dưỡng sinh công nghệ quốc tế New Sky',
        imageUrl:
            'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
        address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
        description: 'description'),
    isFavorite: false,
  ),
];

class Company {
  final String? id;
  final String name;
  final String imageUrl;
  final String address;
  final String description;

  const Company({
    this.id,
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.description,
    bool isFavorite = false,
  });

  Company copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? address,
    String? description,
    bool? isFavorite,
  }) {
    return Company(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      address: address ?? this.address,
      description: address ?? this.description,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'address': address,
      'description': description,
    };
  }

  static Company fromJson(Map<String, dynamic> json) {
    return Company(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      address: json['address'],
      description: json['description'],
      isFavorite: json['isFavorite'] ?? false,
    );
  }
}

const allCompany = [
  Company(
      name: 'Công ty Cổ phần Airtech Thế Long',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: 'Đường 3/2, Xuân Khánh, Ninh Kiều, Cần Thơ',
      description: 'description'),
  Company(
      name: 'Công ty Cổ phần dưỡng sinh công nghệ quốc tế New Sky',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
      description: 'description'),
  Company(
      name: 'Công ty TNHH Autonics VNM',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
      description: 'description'),
  Company(
      name: 'CÔNG TY CỔ PHẦN CÔNG NGHỆ DỊCH VỤ SÀI GÒN',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
      description: 'description'),
  Company(
      name: 'Công ty Cổ phần CleverGroup',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
      description: 'description'),
  Company(
      name: 'Công ty TNHH Cell Bio Human Tech Vina',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
      description: 'description'),
  Company(
      name: 'Công ty cổ phần ABC Việt Nam',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
      description: 'description'),
  Company(
      name: 'Công ty Cổ Phần Công nghệ Sinh Học BIO3C',
      imageUrl:
          'https://tse4.mm.bing.net/th?id=OIP.9wy6MU1muEQ4DqYbnn9kowHaEK&pid=Api&P=0&h=220',
      address: '292/33/15A Bình Lợi, Phường 13, Bình Thạnh, TP HCM',
      description: 'description'),
];

class Candidate {
  final String? id;
  final String name;
  final String age;
  final String kinhnghiem;
  final String luong;
  final String chuyenmon;
  final String capbac;
  final String diadiem;
  final String nganhnghe;
  final String gioitinh;
  final String cvtruoc;
  final String hocvan;
  final String description;
  final String phone;
  final String bangkhac;

  const Candidate({
    this.id,
    required this.name,
    required this.age,
    required this.kinhnghiem,
    required this.luong,
    required this.chuyenmon,
    required this.capbac,
    required this.diadiem,
    required this.nganhnghe,
    required this.gioitinh,
    required this.cvtruoc,
    required this.hocvan,
    required this.description,
    required this.phone,
    required this.bangkhac,
    bool isFavorite = false,
  });

  Candidate copyWith({
    String? id,
    String? name,
    String? age,
    String? kinhnghiem,
    String? luong,
    String? chuyenmon,
    String? capbac,
    String? diadiem,
    String? nganhnghe,
    String? gioitinh,
    String? cvtruoc,
    String? hocvan,
    String? description,
    String? phone,
    String? bangkhac,
    bool? isFavorite,
  }) {
    return Candidate(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      kinhnghiem: kinhnghiem ?? this.kinhnghiem,
      luong: luong ?? this.luong,
      chuyenmon: chuyenmon ?? this.chuyenmon,
      capbac: capbac ?? this.capbac,
      diadiem: diadiem ?? this.diadiem,
      nganhnghe: nganhnghe ?? this.nganhnghe,
      gioitinh: gioitinh ?? this.gioitinh,
      cvtruoc: cvtruoc ?? this.cvtruoc,
      hocvan: hocvan ?? this.hocvan,
      description: description ?? this.description,
      phone: phone ?? this.phone,
      bangkhac: bangkhac ?? this.bangkhac,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'kinhnghiem': kinhnghiem,
      'luong': luong,
      'chuyenmon': chuyenmon,
      'capbac': capbac,
      'diadiem': diadiem,
      'nganhnghe': nganhnghe,
      'gioitinh': gioitinh,
      'cvtruoc': cvtruoc,
      'hocvan': hocvan,
      'description': description,
      'phone': phone,
      'bangkhac': bangkhac,
    };
  }

  static Candidate fromJson(Map<String, dynamic> json) {
    return Candidate(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      kinhnghiem: json['kinhnghiem'],
      luong: json['luong'],
      chuyenmon: json['chuyenmon'],
      capbac: json['capbac'],
      diadiem: json['diadiem'],
      nganhnghe: json['nganhnghe'],
      gioitinh: json['gioitinh'],
      cvtruoc: json['cvtruoc'],
      hocvan: json['hocvan'],
      description: json['description'],
      phone: json['phone'],
      bangkhac: json['bangkhac'],
      isFavorite: json['isFavorite'] ?? false,
    );
  }
}

const allCandidate = [
  Candidate(
    name: 'Huỳnh Anh Duy',
    age: '23 tuổi',
    kinhnghiem: '2 năm',
    luong: '10 triệu - 12 triệu',
    chuyenmon: 'Nhân Viên Tư Vấn Khách Hàng ',
    capbac: 'Mới tốt nghiệp',
    diadiem: 'Hồ Chí Minh ',
    nganhnghe: 'Bán hàng, Làm việc từ xa/Online/Thời vụ/Bán thời gian',
    gioitinh: 'Nam',
    cvtruoc:
        'Nhân viên kinh doanh tại Bitis, Nhân viên pha chế tại Papa Tea House',
    hocvan: 'Tốt nghiệp THPT tại Trung tâm GDNN- GDTX Quận 4',
    description: 'Good',
    phone: '0339456879',
    bangkhac: 'Anh Văn B1',
  ),
  Candidate(
    name: 'Huỳnh Anh Duy',
    age: '23 tuổi',
    kinhnghiem: '2 năm',
    luong: '10 triệu - 12 triệu',
    chuyenmon: 'Nhân Viên Tư Vấn Khách Hàng/quản lý',
    capbac: 'Mới tốt nghiệp',
    diadiem: 'Hồ Chí Minh ',
    nganhnghe: 'Bán hàng, Làm việc từ xa/Online/Thời vụ/Bán thời gian',
    gioitinh: 'Nam',
    cvtruoc:
        'Nhân viên kinh doanh tại Bitis, Nhân viên pha chế tại Papa Tea House',
    hocvan: 'Tốt nghiệp THPT tại Trung tâm GDNN- GDTX Quận 4',
    description: 'Good',
    phone: '0339456879',
    bangkhac: 'Anh Văn B1',
  ),
  Candidate(
    name: 'Huỳnh Anh Duy',
    age: '23 tuổi',
    kinhnghiem: '2 năm',
    luong: '10 triệu - 12 triệu',
    chuyenmon: 'Nhân Viên Tư Vấn Khách Hàng ',
    capbac: 'Mới tốt nghiệp',
    diadiem: 'Hồ Chí Minh ',
    nganhnghe: 'Bán hàng, Làm việc từ xa/Online/Thời vụ/Bán thời gian',
    gioitinh: 'Nam',
    cvtruoc:
        'Nhân viên kinh doanh tại Bitis, Nhân viên pha chế tại Papa Tea House',
    hocvan: 'Tốt nghiệp THPT tại Trung tâm GDNN- GDTX Quận 4',
    description: 'Good',
    phone: '0339456879',
    bangkhac: 'Anh Văn B1',
  ),
  Candidate(
    name: 'Huỳnh Anh Duy',
    age: '23 tuổi',
    kinhnghiem: '2 năm',
    luong: '10 triệu - 12 triệu',
    chuyenmon: 'Nhân Viên Tư Vấn Khách Hàng ',
    capbac: 'Mới tốt nghiệp',
    diadiem: 'Hồ Chí Minh ',
    nganhnghe: 'Bán hàng, Làm việc từ xa/Online/Thời vụ/Bán thời gian',
    gioitinh: 'Nam',
    cvtruoc:
        'Nhân viên kinh doanh tại Bitis, Nhân viên pha chế tại Papa Tea House',
    hocvan: 'Tốt nghiệp THPT tại Trung tâm GDNN- GDTX Quận 4',
    description: 'Good',
    phone: '0339456879',
    bangkhac: 'Anh Văn B1',
  )
];
