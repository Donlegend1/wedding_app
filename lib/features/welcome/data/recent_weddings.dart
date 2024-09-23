import 'package:my_flutter_app/data/home_data.dart';

class RecentWeddings {
  static RecentWeddings instance = RecentWeddings();
  List<Wedding> weddingList() {
    return weddingData;
  }
}
