import 'package:flutter/material.dart';

class NegativeConfirmDialog extends StatelessWidget {
  final String title;
  final String body;
  final Function() onToggleSubmit;

  const NegativeConfirmDialog({
    Key? key,
    required this.title,
    required this.body,
    required this.onToggleSubmit,
  }) : super(key: key);

  _toggleSubmit(BuildContext context) {
    onToggleSubmit();
    Navigator.pop(context);
  }

  _toggleCancel(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(32),
              topLeft: Radius.circular(32),
            ),
          ),
          child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 8),
              Text(
                body,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () => _toggleCancel(context),
                      child: const Text(
                        'ยกเลิก',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF9A9A9A),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () => _toggleSubmit(context),
                      child: const Text(
                        'ยืนยัน',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFE45959),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
