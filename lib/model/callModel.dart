
class CallModel1{
  final String name;
  final String dateAndTime;
  final String avatarUrl;

  CallModel1({
    required this.name,
    required this.dateAndTime,
    required this.avatarUrl
  });
}

List dummyCallData = [
  CallModel1(
      name: "Pawan Kumar",
      dateAndTime: "Yesterday, 03.30 PM",
      avatarUrl: "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"
  ),
  CallModel1(
      name: "Harvey Spectre",
      dateAndTime: "25/11/2021, 02.23 PM",
      avatarUrl: "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"
  ),
];