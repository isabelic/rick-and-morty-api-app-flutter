import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../models/character.dart';


class CharacterDetailsScreen extends StatefulWidget {
  final Character character;

  const CharacterDetailsScreen(this.character,{super.key});


  @override
  State<CharacterDetailsScreen> createState() => _CharacterDetailsScreenState();
}

class _CharacterDetailsScreenState extends State<CharacterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final character = widget.character;

    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      centerTitle : true,
    ),
    body: Card(
      child: Column(
        children: [
          Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedNetworkImage(imageUrl: character.image)//colocar image 
            ],
          ),
          SizedBox(height: 16,),
       Column(
          mainAxisAlignment: MainAxisAlignment.center,// alinhamento de uma linha ou coluna 
          children: [
          Text("Status: ${character.status}", style: const TextStyle(fontSize: 20),),
          Text("Location: ${character.locationName}", style: const TextStyle(fontSize: 20),),
          Text("Gender: ${character.gender}", style: const TextStyle(fontSize: 20),),
          Text("Species: ${character.species}", style: const TextStyle(fontSize: 20),),
         ] 
        )
        
        ],
      ),
    )
    );
  }
}
  
  
