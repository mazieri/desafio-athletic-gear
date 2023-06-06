consultarSenhasFortes() {
  RegExp regex =
      RegExp(r"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^a-zA-Z\d\s]).{7,}$");

  List<String> senhas = const [
    "#forTe1",
    "senhafraca",
    "Qu@s1",
    "Voce@Consegue!2023",
  ];

  List senhasFortes = [];

  for (var i = 0; i < senhas.length; i++) {
    regex
        .allMatches(senhas[i], 0)
        .forEach((var senha) => senhasFortes.add(senhas[i]));
  }

  print("Essa é a lista de senhas fortes: $senhasFortes\n");

  for (var i = 0; i < senhasFortes.length; i++) {
    print("Meus Parabéns, a senha \"${senhasFortes[i]}\" é forte");
  }
}
