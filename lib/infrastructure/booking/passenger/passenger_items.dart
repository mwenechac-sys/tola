abstract class PassengerListItem {}

class AdultPassengerItem {
  String firstName;
  String lastName;
  String title;
  String age;

  AdultPassengerItem(
      {this.age = '',
      this.firstName = '',
      this.lastName = '',
      this.title = ''});
}

class ChildrenPassengerItem implements PassengerListItem {
  String firstName;
  String lastName;

  ChildrenPassengerItem({this.firstName, this.lastName});
}

class InfantPassengerItem implements PassengerListItem {
  String firstName;
  String lastName;

  InfantPassengerItem({this.firstName, this.lastName});
}
