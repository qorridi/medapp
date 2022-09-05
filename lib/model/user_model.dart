class user {
  String? idUser;
  String? namaUser;
  String? emailUser;
  String? noHp;
  String? username;
  String? password;
  String? statusUser;

  user(
      {this.idUser,
        this.namaUser,
        this.emailUser,
        this.noHp,
        this.username,
        this.password,
        this.statusUser});

  user.fromJson(Map<String, dynamic> json) {
    idUser = json['idUser'];
    namaUser = json['namaUser'];
    emailUser = json['emailUser'];
    noHp = json['noHp'];
    username = json['username'];
    password = json['password'];
    statusUser = json['statusUser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idUser'] = this.idUser;
    data['namaUser'] = this.namaUser;
    data['emailUser'] = this.emailUser;
    data['noHp'] = this.noHp;
    data['username'] = this.username;
    data['password'] = this.password;
    data['statusUser'] = this.statusUser;
    return data;
  }
}
