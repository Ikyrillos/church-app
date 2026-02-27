$ErrorActionPreference = "SilentlyContinue"

New-Item -ItemType Directory -Force -Path "lib/features/auth/models" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/auth/view" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/auth/providers" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/auth/repository" | Out-Null

New-Item -ItemType Directory -Force -Path "lib/features/home/view" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/home/providers" | Out-Null

New-Item -ItemType Directory -Force -Path "lib/features/makhdom/models" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/makhdom/view" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/makhdom/providers" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/makhdom/repository" | Out-Null

New-Item -ItemType Directory -Force -Path "lib/features/attendance/models" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/attendance/view" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/attendance/providers" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/features/attendance/repository" | Out-Null

New-Item -ItemType Directory -Force -Path "lib/core/theme" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/core/services" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/core/constants" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/core/widgets" | Out-Null
New-Item -ItemType Directory -Force -Path "lib/core/models" | Out-Null

Move-Item "lib/model/user_model.dart" "lib/features/auth/models/" -Force
Move-Item "lib/presentation/screens/auth/*" "lib/features/auth/view/" -Force
Move-Item "lib/Providers/login_provider*" "lib/features/auth/providers/" -Force
Move-Item "lib/repositories/login_repo.dart" "lib/features/auth/repository/" -Force

Move-Item "lib/presentation/screens/home_screen/*" "lib/features/home/view/" -Force
Move-Item "lib/Providers/home_screen_provider*" "lib/features/home/providers/" -Force

Move-Item "lib/model/khadem_model.dart" "lib/features/makhdom/models/" -Force
Move-Item "lib/model/makhdom_update_model.dart" "lib/features/makhdom/models/" -Force
Move-Item "lib/model/mymakhdoms_model.dart" "lib/features/makhdom/models/" -Force

Move-Item "lib/presentation/screens/add_makhdom" "lib/features/makhdom/view/" -Force
Move-Item "lib/presentation/screens/history_of_makhdoms" "lib/features/makhdom/view/" -Force
Move-Item "lib/presentation/screens/makhdom_details" "lib/features/makhdom/view/" -Force
Move-Item "lib/presentation/screens/manage_of_makhdoms" "lib/features/makhdom/view/" -Force
Move-Item "lib/presentation/screens/my_makhdoms" "lib/features/makhdom/view/" -Force

Move-Item "lib/Providers/add_makhdom_provider*" "lib/features/makhdom/providers/" -Force
Move-Item "lib/Providers/history_of_makhdoms_provider*" "lib/features/makhdom/providers/" -Force
Move-Item "lib/Providers/makhdom_details_provider*" "lib/features/makhdom/providers/" -Force
Move-Item "lib/Providers/manage_of_makhdoms_provider*" "lib/features/makhdom/providers/" -Force
Move-Item "lib/Providers/my_makhdoms_provider*" "lib/features/makhdom/providers/" -Force

Move-Item "lib/repositories/add_makhdom_repo.dart" "lib/features/makhdom/repository/" -Force
Move-Item "lib/repositories/khadem_repo.dart" "lib/features/makhdom/repository/" -Force
Move-Item "lib/repositories/my_makhdoms_repo.dart" "lib/features/makhdom/repository/" -Force
Move-Item "lib/repositories/update_makhdom_repo.dart" "lib/features/makhdom/repository/" -Force

Move-Item "lib/model/attendance_settings.dart" "lib/features/attendance/models/" -Force
Move-Item "lib/model/AddAttendance/*" "lib/features/attendance/models/" -Force

Move-Item "lib/presentation/screens/add_attendance" "lib/features/attendance/view/" -Force
Move-Item "lib/presentation/screens/add_class_attendance" "lib/features/attendance/view/" -Force
Move-Item "lib/presentation/screens/attendance" "lib/features/attendance/view/" -Force
Move-Item "lib/presentation/screens/check_box_add_attendance" "lib/features/attendance/view/" -Force

Move-Item "lib/Providers/add_attendance_provider*" "lib/features/attendance/providers/" -Force
Move-Item "lib/Providers/add_class_attendance_provider*" "lib/features/attendance/providers/" -Force
Move-Item "lib/Providers/check_box_add_attendance_provder*" "lib/features/attendance/providers/" -Force

Move-Item "lib/repositories/add_class_attendance_repo.dart" "lib/features/attendance/repository/" -Force
Move-Item "lib/repositories/check_box_add_attendance_repo.dart" "lib/features/attendance/repository/" -Force

Move-Item "lib/core/theming/*" "lib/core/theme/" -Force
Move-Item "lib/core/shared_prefrence/*" "lib/core/services/" -Force
Move-Item "lib/core/widget/*" "lib/core/widgets/" -Force
Move-Item "lib/presentation/widgets/*" "lib/core/widgets/" -Force

Move-Item "lib/model/AllNamesModel.dart" "lib/core/models/" -Force
Move-Item "lib/model/Data.dart" "lib/core/models/" -Force
Move-Item "lib/model/default_model.dart" "lib/core/models/" -Force
Move-Item "lib/model/dropdown_model.dart" "lib/core/models/" -Force
Move-Item "lib/model/radio_button_model.dart" "lib/core/models/" -Force

Remove-Item "lib/presentation" -Recurse -Force
Remove-Item "lib/Providers" -Recurse -Force
Remove-Item "lib/repositories" -Recurse -Force
Remove-Item "lib/model" -Recurse -Force
Remove-Item "lib/core/theming" -Recurse -Force
Remove-Item "lib/core/shared_prefrence" -Recurse -Force
Remove-Item "lib/core/widget" -Recurse -Force

Write-Output "Files moved successfully."