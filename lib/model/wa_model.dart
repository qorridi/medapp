class wa {
  int? idWa;
  String? namaWa;
  String? noWa;
  String? statusWa;
  bool? activeWa;

  wa({this.idWa, this.namaWa, this.noWa, this.statusWa, this.activeWa});

  wa.fromJson(Map<String, dynamic> json) {
    idWa = json['idWa'];
    namaWa = json['namaWa'];
    noWa = json['noWa'];
    statusWa = json['statusWa'];
    activeWa = json['activeWa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idWa'] = this.idWa;
    data['namaWa'] = this.namaWa;
    data['noWa'] = this.noWa;
    data['statusWa'] = this.statusWa;
    data['activeWa'] = this.activeWa;
    return data;
  }
}