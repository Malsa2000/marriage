class RegisterModel {
  final String name;
  final String? age;
  final String? height;
  final String? bodytype;
  final String? skintone;
  final String? mothertingue;
  final String? materialstatus;
  final String? horoscope;
  final String? bloodgroup;
  final String? aboutme;
  final String? religion;
  final String? caste;
  final String? gotra;
  final String? address;
  final String? city;
  final String? education;
  final String? occupation;
  final String? employedin;
  final String? annualincome;
  final String? familystatus;
  final String? familytype;
  final String? profilefor;
  final String? gender;
  final String email;
  final String? birthday;
  final String password;
  final String number;
  final String? weight;
  final String? hobbies;
  final String? birthTime;
  final String? birthPlace;
  final String? timetocall;
  final String lastname;
  final String? orgname;

  RegisterModel(
      {required this.name,
      this.age,
      this.height,
      this.bodytype,
      this.skintone,
      this.mothertingue,
      this.materialstatus,
      this.horoscope,
      this.bloodgroup,
      this.aboutme,
      this.religion,
      this.caste,
      this.gotra,
      this.address,
      this.city,
      this.education,
      this.occupation,
      this.employedin,
      this.annualincome,
      this.familystatus,
      this.familytype,
      this.profilefor,
      this.gender,
      required this.email,
      required this.password,
      required this.number,
      this.birthPlace,
      this.birthTime,
      this.birthday,
      this.hobbies,
      required this.lastname,
      this.orgname,
      this.timetocall,
      this.weight});
  Map<String, dynamic> toJson() => {
        "profileFor": profilefor,
        "bloodGroup": bloodgroup,
        "age": age,
        "height": height,
        "dateOfBirth": birthday,
        "weight": weight,
        "gender": gender,
        "maritalStatus": materialstatus,
        "motherTongue": mothertingue,
        "bodyType": bodytype,
        "skinTone": skintone,
        "birthPlace": birthPlace,
        "birthTime": birthTime,
        "hobby": hobbies,
        "description": aboutme,
        "religion": religion,
        "caste": caste,
        "horoscope": horoscope,
        "timeToCall": timetocall,
        "city": city,
        "address": address,
        "education": education,
        "occupation": occupation,
        "employedIn": orgname,
        "anualIncome": annualincome,
        "familyType": familytype,
        "familyStatus": familystatus,
        "firstName": name,
        "lastName": lastname,
        "email": email,
        "mobileNumber": number,
        "password": password,
        "bloodGroup": bloodgroup ?? "A+",
      };
}
