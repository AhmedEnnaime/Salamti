class Patient{
    final String Ip,Nom,Mail,Password;
   final int Age,Tel;
  Patient({
    required this.Ip,
    required this.Nom,
    required this.Age,
    required this.Mail,
    required this.Tel,
    required this.Password
  });

  factory Patient.fromJson(Map<String, dynamic> json){
    return Patient(
        Ip: json['Ip'],
        Nom: json['Nom'],
        Age: json['Age'],
        Mail: json['Mail'],
        Tel: json['Tel'],
        Password: json['Password']
    );
  }
}