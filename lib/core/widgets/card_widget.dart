import 'package:flutter/material.dart';
import 'package:abosiefienapp/core/theme/app_theme.dart';

class CardWidget extends StatelessWidget {
  final String screenTitle;
  final void Function()? handleTap;
  final IconData _iconData;
  const CardWidget(this.screenTitle, this.handleTap, this._iconData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: handleTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 72),
          padding: const EdgeInsets.symmetric(horizontal: AppTheme.spacingM, vertical: AppTheme.spacingM),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                child: Icon(
                  _iconData,
                  size: 30,
                ),
              ),
              Text(
                screenTitle,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
