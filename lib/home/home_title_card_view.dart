import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTitleCardView extends StatelessWidget {
  final Function() onToggleShare;

  const HomeTitleCardView({Key? key, required this.onToggleShare})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(32)),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'วันนี้เป็นอย่างไรบ้าง ?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: onToggleShare,
              icon: const Icon(
                Icons.share,
                size: 32,
                color: Color(0xFF9A9A9A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
