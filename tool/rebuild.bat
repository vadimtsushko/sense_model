c:
cd c:\Projects\sense_model
git fetch origin
git status
git pull
call pub get
dart --snapshot=bin/sense_model.dart.snapshot bin/sense_model.dart
dart build