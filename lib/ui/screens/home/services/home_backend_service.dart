import 'package:medi_support/ui/screens/home/home_model.dart';

abstract class HomeBackendService {
  Future<List<HomeModelPost>> fetchPosts();
}
