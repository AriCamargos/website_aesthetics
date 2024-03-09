// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecentWork {
  String? image;
  String? category;
  String? title;
  int id;
  RecentWork({
    this.image,
    this.category,
    this.title,
    required this.id,
  });
}

List<RecentWork> recentWork = [
  RecentWork(
    title: 'Rejuvenescimento Facial',
    id: 1,
    category:
        'Combata rugas, linhas de expressão e promova uma pele radiante com nossos tratamentos de toxina botulínica, skinbooster, microagulhamento e mais.',
    image: '/images/woman-pixel4.png',
  ),
  RecentWork(
    title: 'Harmonização Facial',
    id: 2,
    category:
        'Harmonização facial para realçar sua beleza natural! Explore preenchimentos, rinomodelação, fios de PDO e outros procedimentos para equilibrar seus traços.',
    image: '/images//woman-pixel2.png',
  ),
  RecentWork(
    title: 'Melhora Aparência da Pele',
    id: 3,
    category:
        'Nossos procedimentos de microagulhamento, peeling químico, laser Lavieen e ultraformer são a chave para uma textura suave e uma aparência impecável.',
    image: '/images//woman-pixel3.png',
  ),
  RecentWork(
    title: 'Reduz Gordura Localizada',
    id: 4,
    category:
        'Nossos tratamentos de lipo enzimática, lipo de papada e liposucção 3D são eficazes para eliminar gorduras localizadas e esculpir seu corpo dos sonhos.',
    image: '/images//woman-pixel5.png',
  ),
];
