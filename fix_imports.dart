import 'dart:io';

void main() {
  final libDir = Directory('lib');
  final files = libDir.listSync(recursive: true).whereType<File>().where((f) => f.path.endsWith('.dart')).toList();

  final Map<String, String> filePaths = {};
  for (final file in files) {
    // Correctly extract the path relative to lib/
    final libIndex = file.uri.pathSegments.indexOf('lib');
    if (libIndex == -1) continue;
    final packagePath = 'package:abosiefienapp/' + file.uri.pathSegments.sublist(libIndex + 1).join('/');
    final fileName = file.uri.pathSegments.last;
    filePaths[fileName] = packagePath;
  }

  int modifiedCount = 0;
  final importRegex = RegExp(r"import\s+['""]([^'""]+)['""];");

  for (final file in files) {
    String content = file.readAsStringSync();
    String originalContent = content;

    content = content.replaceAllMapped(importRegex, (match) {
      final importPath = match.group(1)!;
      if (importPath.startsWith('dart:') || (importPath.startsWith('package:') && !importPath.startsWith('package:abosiefienapp/'))) {
        return match.group(0)!;
      }
      final importedFileName = importPath.split('/').last;
      if (filePaths.containsKey(importedFileName)) {
         return "import '${filePaths[importedFileName]}';";
      }
      return match.group(0)!;
    });

    if (content != originalContent) {
      file.writeAsStringSync(content);
      modifiedCount++;
    }
  }

  print('Updated imports in $modifiedCount files.');
}