import 'package:change_notifier_provider_sample/app.dart';
import 'package:integration_tests/integration_tests.dart' as integration_tests;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todos_repository_local_storage/todos_repository_local_storage.dart';

void main() {
  integration_tests.run(
    appBuilder: () async {
      return ProviderApp(
        repository: LocalStorageRepository(
          localStorage: KeyValueStorage(
            'change_notifier_provider_test_${DateTime.now().toIso8601String()}',
            await SharedPreferences.getInstance(),
          ),
        ),
      );
    },
  );
}
