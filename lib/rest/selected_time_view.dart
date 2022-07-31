import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class SelectedTimeView extends ConsumerWidget {
  final String title;
  final AutoDisposeStateProvider provider;
  final Function() onTap;

  const SelectedTimeView({
    super.key,
    required this.title,
    required this.provider,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 4),
        InkWell(
          onTap: onTap,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: Border.all(color: const Color(0xFFCACACA)),
            ),
            child: _SelectedTimeTextView(provider: provider),
          ),
        )
      ],
    );
  }
}

class _SelectedTimeTextView extends ConsumerWidget {
  final AutoDisposeStateProvider provider;

  const _SelectedTimeTextView({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.watch(provider);
    final String timeLabel;
    if (time != null) {
      timeLabel = DateFormat('HH:mm').format(time);
    } else {
      timeLabel = '--:--';
    }
    return Text(
      timeLabel,
      style: Theme.of(context).textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}
