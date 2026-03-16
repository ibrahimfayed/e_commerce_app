import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/core/error/exceptions.dart';
import 'package:ecommerce/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: AuthLocalDataSource)
class AuthSharedPrefLocalDataSource implements AuthLocalDataSource {
  final SharedPreferences _sharedpref;
  const AuthSharedPrefLocalDataSource(this._sharedpref);
  @override
  Future<String> getToken() async {
    try {
      return _sharedpref.getString(CacheKeys.token)!;
    } catch (exception) {
      throw const LocalException('Failed To Git Token');
    }
    //here may throw exception it is normal i will handle it soon
  }

  @override
  Future<void> saveToken(String token) async {
    try {
      await _sharedpref.setString(CacheKeys.token, token);
    } catch (exception) {
      throw const LocalException('Failed To Save Token');
    }
  }
}
