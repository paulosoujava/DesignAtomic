import 'package:atomic_design/infra/cache/local_storage_adapter.dart';
import 'package:localstorage/localstorage.dart';

LocalStorageAdapter makeLocalStorageAdapter() => LocalStorageAdapter(localStorage: LocalStorage('atomicDesign'));
