import 'package:flutter/material.dart';

class AdminUsersTestPage extends StatefulWidget {
  const AdminUsersTestPage({Key? key}) : super(key: key);

  @override
  State<AdminUsersTestPage> createState() => _AdminUsersTestPageState();
}

class _AdminUsersTestPageState extends State<AdminUsersTestPage> {
  List<Map<String, dynamic>> users = [
    {'id': 1, 'name': 'Gabriel'},
    {'id': 2, 'name': 'Nivaldo'},
    {'id': 3, 'name': 'Leonardo'},
    {'id': 4, 'name': 'Nicolas'},
    {'id': 5, 'name': 'Rafael'},
    {'id': 6, 'name': 'Urubu'},
  ];

  void editUser(int userId) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Editar usuário $userId')),
    );
  }

  void deleteUser(int userId) {
    setState(() {
      users.removeWhere((user) => user['id'] == userId);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Usuário $userId excluído')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 36, 110),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 36, 110),
        title: const Text(
          'Usuários',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: users.isEmpty
          ? const Center(
              child: Text(
                'Nenhum usuário encontrado',
                style: TextStyle(color: Colors.white),
              ),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  color: Colors.black87,
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    title: Text(
                      user['name'],
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blueAccent),
                          onPressed: () => editUser(user['id']),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.redAccent),
                          onPressed: () => deleteUser(user['id']),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
