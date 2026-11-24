import 'package:flutter/material.dart';

class AppData {

  // INFORMATIONS PERSONNELLES

  static const fullName = 'Bénit Yeza';

  static const headline =
      'Étudiant en sciences informatiques';

  static const location = 'RDC, Nord-Kivu, Goma.';

  static const email = 'benityeza@gmail.com';

  static const phone = '+243 977 768 073';

  static const address =
      'Goma, République démocratique du Congo';

  static const github =
      'https://github.com/KAMBALEKYATSINGEJOEL';

  // static const linkedin =
  //     'https://www.linkedin.com/in/Joel_Kambale';


  // PRESENTATION

  static const about =
      "Passionné par les technologies, le développement mobile "
      "et les réseaux informatiques."
      "Expert en Intelligence et Ingenieur en cybersecurité.";


  // FORMATION

  static const education = [

    EducationItem(
      period: 'En cours',
      title: 'Sciences informatiques',
      subtitle: 'Réseaux et Télécommunications',
      detail: 'Établissement à compléter',
    ),

  ];


  // EXPERIENCES

  static const experiences = [

    ExperienceItem(
      period: '2025-2026',
      title: 'Stage professionnel',
      organization: 'CONGO IMPACT',
      detail:
          'Mon stage à Congo Impact m_a permis de me former du coté administratif et la gestion d_entreprise',
    ),

    ExperienceItem(
      period: 'Aout  2023 - Octobre 2024',
      title: 'Gestion d_entreprise',
      organization: 'CONGO IMPACT',
      detail:
          'Genieautopsie.page.gd, dbgoma.page.gd, chopeka.com, couleur@frique.com',
    ),

  ];


  // COMPETENCES TECHNIQUES

  static const technicalSkills = [

    'Flutter / Dart',
    'HTML / CSS / JavaScript',
    'Python',
    'Réseaux informatiques',
    'Microsoft Word, Excel et PowerPoint',
    'Git et GitHub',

  ];


  // LANGUES

  static const languages = [

    'Français',
    'Swahili',
    'Anglais',

  ];


  // CENTRES D'INTERET

  static const interests = [

    'Développement logiciel',
    'Intelligence artificielle',
    'Réseaux et cybersécurité',
    'Innovation technologique',

  ];


  // FAMILLE

  static const family = [

    FamilyMember(
      name: 'Yeza Nzabanita',
      relationship: 'Père',
      profession: 'Entrepreneur',
      initials: 'Y',
      color: Color.fromARGB(255, 235, 110, 37),
    ),

    FamilyMember(
      name: 'Bahati Gorette',
      relationship: 'Mère',
      profession: 'Commercante',
      initials: 'B',
      color: Color.fromARGB(255, 219, 126, 39),
    ),

    FamilyMember(
      name: 'Shékinah Yeza',
      relationship: 'Sœur',
      profession: 'Etudiante',
      initials: 'F',
      color: Color.fromARGB(255, 150, 87, 5),
    ),

  ];

}


// CLASSE FORMATION

class EducationItem {

  final String period;
  final String title;
  final String subtitle;
  final String detail;

  const EducationItem({
    required this.period,
    required this.title,
    required this.subtitle,
    required this.detail,
  });

}


// CLASSE EXPERIENCE

class ExperienceItem {

  final String period;
  final String title;
  final String organization;
  final String detail;

  const ExperienceItem({
    required this.period,
    required this.title,
    required this.organization,
    required this.detail,
  });

}


// CLASSE MEMBRE DE FAMILLE

class FamilyMember {

  final String name;
  final String relationship;
  final String profession;
  final String initials;
  final Color color;

  const FamilyMember({
    required this.name,
    required this.relationship,
    required this.profession,
    required this.initials,
    required this.color,
  });

}


///////////////////////////////////////////////////////////////////////////////////////////////////
class ApiFamilyMember {
  final int id;
  final String nom;
  final String postnom;
  final String prenom;
  final String lieuNaissance;
  final String dateNaissance;
  final String parente;
  final String? imageUrl;

  const ApiFamilyMember({
    required this.id,
    required this.nom,
    required this.postnom,
    required this.prenom,
    required this.lieuNaissance,
    required this.dateNaissance,
    required this.parente,
    this.imageUrl,
  });

  String get fullName => '$prenom $postnom $nom'.trim();

  factory ApiFamilyMember.fromJson(Map<String, dynamic> json) {
    return ApiFamilyMember(
      id: int.tryParse(json['id'].toString()) ?? 0,
      nom: json['nom']?.toString() ?? '',
      postnom: json['postnom']?.toString() ?? '',
      prenom: json['prenom']?.toString() ?? '',
      lieuNaissance: json['lieu_naissance']?.toString() ?? '',
      dateNaissance: json['date_naissance']?.toString() ?? '',
      parente: json['parente']?.toString() ?? '',
      imageUrl: json['image_url']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nom': nom,
      'postnom': postnom,
      'prenom': prenom,
      'lieu_naissance': lieuNaissance,
      'date_naissance': dateNaissance,
      'parente': parente,
    };
  }
}
//////////////////////////////////////////////////////////////////////////////////////////
