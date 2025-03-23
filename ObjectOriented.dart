void main() {}

abstract class Person {
  String _nationalId;
  String _name;
  String _phoneNumber;
  String _address;

  String get NationalId => _nationalId;
  String get Name => _name;
  String get PhoneNumber => _phoneNumber;
  String get Address => _address;

  Person(this._name, this._nationalId, this._phoneNumber, this._address);

  void PrintInfo();
  String getWork();
}

class Student extends Person {
  String _studentNumber;
  String _feildStudy;
  Student(String name, String nationalId, String phoneNumber, String address,
      this._studentNumber, this._feildStudy)
      : super(name, nationalId, phoneNumber, address);

  Student.English(String name, String nationalId, String phoneNumber,
      String address, String studentNumber)
      : _studentNumber = studentNumber,
        _feildStudy = "English Literature",
        super(name, nationalId, phoneNumber, address);

  String get StudentNumber => _studentNumber;
  String get FeildStudy => _feildStudy;

  @override
  void PrintInfo() {
    print(
        'name=$_name,nationalId=$_nationalId,phoneNumber=$_phoneNumber,address=$_address,feildStudy=$_feildStudy,studentNumber=$_studentNumber');
  }

  @override
  String getWork() {
    return "Student is studying";
  }
}

enum Certificate { diploma, bachelor, master, phd }

class Teacher extends Person {
  int _salary;
  Certificate _lastCertificate;

  Teacher(String name, String nationalId, String phoneNumber, String address,
      int salary, Certificate lastCertificate)
      : this._salary = salary,
        this._lastCertificate = lastCertificate,
        super(name, nationalId, phoneNumber, address);

  int get Salary => _salary;
  Certificate get LastCertificate => _lastCertificate;

  @override
  void PrintInfo() {
    print(
        'name=$_name,nationalId=$_nationalId,phoneNumber=$_phoneNumber,address=$_address,salary=$_salary,lastCertificate=$_lastCertificate');
  }

  @override
  String getWork() {
    return "Teacher is teaching";
  }
}
