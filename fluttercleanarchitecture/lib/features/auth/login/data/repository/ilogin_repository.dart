import 'package:fluttercleanarchitecture/features/auth/login/data/dto/request/login_request.dart';
import 'package:fluttercleanarchitecture/features/auth/login/data/dto/response/login_response.dart';

abstract interface class ILoginRepository {
  Future<LoginResponse> loginUser(LoginRequest data);
}
