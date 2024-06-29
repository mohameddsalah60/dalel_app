import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomCategoryHeaderitem extends StatelessWidget {
  const CustomCategoryHeaderitem(
      {super.key, required this.text, required this.img, this.onTap});
  final String text, img;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.sylesPoppinsMeduim24.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Flexible(
                child: Image.network(
                  img,
                  height: 64,
                  width: 47,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
