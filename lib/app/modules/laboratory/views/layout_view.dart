// import 'package:flutter/material.dart';
// import 'package:luna_app/app/widgets/shared/navbar.dart';
// import 'package:luna_app/app/widgets/shared/sidebar.dart';
// import 'package:get/get.dart';

// class DashboardLayout extends GetView {
//   final Widget child;

//   DashboardLayout({required this.child});

//   @override
//   Widget build(BuildContext context) => view(context);

//   @override
//   Widget view(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: const Color(0xffEDF1F2),
//       body: Stack(
//         children: [
//           Row(
//             children: [
//               //Depende si tiene mas de 700px
//               if (size.width >= 700) SideBar(),

//               //Contenedor de view
//               //view=pantalla donde me encuentro
//               Expanded(
//                 child: Column(
//                   children: [
//                     //Navbar
//                     Navbar(),

//                     //View
//                     Expanded(
//                       child: Padding(
//                         padding:
//                         const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                         child: child,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),

//           if (size.width < 700)
//             AnimatedBuilder(
//               animation: SideMenuProvider.menuController!,
//               builder: (context, _) => Stack(
//                 children: [
//                   //Background traslucido
//                   if (SideMenuProvider.isOpen)
//                     Opacity(
//                       opacity: SideMenuProvider.opacity.value,
//                       child: GestureDetector(
//                         onTap: () => SideMenuProvider.closeMenu(),
//                         child: Container(
//                           width: size.width,
//                           height: size.height,
//                           color: Colors.black26,
//                         ),
//                       ),
//                     ),

//                   Transform.translate(
//                     offset: Offset(SideMenuProvider.movement.value, 0),
//                     child: SideBar(),
//                   )
//                 ],
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }