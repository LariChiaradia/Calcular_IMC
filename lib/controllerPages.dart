import 'package:calcular_imc/conteudo_pages.dart';
import 'package:calcular_imc/page_indicator.dart';
import 'package:flutter/material.dart';

class ControllerPages extends StatefulWidget {
  const ControllerPages({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ControllerPagesState();
  }
}

class _ControllerPagesState extends State<ControllerPages> {
  final _pageController = PageController();
  int _page = 0;

  final List _pagesList = [
    conteudoPages(
        'https://www.plasticadosonho.com.br/wp-content/uploads/2017/12/blog-06-como-calcular-o-imc.jpg',
        'Mais informações sobre o Calculo do IMC',
        'De acordo com o resultado de IMC também é possível prever o risco que cada pessoa tem de desenvolver doenças crônicas. Isto porque quanto maior é o valor do IMC, maior é a quantidade de gordura acumulada no corpo e maior o risco de doenças como pressão alta, diabetes e problemas cardíacos.Sempre que possível, o resultado de IMC deve ser interpretado por um nutricionista, que irá adequar a dieta de acordo com os objetivos de cada pessoa e seu histórico de saúde.'),
    dados(),
    const Text("Page 3"),
  ];

  void _changePage(bool nextPage) {
    if (_page < 2 && nextPage) {
      setState(() {
        _page++;
      });
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      setState(() {
        _page--;
      });
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Caculadora IMC"),
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return _pagesList[index];
        },
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => _changePage(false),
            iconSize: 60,
            icon: const Icon(Icons.arrow_circle_left_rounded),
          ),
          pageIndicator(_page == 0),
          pageIndicator(_page == 1),
          pageIndicator(_page == 2),
          IconButton(
            onPressed: () => _changePage(true),
            iconSize: 60,
            icon: const Icon(Icons.arrow_circle_right_rounded),
          ),
        ],
      ),
    );
  }
}
