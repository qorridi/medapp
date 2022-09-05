class contact {
  int? idContact;
  String? namaContact;
  String? emailContact;
  String? noHp;
  String? messageContact;

  contact(
      {this.idContact,
        this.namaContact,
        this.emailContact,
        this.noHp,
        this.messageContact});

  contact.fromJson(Map<String, dynamic> json) {
    idContact = json['idContact'];
    namaContact = json['namaContact'];
    emailContact = json['emailContact'];
    noHp = json['noHp'];
    messageContact = json['messageContact'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idContact'] = this.idContact;
    data['namaContact'] = this.namaContact;
    data['emailContact'] = this.emailContact;
    data['noHp'] = this.noHp;
    data['messageContact'] = this.messageContact;
    return data;
  }
}
