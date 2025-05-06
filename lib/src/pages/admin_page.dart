import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 36, 110),
      appBar: AppBar(
  backgroundColor: const Color.fromARGB(255, 14, 36, 110),
  leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.pop(context),
  ),
  title: Column(
    mainAxisSize: MainAxisSize.min,
    children: const [
      Text(
        'Página de Administração',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),
      ),
      Text(
        '(ADMIN)',
        style: TextStyle(
          fontSize: 14,
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  ),
  centerTitle: true,
),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          color: Color(0xFF031c5f),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _buildCard(
                title: 'Usuários',
                image: 'assets/images/usuarios.png',
                onTap: () {
                  Navigator.of(context).pushNamed('/usuarios');
                },
              ),
              _buildCard(
                title: 'Relatório',
                image: 'assets/images/relatorio.png',
                onTap: () {
                  Navigator.of(context).pushNamed('/relatorio');
                },
              ),
              _buildCard(
                title: 'Configurações',
                image: 'assets/images/configuracoes.png',
                onTap: () {
                  Navigator.of(context).pushNamed('/configuracoes');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String image,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 6,
              offset: Offset(2, 4),
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
