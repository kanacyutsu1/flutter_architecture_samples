import 'package:change_notifier_provider_sample/app.dart'; //เขียนเอง
import 'package:flutter/material.dart'; //ไม่
import 'package:shared_preferences/shared_preferences.dart'; //ไม่
import 'package:todos_repository_local_storage/todos_repository_local_storage.dart'; //ไม่

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    // app dart
    ProviderApp(
      repository: LocalStorageRepository(
        localStorage: KeyValueStorage(
          'change_notifier_provider_todos',
          await SharedPreferences.getInstance(),
        ),
      ),
    ),
  );
}
