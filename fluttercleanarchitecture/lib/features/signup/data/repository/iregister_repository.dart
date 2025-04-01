import 'package:fluttercleanarchitecture/features/signup/data/dto/request/register_request.dart';
import 'package:fluttercleanarchitecture/features/signup/data/dto/response/register_response.dart';

abstract interface class IRegisterRepository {
  Future<RegisterResponse> registerUser(RegisterRequest data);
}
