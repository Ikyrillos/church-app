import 'dart:io';
import 'dart:convert';

void main() {
  final content = File('lib/core/app_repository/repo.dart').readAsLinesSync();
  print(content[5]);
  print(content[5].codeUnits);
}