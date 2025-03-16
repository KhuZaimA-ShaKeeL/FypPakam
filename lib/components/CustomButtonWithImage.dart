import 'package:flutter/material.dart';

class CustomButtonWithImage extends StatelessWidget {
  final String? path;
  final String name;
  void Function()? onPressed;
  CustomButtonWithImage({super.key, this.path, required this.name,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9, // 90% of screen width
      child: ElevatedButton(
        onPressed:onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0), // No shadow
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(width: 2),
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (path != null) ...[
              Image.asset(
                path!,
                height: 24,
              ),
              SizedBox(width: 10),
            ],
            Text(
              name,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
