import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/request/resend_reset_code/resend_reset_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/reset_password/data/dto/response/resend_reset_code/resend_reset_code_response.dart';
import 'package:retrofit/retrofit.dart';

part 'resend_reset_code_api.g.dart';

final resendResetCodeApiProvider = Provider<ResendResetCodeApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return ResendResetCodeApi(dio);
});

@RestApi()
abstract class ResendResetCodeApi {
  factory ResendResetCodeApi(Dio dio) => _ResendResetCodeApi(dio);

  @POST('/api/resend/otp/reset/password')
  Future<ResendResetCodeResponse> resendResetCode(
    @Body() ResendResetCodeRequest body,
  );
}
