import 'package:get_server/get_server.dart';
import '../data/data_model/user_model.dart';
import '../data/data_repository/user_repository.dart';

class UserController extends GetxController {
  final IUserRepository repository;
  UserController({required this.repository});

  User getUser(ContextRequest req) {
    var name = req.params!['name'];
    return repository.fetchUser(name);
  }
}
