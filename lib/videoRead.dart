// import 'package:flutter/material.dart';
// import 'package:youtube_player/youtube_player.dart';

// class VideoRead extends StatefulWidget {
//   @override
//   _VideoReadState createState() => _VideoReadState();
// }

// class _VideoReadState extends State<VideoRead> {
// TextEditingController _idController = TextEditingController();
//   String id = "7QUtEmBT_-w";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           //title: Text(widget.title),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               YoutubePlayer(
//                 context: context,
//                 source: id,
//                 quality: YoutubeQuality.HD,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   controller: _idController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: "Enter youtube \<video id\> or \<link\>"
//                   ),
//                 ),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   setState(() {
//                     id = _idController.text;
//                   });
//                 },
//                 child: Text("Play"),
//               ),
//             ],
//           ),
//         ));
//   }
// }