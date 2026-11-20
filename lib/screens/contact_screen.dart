import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../data/app_data.dart';
import '../widgets/section_title.dart';


class ContactScreen extends StatelessWidget {

  const ContactScreen({super.key});


  // COPIER UNE COORDONNEE

  void _copy(
    BuildContext context,
    String value,
    String label,
  ) {

    Clipboard.setData(
      ClipboardData(text: value),
    );

    ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(
        content: Text('$label copié dans le presse-papiers'),
      ),

    );

  }


  @override
  Widget build(BuildContext context) {

    return ListView(

      padding: const EdgeInsets.fromLTRB(
        18, 18, 18, 28,
      ),

      children: [

        // EN-TETE

        Container(

          padding: const EdgeInsets.all(22),

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(22),

            gradient: const LinearGradient(

              colors: [
                Color.fromARGB(255, 50, 31, 16),
                Color.fromARGB(255, 119, 80, 35),
              ],

              begin: Alignment.topLeft,
              end: Alignment.bottomRight,

            ),

          ),

          child: const Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Icon(
                Icons.connect_without_contact,
                color: Color.fromARGB(255, 248, 165, 56),
                size: 36,
              ),

              SizedBox(height: 14),

              Text(

                'Restons en contact',

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),

              ),

              SizedBox(height: 6),

              Text(

                'Une question, une idée ou une opportunité ? '
                'Écris-moi.',

                style: TextStyle(
                  color: Colors.white70,
                  height: 1.4,
                ),

              ),

            ],

          ),

        ),


        // COORDONNEES

        const SectionTitle(
          title: 'Coordonnées',
        ),


        _ContactTile(

          icon: Icons.phone_outlined,

          label: 'Téléphone',

          value: AppData.phone,

          onTap: () => _copy(
            context,
            AppData.phone,
            'Téléphone',
          ),

        ),


        _ContactTile(

          icon: Icons.email_outlined,

          label: 'Adresse e-mail',

          value: AppData.email,

          onTap: () => _copy(
            context,
            AppData.email,
            'E-mail',
          ),

        ),


        _ContactTile(

          icon: Icons.location_on_outlined,

          label: 'Adresse',

          value: AppData.address,

          onTap: () => _copy(
            context,
            AppData.address,
            'Adresse',
          ),

        ),


        // RESEAUX SOCIAUX

        const SectionTitle(
          title: 'Réseaux sociaux',
        ),


        _ContactTile(

          icon: Icons.code,

          label: 'GitHub',

          value: AppData.github,

          onTap: () => _copy(
            context,
            AppData.github,
            'Lien GitHub',
          ),

        ),





        const SizedBox(height: 14),


        // INFORMATION

        const Card(

          child: Padding(

            padding: EdgeInsets.all(15),

            child: Row(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Icon(
                  Icons.info_outline,
                  color: Color.fromARGB(255, 199, 114, 2),
                ),

                SizedBox(width: 10),

                Expanded(

                  child: Text(

                    'Appuie sur une coordonnée pour la copier. '
                    'Remplace les valeurs de démonstration par '
                    'tes vraies coordonnées dans app_data.dart.',

                    style: TextStyle(
                      color: Color.fromARGB(255, 105, 87, 71),
                      height: 1.4,
                    ),

                  ),

                ),

              ],

            ),

          ),

        ),

      ],

    );

  }

}



// WIDGET DE CONTACT

class _ContactTile extends StatelessWidget {

  final IconData icon;

  final String label;
  final String value;

  final VoidCallback onTap;

  const _ContactTile({

    required this.icon,
    required this.label,
    required this.value,
    required this.onTap,

  });


  @override
  Widget build(BuildContext context) {

    return Card(

      margin: const EdgeInsets.only(
        bottom: 10,
      ),

      child: ListTile(

        onTap: onTap,

        leading: Container(

          height: 42,
          width: 42,

          decoration: BoxDecoration(

            color: const Color(0xFFE0F2FE),

            borderRadius: BorderRadius.circular(13),

          ),

          child: Icon(
            icon,
            color: const Color.fromARGB(255, 161, 98, 3),
          ),

        ),

        title: Text(

          label,

          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),

        ),

        subtitle: Text(

          value,

          maxLines: 2,

          overflow: TextOverflow.ellipsis,

        ),

        trailing: const Icon(
          Icons.copy_rounded,
          size: 18,
          color: Color.fromARGB(255, 139, 122, 100),
        ),

      ),

    );

  }

}