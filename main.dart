interface class RealizarEntrega{
  void entregar(){}
}



abstract class Transporte implements RealizarEntrega{
  String _marca;
  
  Transporte({required String marca}) : _marca = marca;
  
  String get marca => _marca;
  
  void entregar();

}

class Avion extends Transporte{
  Avion({required String marca}) : super(marca: marca);
  
  @override
  void entregar(){
    print('El avion marca "$marca" esta entregando por aire.');
  }
  
  
}

class Camion extends Transporte{
  Camion({required String marca}) : super(marca: marca);
  
  @override
  void entregar(){
    print('El camion marca "$marca" esta entregando por tierra');
  }
}


void main(){
  Transporte avionHercules = Avion(marca: "Loocked Martin");
  Transporte camion1 = Camion(marca: "Lotus");
  
  avionHercules.entregar();
  camion1.entregar();
  
}