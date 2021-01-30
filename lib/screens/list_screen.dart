import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:teste_flutter/stores/list_store.dart';
import 'package:teste_flutter/widgets/custom_icon_button.dart';
import 'package:teste_flutter/widgets/custom_text_field.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  ListStore listStore = ListStore();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Lista de Presença',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Observer(
                          builder: (_) {
                            return CustomTextField(
                              controller: controller,
                              hint: 'Adicione um nome',
                              onChanged: listStore.setNewTodoName,
                              suffix: listStore.isFormValid
                                  ? CustomIconButton(
                                      radius: 32,
                                      iconData: Icons.add,
                                      onTap: () {
                                        listStore.addList();
                                        controller.clear();
                                      },
                                    )
                                  : null,
                            );
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Observer(builder: (_) {
                            return ListView.separated(
                              itemCount: listStore.namesLista.length,
                              itemBuilder: (_, index) {
                                return ListTile(
                                  title: Text(
                                    listStore.namesLista[index],
                                  ),
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: new Text("Renomear " +
                                              listStore.namesLista[index]),
                                          content: CustomTextField(
                                            hint: "digite o novo nome",
                                            onChanged:
                                                listStore.setEdditingname,
                                          ),
                                          actions: <Widget>[
                                            new FlatButton(
                                              child: new Text(
                                                "Fechar",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            new FlatButton(
                                              child: new Text("Salvar"),
                                              onPressed: () {
                                                listStore.editList();
                                                Navigator.of(context).pop();
                                              },
                                              // Não sei usar Navigator.of(context).pop(); junto com mobx
                                            ),
                                            new FlatButton(
                                              child: new Text(
                                                "excluir",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                              onPressed: () {
                                                listStore.removeList();
                                                Navigator.of(context).pop();
                                              },
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              separatorBuilder: (_, __) {
                                return Divider();
                              },
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
