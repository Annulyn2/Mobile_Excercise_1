import '../class/details.dart';
import '../functions/testcase.dart';

void main() {
  List<PhoneBook> contacts = <PhoneBook>[];
  contacts.add(PhoneBook("FName1", "LName1", "093546829556", "Address1"));
  contacts.add(PhoneBook("FName2", "LName2", "091547853325", "Address2"));
  contacts.add(PhoneBook("FName3", "LName3", "094755886632", "Address3"));
  contacts.add(PhoneBook("FName4", "LName4", "095522336233", "Address4"));
  contacts.add(PhoneBook("FName5", "LName5", "092200255781", "Address5"));

  TestCases phonebook = TestCases(contacts);
  phonebook.displayBook();

  phonebook.addContact("FName6", "LName6", "099956255781", "Address6");
  phonebook.displayBook();

  phonebook.deleteContact('094755886632');
  phonebook.displayBook();

  phonebook.searchContact("FName6");
}
