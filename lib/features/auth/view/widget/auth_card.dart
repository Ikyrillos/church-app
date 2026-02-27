import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:abosiefienapp/features/auth/providers/login_provider.dart';
import 'package:abosiefienapp/core/theme/app_theme.dart';

class AuthCard extends HookConsumerWidget {
  const AuthCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.of(context).size;
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final isLoading = useState(false);
    final isPasswordVisible = useState(false);

    return Card(
      child: Container(
        width: deviceSize.width * 0.75,
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: usernameController,
                    textDirection: TextDirection.rtl,
                    decoration: const InputDecoration(labelText: 'إسم المستخدم'),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'إسم المستخدم خطأ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: AppTheme.spacingM),
                  TextFormField(
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      labelText: 'كلمة السر',
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          isPasswordVisible.value = !isPasswordVisible.value;
                        },
                      ),
                    ),
                    obscureText: !isPasswordVisible.value,
                    controller: passwordController,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'كلمة السر خطأ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: AppTheme.spacingL),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: isLoading.value ? null : () async {
                        if (formKey.currentState!.validate()) {
                          isLoading.value = true;
                          try {
                            await ref.read(loginNotifierProvider.notifier).login(
                                usernameController.text,
                                passwordController.text,
                                context);
                          } finally {
                            if (context.mounted) {
                               isLoading.value = false;
                            }
                          }
                        }
                      },
                      child: isLoading.value
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('تسجيل الدخول'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
