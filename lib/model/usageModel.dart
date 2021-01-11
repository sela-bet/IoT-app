class UsageModel {
  String roomName;
  String roomImage;
  String roomConsumption;
  UsageModel({this.roomName, this.roomImage, this.roomConsumption});
}

List<UsageModel> usageList = [
  UsageModel(
    roomName: 'Living Room',
    roomImage: 'assets/television.png',
    roomConsumption: '20kwh',
  ),
  UsageModel(
    roomName: 'Bed Room',
    roomImage: 'assets/bedroom.jpg',
    roomConsumption: '10.21kwh',
  ),
  UsageModel(
    roomName: 'Dining Room',
    roomImage: 'assets/kitchen.png',
    roomConsumption: '4.1kwh',
  ),
];
