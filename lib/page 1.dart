// // // import 'package:flutter/material.dart';
// // //
// // // class DropdownButtonWithSearch extends StatefulWidget {
// // //   @override
// // //   _DropdownButtonWithSearchState createState() => _DropdownButtonWithSearchState();
// // // }
// // //
// // // class _DropdownButtonWithSearchState extends State<DropdownButtonWithSearch> {
// // //   List<String> items = [
// // //     'Manager',
// // //     'Python Dep',
// // //     'Flutter Dev',
// // //     'Noc Eng',
// // //     'Civil Eng',
// // //     'Mech Eng',
// // //     'FullStack Dev',
// // //     'Java Dev',
// // //     'React Dev',
// // //     'Ios Dev',
// // //   ];
// // //
// // //   String? selectedItem;
// // //   String? searchKeyword;
// // //   List<String> filteredItems = [];
// // //
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     filteredItems = items;
// // //   }
// // //
// // //   void filterItems() {
// // //     if (searchKeyword != null && searchKeyword!.isNotEmpty) {
// // //       setState(() {
// // //         filteredItems = items
// // //             .where((item) => item.toLowerCase().contains(searchKeyword!.toLowerCase()))
// // //             .toList();
// // //       });
// // //     } else {
// // //       setState(() {
// // //         filteredItems = items;
// // //       });
// // //     }
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Dropdown Button with Search'),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           Container(
// // //             padding: const EdgeInsets.all(16),
// // //             child: Column(
// // //               children: [
// // //                 Stack(
// // //                   children: [
// // //                     DropdownButtonFormField<String>(
// // //                       decoration: const InputDecoration(
// // //                         labelText: 'Select Item',
// // //                       ),
// // //                       items: filteredItems.map((String value) {
// // //                         return DropdownMenuItem<String>(
// // //                           value: value,
// // //                           child: Text(value),
// // //                         );
// // //                       }).toList(),
// // //                       onChanged: (String? value) {
// // //                         setState(() {
// // //                           selectedItem = value;
// // //                         });
// // //                       },
// // //                       value: selectedItem,
// // //                       isExpanded: true,
// // //                     ),
// // //                     Positioned(
// // //                       top: 10,
// // //                       right: 0,
// // //                       bottom: 8,
// // //                       child: Container(
// // //                         padding: const EdgeInsets.symmetric(horizontal: 8),
// // //                         color: Colors.white,
// // //                         child: TextField(
// // //                           decoration: const InputDecoration(
// // //                             labelText: 'Search',
// // //                           ),
// // //                           onChanged: (value) {
// // //                             setState(() {
// // //                               searchKeyword = value;
// // //                               filterItems();
// // //                             });
// // //                           },
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // // void main() {
// // //   runApp(MaterialApp(
// // //     home: DropdownButtonWithSearch(),
// // //   ));
// // // }
// //
// //
// // import 'package:flutter/material.dart';
// //
// // class DropdownButtonWithSearch extends StatefulWidget {
// //   @override
// //   _DropdownButtonWithSearchState createState() => _DropdownButtonWithSearchState();
// // }
// //
// // class _DropdownButtonWithSearchState extends State<DropdownButtonWithSearch> {
// //   List<String> items = [
// //     'Manager',
// //     'Python Dep',
// //     'Flutter Dev',
// //     'Noc Eng',
// //     'Civil Eng',
// //     'Mech Eng',
// //     'FullStack Dev',
// //     'Java Dev',
// //     'React Dev',
// //     'Ios Dev',
// //   ];
// //
// //   String? selectedItem;
// //   String? searchKeyword;
// //   List<String> filteredItems = [];
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     filteredItems = items;
// //   }
// //
// //   void filterItems() {
// //     if (searchKeyword != null && searchKeyword!.isNotEmpty) {
// //       setState(() {
// //         filteredItems = items
// //             .where((item) => item.toLowerCase().contains(searchKeyword!.toLowerCase()))
// //             .toList();
// //       });
// //     } else {
// //       setState(() {
// //         filteredItems = items;
// //       });
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Dropdown Button with Search'),
// //       ),
// //       body: Column(
// //         children: [
// //           Container(
// //             padding: const EdgeInsets.all(16),
// //             child: Column(
// //               children: [
// //                 DropdownButtonFormField<String>(
// //                   // decoration: const InputDecoration(
// //                   //   labelText: 'Select Item',
// //                   // ),
// //                   items: [
// //                     DropdownMenuItem<String>(
// //                       child: SearchBar(
// //                         onChanged: (value) {
// //                           setState(() {
// //                             searchKeyword = value;
// //                             filterItems();
// //                           });
// //                         },
// //                       ),
// //                     ),
// //                     ...filteredItems.map((String value) {
// //                       return DropdownMenuItem<String>(
// //                         value: value,
// //                         child: Text(value),
// //                       );
// //                     }).toList(),
// //                   ],
// //                   onChanged: (String? value) {
// //                     setState(() {
// //                       selectedItem = value;
// //                     });
// //                   },
// //                   value: selectedItem,
// //                   isExpanded: true,
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class SearchBar extends StatefulWidget {
// //   final ValueChanged<String> onChanged;
// //
// //   const SearchBar({required this.onChanged});
// //
// //   @override
// //   _SearchBarState createState() => _SearchBarState();
// // }
// //
// // class _SearchBarState extends State<SearchBar> {
// //   final TextEditingController _controller = TextEditingController();
// //
// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return TextField(
// //       controller: _controller,
// //       onChanged: widget.onChanged,
// //       decoration: InputDecoration(
// //         labelText: 'Search',
// //         prefixIcon: Icon(Icons.search),
// //       ),
// //     );
// //   }
// // }
// //
// // void main() {
// //   runApp(MaterialApp(
// //     home: DropdownButtonWithSearch(),
// //   ));
// // }
//
// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures
//
//
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   static const customSwatch = MaterialColor(
//     0xFFFF5252,
//     <int, Color>{
//       50: Color(0xFFFFEBEE),
//       100: Color(0xFFFFCDD2),
//       200: Color(0xFFEF9A9A),
//       300: Color(0xFFE57373),
//       400: Color(0xFFEF5350),
//       500: Color(0xFFFF5252),
//       600: Color(0xFFE53935),
//       700: Color(0xFFD32F2F),
//       800: Color(0xFFC62828),
//       900: Color(0xFFB71C1C),
//     },
//   );
//
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: customSwatch,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//   List<String> items = [
//     'Manager',
//     'Python Dep',
//     'Flutter Dev',
//     'Noc Eng',
//     'Civil Eng',
//     'Mech Eng',
//     'FullStack Dev',
//     'Java Dev',
//     'React Dev',
//     'Ios Dev',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Dropdown Search"),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Container(
//             decoration: BoxDecoration(
//               // decoration: BoxDecoration(
//               //   border: Border.all(color: themecontroller.isDarkmode.isTrue ?Colours.lightTheme :Colours.darkTheme, width: 2),
//               //),
//               // border: Border.all(color: themecontroller.isDarkmode.isTrue ?Colours.lightTheme :Colours.darkTheme, width: 2),
//             ),
//             child: ExpansionTile(
//               title: Text(
//                 'Professional Details',
//                 // style: TextStyle(
//                 // fontWeight: FontWeight.w400, color: themecontroller.isDarkmode.isTrue ?Colours.lightTheme :Colours.darkTheme ),
//                 // ),
//               ),
//               trailing:  Icon(
//                 Icons.keyboard_arrow_down,
//                 //color: themecontroller.isDarkmode.isTrue ?Colours.lightTheme :Colours.darkTheme ,
//               ),
//               children: [
//                 //Text(""),
//                 DropdownSearch<String>(
//                   mode: Mode.MENU,
//                   showSelectedItems: true,
//                   items: items,
//                   //["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
//                   dropdownSearchDecoration: InputDecoration(
//                     labelText: "Designation",
//
//                     // hintText: "country in menu mode",
//                   ),
//                   popupItemDisabled: isItemDisabled,
//                   onChanged: itemSelectionChanged,
//                   //selectedItem: "",
//                   showSearchBox: true,
//                   searchFieldProps: TextFieldProps(
//                   ,
//                   cursorColor: Colors.blue,
//                   ),
//                 ),
//               ],
//               // child: ListView(
//               //   children: [
//               //
//               //     Text(""),
//               //     DropdownSearch<String>(
//               //       mode: Mode.MENU,
//               //       showSelectedItems: true,
//               //       items: items,
//               //       //["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
//               //       dropdownSearchDecoration: InputDecoration(
//               //         labelText: "Designation",
//               //        // hintText: "country in menu mode",
//               //       ),
//               //       popupItemDisabled: isItemDisabled,
//               //       onChanged: itemSelectionChanged,
//               //       //selectedItem: "",
//               //       showSearchBox: true,
//               //       searchFieldProps: TextFieldProps(
//               //         cursorColor: Colors.blue,
//               //       ),
//               //     ),
//               //     // SizedBox(height: 20,),
//               //     // DropdownSearch<String>.multiSelection(
//               //     //   mode: Mode.MENU,
//               //     //   showSelectedItems: true,
//               //     //   items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
//               //     //   dropdownSearchDecoration: InputDecoration(
//               //     //     labelText: "Menu mode",
//               //     //     hintText: "country in menu mode",
//               //     //   ),
//               //     //   popupItemDisabled: isItemDisabled,
//               //     //   onChanged: print,
//               //     //   selectedItems: ["Brazil"],
//               //     // ),
//               //     // SizedBox(height: 20,),
//               //     // DropdownSearch(
//               //     //   mode: Mode.DIALOG,
//               //     //   items: ["Brazil", "France", "Tunisia", "Canada"],
//               //     //   dropdownSearchDecoration: InputDecoration(labelText: "Name"),
//               //     //   onChanged: print,
//               //     //   selectedItem: "Tunisia",
//               //     //   validator: (String? item) {
//               //     //     if (item == null) return "Required field";
//               //     //     else if (item == "Brazil") return "Invalid item";
//               //     //     else return null;
//               //     //   },
//               //     // ),
//               //     // SizedBox(height: 20,),
//               //     // DropdownSearch(
//               //     //   mode: Mode.BOTTOM_SHEET,
//               //     //   items: ["Brazil", "France", "Tunisia", "Canada"],
//               //     //   dropdownSearchDecoration: InputDecoration(labelText: "Name"),
//               //     //   onChanged: print,
//               //     //   selectedItem: "Tunisia",
//               //     //   validator: (String? item) {
//               //     //     if (item == null) return "Required field";
//               //     //     else if (item == "Brazil") return "Invalid item";
//               //     //     else return null;
//               //     //   },
//               //     // ),
//               //   ],
//               // ),
//             ),
//           ),
//         )
//     );
//   }
//
//   bool isItemDisabled(String s) {
//     //return s.startsWith('I');
//
//     if (s.startsWith('I')) {
//       return true;
//     } else {
//       return false;
//     }
//   }
//
//   void itemSelectionChanged(String? s) {
//     print(s);
//   }
//
// }
