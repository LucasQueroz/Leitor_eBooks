import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leitor_ebook/models/character_model.dart';

//Pages
import 'pages/character_details_page.dart';

class MyList extends StatelessWidget {
  final Character character;
  const MyList({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Hero(
              tag: character.id,
              child: CircleAvatar(
                backgroundImage: NetworkImage(character.cover_url),
              ),
            ),
            title: Text(character.title),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(character.author),
                Text(character.download_url),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CharacterDetailsPage(character: character)));
            },
          ),
          const Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}