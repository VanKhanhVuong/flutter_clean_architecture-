import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/dto/request/verify_account/verify_account_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/repository/verify_account/iverify_account_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/verify_account/source/remote/verify_account/verify_account_api.dart';

final verifyAccountRepositoryProvider = Provider<IVerifyAccountRepository>((
  ref,
) {
  final verifyAccountApi = ref.watch(verifyAccountApiProvider);
  return VerifyAccountRepository(verifyAccountApi);
});

final class VerifyAccountRepository implements IVerifyAccountRepository {
  final VerifyAccountApi _verifyAccountApi;

  VerifyAccountRepository(this._verifyAccountApi);

  @override
  Future<OnlyMessageResponse> verifyAccount(VerifyAccountRequest data) {
    try {
      final response = _verifyAccountApi.verifyAccount(data);
      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }
}
