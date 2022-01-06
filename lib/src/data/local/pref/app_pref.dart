import 'package:dksn_githubql/src/data/local/pref/pref_helper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final prefProvider = Provider<PrefHelper>((ref) => AppPref());

class AppPref extends PrefHelper {
  final idKey = "id";
  @override
  Future<String?> getId() async {
    final _preferences = await SharedPreferences.getInstance();
    return _preferences.getString("id") ?? "";
  }

  @override
  Future<void> setId({required String? id}) async {
    final _preferences = await SharedPreferences.getInstance();
    if (id == null || id.isEmpty) {
      _preferences.remove(idKey);
    } else {
      _preferences.setString(idKey, id);
    }
  }
}
