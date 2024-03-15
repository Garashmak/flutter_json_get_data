import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/Get_data.dart';
import 'package:flutter_application_1/Models/ProductModel.dart';

import 'package:flutter_application_1/stateManagement/product_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

// class MainPAge extends StatefulWidget {
//   const MainPAge({super.key});

//   @override
//   State<MainPAge> createState() => _MainPAgeState();
// }

// class _MainPAgeState extends State<MainPAge> {
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder(
//           init: ProductController(),
//           builder: (controller) {
//             return ListView.builder(
//               itemBuilder: (context, index) {
//                 final data=controller.product[index];
//                 return ListTile(
//                   leading: CircleAvatar(
//                     child: Text(data.id.toString()),
//                   ),
//                 onTap: (){
//                   setState(() {
                    
//                   });
//                 },
//                   title: Text(data.title!),
//                   subtitle: Text(data.body.toString()),
//                 );
//               },
//               itemCount: controller.product.length,
//             );
//           })
//    ;
//   }
// }
class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProductController>(
        // init: ProductController(),
            builder: (data) {
              
              if (data.isloading) {
                return  CircularProgressIndicator();
              } else if(data.isError){
                return Text("Error");
              }
              else{
                return ListView.builder(itemBuilder: (context,index){
                  return ListTile(
                    title: Text(data.product[index].title!,maxLines: 1,),
                    subtitle: Text(data.product[index].body!,maxLines: 1,),
                    onTap: (){
                      setState(() {
                        
                      });
                    },
                  );
                },itemCount: data.product.length,);
              }
            }),
    )
   ;
  }
}
// class Data extends StatefulWidget {
//   const Data({super.key});

//   @override
//   State<Data> createState() => _DataState();
// }

// class _DataState extends State<Data> {
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: GetData().fetchdata(),
//             builder: (context,AsyncSnapshot<List<ProductModel>> snap) {
              
//               if (snap.connectionState==ConnectionState.waiting) {
//                 return  CircularProgressIndicator();
//               } else if(snap.hasError){
//                 return Text("Error");
//               }
//               else{
//                 return ListView.builder(itemBuilder: (context,index){
//                   return ListTile(
//                     title: Text(snap.data![index].title!,maxLines: 1,),
//                     subtitle: Text(snap.data![index].body!,maxLines: 1,),
//                     onTap: (){
//                       setState(() {
                        
//                       });
//                     },
//                   );
//                 },itemCount: snap.data!.length,);
//               }
//             }),
//     )
//    ;
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(onPressed: (){
        Get.to(Data());
      }, child: Text("data")),
    );
  }
}