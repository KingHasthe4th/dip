
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen() ,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Container(height: 178,
                width: 128,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 40, 41, 102) ,
                    borderRadius: BorderRadius.circular(16)

                  ),
                child: const Image(
                  // I couldn't do asset image because of a problem in pubspec.yml so i went the net work image insted and i changed colors go with the new image 
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjE52vUONaMNrnXytmO4Ro5w5D3HQusV_FwQ&s'),
                  fit: BoxFit.contain, ) ,
                
                ),
                const SizedBox(
                  width: 34,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Dr.Norah salem", style: TextStyle(fontSize: 34),),
                    Text("Proctologist/Gastroenterologist",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey[700]),),
                     const SizedBox(
                  height: 16,
                ),
                    const Row(children: [
                      Costumiconstyle(icon: Icons.mail),
                         SizedBox(
                  width: 8,
                ),
                       Costumiconstyle(icon: Icons.phone),
                         SizedBox(
                  width: 8,
                ),
                        Costumiconstyle(icon: Icons.video_call),
                        ],
                        ),

                  ],
                )],
                ),
                const SizedBox(height: 32,),
              const Text("About", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
              const SizedBox(height:8,),
              Text("Dr. Norah. is truly one of the best in the field.Dr. orah is not only exceptionally knowledgeable and skilled, but She also has a remarkable bedside manner that puts all of his patients at ease. She has a genuine passion for medicine and a deep commitment to providing the highest quality of care. What really sets Dr. orah apart is his ability to truly connect with each person She treats. she takes the time to listen intently, understand their unique circumstances, and develop personalized treatment plans that address their specific needs and goals. His patients consistently praise his empathy, patience, and ability to explain complex medical issues in a way that's easy to understand. Beyond his clinical expertise, Dr. orah is also an invaluable resource and mentor to other healthcare providers.she is constantly seeking out the latest advancements in medicine and treatments, and she generously shares his knowledge and insights with his colleagues. I've seen firsthand how his innovative thinking and collaborative approach have led to improved outcomes for our shared patients.",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300, color: Colors.grey[700])),
              const SizedBox(height: 64,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Row(children: [
                      Icon(Icons.location_on_outlined,color: Colors.grey[700],),
                      const SizedBox(width: 4.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Address",
                            style: TextStyle(fontSize: 24),
                            ),
                            Text("Imam Malik Street,\nHouse No.12, Al-Malaz District,\nRiyadh 12345, Saudi Arabia",
                            style: TextStyle(color:Colors.grey[700]),
                            ),
                        ],
                      )

                    ],
                    ),
                    Row(children: [
                      Icon(Icons.location_on_outlined,color: Colors.grey[700],),
                      const SizedBox(width: 4.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Address",
                            style: TextStyle(fontSize: 24),
                            ),
                            Text("Imam Malik Street,\nHouse No.12, Al-Malaz District,\nRiyadh 12345, Saudi Arabia",
                            style: TextStyle(color:Colors.grey[700]),
                            ),
                        ],
                      )

                    ],
                    ),
                  ],

                   ),
                   const ClipRRect(
                     // it keeps showing error:"The constructor being called isn't a const constructor.Try removing 'const' from the constructor invocation."
                     ////borderRadius: BorderRadius.circular(16.0),
                     child: Image(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS394zD5WhcEVAeBPw2JQRIxUbxTnLjXVZKWQ&s",
                      ),
                      height: 200,
                      width: 150,
                      fit: BoxFit.cover,
                      ),
                      ),
    
  ],
                      ),
          ],),
        ),
      ) ,
      );
  }
}

class Costumiconstyle extends StatelessWidget {
  const Costumiconstyle({
    super.key, required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 143, 147, 182),
        borderRadius: BorderRadius.circular(16)
      ),
    child:Icon(

      icon,color: const Color.fromARGB(255, 40, 41, 102),
      size: 32,) , 
      );
  }
}