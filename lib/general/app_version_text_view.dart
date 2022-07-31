import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/general/app_config_provider.dart';

class AppVersionTextView extends ConsumerWidget {
  const AppVersionTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final labelAppVersion = ref.watch(appVersionProvider).value;
    if (labelAppVersion != null) {
      return Text(
        labelAppVersion,
        style: Theme.of(context).textTheme.bodyMedium,
      );
    } else {
      return const SizedBox();
    }
  }
}
