import 'package:flutter/material.dart';

class AppbarTextButton extends StatelessWidget {
  final String buttonText;
  final bool isSelected;
  const AppbarTextButton({
    super.key,
    required this.buttonText,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom().copyWith(
              elevation: const MaterialStatePropertyAll(0),
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (states) {
                  return Colors.transparent;
                },
              ),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.lightBlue;
                  }
                  return Colors.white;
                },
              ),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 370),
          height: 4,
          width: 80,
          color: isSelected == false ? Colors.transparent : Colors.blue,
        )
      ],
    );
  }
}
