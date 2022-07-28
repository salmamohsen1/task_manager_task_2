import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_task2/presentation/theme.dart';

class InputField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final String hint;
  final Widget? widget;
  const InputField(
      {super.key,
      required this.title,
      this.controller,
      required this.hint,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: titleTextStle,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 14.0),
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      autofocus: false,
                      cursorColor:
                          Get.isDarkMode ? Colors.grey[100] : Colors.grey[600],
                      readOnly: widget == null ? false : true,
                      controller: controller,
                      style: subTitleTextStle,
                      decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: subTitleTextStle,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: context.theme.backgroundColor,
                            width: 0,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: context.theme.backgroundColor,
                            width: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  widget ?? Container(),
                ],
              ),
            )
          ],
        ));
  }
}
