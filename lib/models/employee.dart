class Employee {
  Employee({
    this.id,
    this.name,
    this.email,
    this.phone,
  });

  int id;
  String name;
  String email;
  String phone;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
      };
}
