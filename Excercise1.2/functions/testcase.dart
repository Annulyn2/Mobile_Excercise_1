import '../class/details.dart';

class TestCases {
  List<PhoneBook> _contacts;

  TestCases(this._contacts);

  void displayBook() {
    print("[");
    for (var contact in _contacts) {
      if (contact != _contacts.last) {
        print(
            "${contact.FName} ${contact.LName} ${contact.PNumber} ${contact.Address},");
      } else {
        print(
            "${contact.FName} ${contact.LName} ${contact.PNumber} ${contact.Address}]");
      }
    }
  }

  void addContact(String FName, String LName, String PNumber, String Address) {
    _contacts.add(PhoneBook(FName, LName, PNumber, Address));
  }

  void deleteContact(String PNumber) {
    _contacts.removeWhere((contact) => contact.PNumber.contains(PNumber));
  }

  void searchContact(String FName) {
    int check = 1;
    print("\n");
    print("Contact is \n ...");
    PhoneBook? searched =
        _contacts.lastWhere((contact) => contact.FName.contains(FName));
    if (searched != Error) {
      check = 0;
    }
    if (check == 0) {
      print(
          "${searched.FName}, ${searched.LName}, ${searched.PNumber}, ${searched.Address}");
    } else {
      print("Not Found");
    }
  }
}
