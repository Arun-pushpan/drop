//  import 'package:flutter/material.dart';
// //
// // class ButtonColorChangePage extends StatefulWidget {
// //   @override
// //   _ButtonColorChangePageState createState() => _ButtonColorChangePageState();
// // }
// //
// // class _ButtonColorChangePageState extends State<ButtonColorChangePage> {
// //   List<int> selectedButtonIndexes = [0, 0, 0, 0, 0];
// //   List<int> selectedButtonIndexe = [0, 0, 0, 0, 0];
// //
// //   List<Color> buttonColors = [Colors.white, Colors.white, Colors.white, Colors.white, Colors.white];
// //   List<String> buttonTexts = ['A', 'B', 'C', 'D', 'E'];
// //   List<String> buttonText = ['1', '2', '3', '4', '5'];
// //
// //
// //   List<String> combinedList = [add(value)];
// //
// //   print(combinedList);
// //
// //    changeButtonColor(int index, bool isButtonListOne) {
// //     setState(() {
// //       if (isButtonListOne) {
// //         selectedButtonIndexes = List.generate(buttonTexts.length, (i) => i == index ? 1 : 0);
// //       } else {
// //         selectedButtonIndexe = List.generate(buttonText.length, (i) => i == index ? 1 : 0);
// //       }
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Button Color Change'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             SizedBox(height: 10),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: List.generate(
// //                 buttonTexts.length,
// //                     (index) => SizedBox(
// //                   width: 60,
// //                   height: 30,
// //                   child: ElevatedButton(
// //                     style: ElevatedButton.styleFrom(
// //                       primary: selectedButtonIndexes[index] == 1 ? Colors.red : Colors.white,
// //                     ),
// //                     onPressed: () => changeButtonColor(index, true),
// //                     child: Text(buttonTexts[index]),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: List.generate(
// //                 buttonText.length,
// //                     (index) => SizedBox(
// //                   width: 60,
// //                   height: 30,
// //                   child: ElevatedButton(
// //                     style: ElevatedButton.styleFrom(
// //                       primary: selectedButtonIndexe[index] == 1 ? Colors.yellow : Colors.white,
// //                     ),
// //                     onPressed: () => changeButtonColor(index, false),
// //                     child: Text(buttonText[index]),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//  import 'package:flutter/material.dart';
//
//  import 'package:flutter/material.dart';
//
//  class GalleryPage extends StatefulWidget {
//    @override
//    _GalleryPageState createState() => _GalleryPageState();
//  }
//
//  class _GalleryPageState extends State<GalleryPage> {
//   List <String> selectedImage=[]; // Holds the URL or path of the selected image
//
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Gallery'),
//        ),
//        body: Column(
//
//          children: [
//            // Selected image pinned to the top
//            SizedBox(
//              height: 50,
//              width: 50,
//              child: ListView.builder(
//                scrollDirection: Axis.horizontal,
//                  itemCount: selectedImage.length,
//                  itemBuilder: (context,index){
//                return Container(
//                  height: 100,
//                  color: Colors.cyan,
//                  child: Image.network(
//                    selectedImage[index]
//                        ,fit: BoxFit.cover,
//                  ),
//                );
//              }),
//            ),
//            // if (selectedImage != null)
//              // Container(
//              //   height: 100,
//              //   width: 100,// Adjust the height as needed
//              //   color: Colors.black,
//              //   child: Image.network(
//              //     selectedImage!,
//              //     fit: BoxFit.cover,
//              //   ),
//              // ),
//
//            // Gallery images
//            Expanded(
//              child: GridView.builder(
//                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: 3,
//                ),
//                itemCount: 10, // Replace with your actual number of images
//                itemBuilder: (context, index) {
//                  // Replace this with your image widget or card
//                  return GestureDetector(
//                    onTap: () {
//                      setState(() {
//                        String imageUrl = 'https://example.com/image$index.jpg';
//                        if (selectedImage.contains(imageUrl)) {
//                          selectedImage.remove(imageUrl);
//                        } else {
//                          selectedImage.add(imageUrl);
//                        }
//                      });
//                    },
//                    onDoubleTap: (){
//                      setState(() {
//
//                      });
//                    },
//                    child: Container(
//                      color: Colors.grey,
//                      child: Center(
//                        child: Text('Image $index'),
//                      ),
//                    ),
//                  );
//                },
//              ),
//            ),
//          ],
//        ),
//      );
//    }
//  }
//
//
//
//  void main() {
//   runApp(MaterialApp(
//     home: GalleryPage(),
//   ));
// }
//
import 'package:flutter/material.dart';
//
// class ButtonColorChangePage extends StatefulWidget {
//   @override
//   _ButtonColorChangePageState createState() => _ButtonColorChangePageState();
// }
//
// class _ButtonColorChangePageState extends State<ButtonColorChangePage> {
//   List<int> selectedButtonIndexes = [0, 0, 0, 0, 0];
//   List<int> selectedButtonIndexe = [0, 0, 0, 0, 0];
//
//   List<Color> buttonColors = [Colors.white, Colors.white, Colors.white, Colors.white, Colors.white];
//   List<String> buttonTexts = ['A', 'B', 'C', 'D', 'E'];
//   List<String> buttonText = ['1', '2', '3', '4', '5'];
//
//
//   List<String> combinedList = [add(value)];
//
//   print(combinedList);
//
//    changeButtonColor(int index, bool isButtonListOne) {
//     setState(() {
//       if (isButtonListOne) {
//         selectedButtonIndexes = List.generate(buttonTexts.length, (i) => i == index ? 1 : 0);
//       } else {
//         selectedButtonIndexe = List.generate(buttonText.length, (i) => i == index ? 1 : 0);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Button Color Change'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                 buttonTexts.length,
//                     (index) => SizedBox(
//                   width: 60,
//                   height: 30,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       primary: selectedButtonIndexes[index] == 1 ? Colors.red : Colors.white,
//                     ),
//                     onPressed: () => changeButtonColor(index, true),
//                     child: Text(buttonTexts[index]),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                 buttonText.length,
//                     (index) => SizedBox(
//                   width: 60,
//                   height: 30,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       primary: selectedButtonIndexe[index] == 1 ? Colors.yellow : Colors.white,
//                     ),
//                     onPressed: () => changeButtonColor(index, false),
//                     child: Text(buttonText[index]),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List <String> selectedImage=[]; // Holds the URL or path of the selected image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Column(

        children: [
          // Selected image pinned to the top
          SizedBox(
            height: 100,
            width: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: selectedImage.length,
                itemBuilder: (context,index){
                  return Container(
                    height: 100,
                    color: Colors.cyan,
                    child: Image.network(
                      selectedImage[index]
                      ,fit: BoxFit.cover,
                    ),
                  );
                }),
          ),
          // if (selectedImage != null)
          // Container(
          //   height: 100,
          //   width: 100,// Adjust the height as needed
          //   color: Colors.black,
          //   child: Image.network(
          //     selectedImage!,
          //     fit: BoxFit.cover,
          //   ),
          // ),

          // Gallery images
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 10, // Replace with your actual number of images
              itemBuilder: (context, index) {
                // Replace this with your image widget or card
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      String imageUrl = 'https://example.com/image$index.jpg';
                      if (selectedImage.contains(imageUrl)) {
                        selectedImage.remove(imageUrl);
                      } else {
                        selectedImage.add(imageUrl);
                      }
                    });
                  },
                  onDoubleTap: (){
                    setState(() {

                    });
                  },
                  child: Container(
                    color: Colors.grey,
                    child: Center(
                      child: Text('Image $index'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



void main() {
  runApp(MaterialApp(
    home: GalleryPage(),
  ));
}


