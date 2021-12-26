// Hanya untuk model kas list

class User {
  int id;
  String name;
  bool isLunas;
  String lastPayement;

  User({
    required this.id,
    required this.name,
    required this.isLunas,
    required this.lastPayement,
  });
}

var users = [
  User(
      id: 6969,
      name: "Dwi Ari Setiawan",
      isLunas: true,
      lastPayement: "17 Agustus 2021"),
  User(
      id: 6968,
      name: "Arshad Tareeq",
      isLunas: false,
      lastPayement: "17 Agustus 2001"),
  User(
      id: 6968,
      name: "Abu Bakar BSA",
      isLunas: false,
      lastPayement: "17 Agustus 1945"),
  User(
      id: 6969,
      name: "Dwi Ari Setiawan",
      isLunas: true,
      lastPayement: "17 Agustus 2021"),
  User(
      id: 6968,
      name: "Arshad Tareeq",
      isLunas: false,
      lastPayement: "17 Agustus 2001"),
  User(
      id: 6968,
      name: "Abu Bakar BSA",
      isLunas: false,
      lastPayement: "17 Agustus 1945"),
];
