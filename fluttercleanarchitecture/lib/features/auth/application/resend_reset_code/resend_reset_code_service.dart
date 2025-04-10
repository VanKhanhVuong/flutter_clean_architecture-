import 'package:fluttercleanarchitecture/common/dtos/only_message_response/only_message_response.dart';
import 'package:fluttercleanarchitecture/core/domain/model/only_message_model/only_message_model.dart';
import 'package:fluttercleanarchitecture/features/auth/application/resend_reset_code/iresend_reset_code_service.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/dto/request/resend_reset_code/resend_reset_code_request.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/repository/resend_reset_code/iresend_reset_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/data/reset_password/repository/resend_reset_code/resend_reset_code_repository.dart';
import 'package:fluttercleanarchitecture/features/auth/domain/mapper/iresend_reset_code_model_mapper.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/exception/failure.dart';

final resendResetCodeServiceProvider = Provider<IResendResetCodeService>((ref) {
  final resendResetCodeRepository = ref.watch(
    resendResetCodeRepositoryProvider,
  );
  return ResendResetCodeService(resendResetCodeRepository);
});

final class ResendResetCodeService
    implements IResendResetCodeService, IResendResetCodeModelMapper {
  final IResendResetCodeRepository _resendResetCodeRepository;

  ResendResetCodeService(this._resendResetCodeRepository);

  @override
  Future<Result<OnlyMessageModel, Failure>> resendResetCode(
    ResendResetCodeRequest data,
  ) async {
    try {
      final response = await _resendResetCodeRepository.resendResetCode(data);

      final model = mapToResendResetCodeModel(response);

      return Success(model);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  OnlyMessageModel mapToResendResetCodeModel(OnlyMessageResponse response) {
    return OnlyMessageModel(success: true, message: response.message);
  }
}
