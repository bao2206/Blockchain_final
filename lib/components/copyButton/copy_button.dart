// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CopyButton extends StatelessWidget {
//   const CopyButton({
//     Key? key,
//     required this.text,
//     required this.value,
//   }) : super(key: key);

//   final Text text;
//   final String? value;

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       child: text,
//       onPressed: () {
//         Clipboard.setData(ClipboardData(text: value));

//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text('Copied'),
//         ));
//       },
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CopyButton extends StatelessWidget {
//   const CopyButton({
//     Key? key,
//     required this.text,
//     required this.value,
//   }) : super(key: key);

//   final Text text;
//   final String? value;

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       child: text,
//       onPressed: () {
//         if (value != null) {
//           Clipboard.setData(ClipboardData(text: value));
//           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//             content: Text('Copied'),
//           ));
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//             content: Text('Value is null'),
//             // Optionally, you can provide additional actions or handling for null value.
//           ));
//         }
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyButton extends StatelessWidget {
  const CopyButton({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  final Text text;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: text,
      onPressed: () {
        final textToCopy = value ?? ''; // Use an empty string if value is null
        Clipboard.setData(ClipboardData(text: textToCopy));

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Copied'),
        ));
      },
    );
  }
}
