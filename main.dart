interface class RealizarEntrega{
  void entregar(){}
}



abstract class Transporte{
  String _marca;
  
  Transporte({required String marca}) : _marca = marca;
  
  String get marca => _marca;
  
}

class Avion extends Transporte implements RealizarEntrega{
  Avion({required String marca}) : super(marca: marca);
  
  @override
  void entregar(){
    print('El avion marca "$marca" esta entregando por aire.');
  }
  
  
}

class Camion extends Transporte implements RealizarEntrega{
  Camion({required String marca}) : super(marca: marca);
  
  @override
  void entregar(){
    print('El camion marca "$marca" esta entregando por tierra');
  }
}


void main(){
  final avionHercules = Avion(marca: "Loocked Martin");
  final camion1 = Camion(marca: "Lotus");
  
  avionHercules.entregar();
  camion1.entregar();
  
}