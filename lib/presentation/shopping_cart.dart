import 'package:flutter/material.dart';
import 'lista_productos.dart';

class Carrito extends StatefulWidget {
  final List<ListaProductos> _cart;
  const Carrito(this._cart, {super.key});

  @override
  // ignore: no_logic_in_create_state
  State<Carrito> createState() => _CarritoState(_cart);
}

class _CarritoState extends State<Carrito> {  int sub2 = 0;
  _CarritoState(this._cart);
  int _itemCount0 = 0;
  int _itemCount1 = 0;
  int _itemCount2 = 0;
  int _itemCount3 = 0;
  int _itemCount4 = 0;

  int sub = 0;
  int sub1 = 0;

  int sub3 = 0;
  int sub4 = 0;

  int iva = 0;
  int iva1 = 0;
  int iva2 = 0;
  int iva3 = 0;
  int iva4 = 0;
  int Ivatotal = 0;

  int total= 0;

  final List<ListaProductos> _cart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Detalles del Producto',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          hoverColor: Colors.orangeAccent,
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.deepOrange,
        ),
      ),
      body: GestureDetector(
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _cart.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 200,
                                  height: 200,
                                  child: Image(
                                    image:
                                    NetworkImage(_cart[index].imageURL.toString()),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      height: 50.0,
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 8, right: 8),
                                            child: Center(
                                              child: Text(
                                                _cart[index].nombre.toString(),
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                _cart[index].precio.toString(),
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                          )
                                        ],
                                      ),
                                    )),
                                if (index == 0) ...[
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: <Widget>[
                                      Text('SUBTOTAL: $sub'),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[Text('IVA: $iva')],
                                  ),
                                  Align(
                                    child: Text(
                                      'CANTIDAD: $_itemCount0',
                                      textAlign: TextAlign.start,

                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: mas0,
                                            icon: const Icon(Icons.add))
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: menos0,
                                            icon: const Icon(Icons.remove))
                                      ],
                                    ),
                                  )
                                ],
                                if (index == 1) ...[
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: <Widget>[
                                      Text('SUBTOTAL: $sub1'),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[Text('IVA: $iva1')],
                                  ),
                                  Align(
                                    child: Text(
                                      'CANTIDAD: $_itemCount1',
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: mas1,
                                            icon: const Icon(Icons.add))
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: menos1,
                                            icon: const Icon(Icons.remove))
                                      ],
                                    ),
                                  )
                                ],
                                if (index == 2) ...[
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: <Widget>[
                                      Text('SUBTOTAL: $sub2'),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[Text('IVA: $iva2')],
                                  ),
                                  Align(
                                    child: Text(
                                      'CANTIDAD: $_itemCount2',
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: mas2,
                                            icon: const Icon(Icons.add))
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: menos2,
                                            icon: const Icon(Icons.remove))
                                      ],
                                    ),
                                  )
                                ],
                                if (index == 3) ...[
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: <Widget>[
                                      Text('SUBTOTAL: $sub3'),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[Text('IVA: $iva3')],
                                  ),
                                  Align(
                                    child: Text(
                                      'CANTIDAD: $_itemCount3',
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: mas3,
                                            icon: const Icon(Icons.add))
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: menos3,
                                            icon: const Icon(Icons.remove))
                                      ],
                                    ),
                                  )
                                ],
                                if (index == 4) ...[
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: <Widget>[
                                      Text('subtotal: $sub4'),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[Text('IVA: $iva4')],
                                  ),
                                  Align(
                                    child: Text(
                                      'CANTIDAD: $_itemCount4',
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: mas4,
                                            icon: const Icon(Icons.add))
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: menos4,
                                            icon: const Icon(Icons.remove))
                                      ],
                                    ),
                                  )
                                ],
                              ],
                            )
                          ],
                        ),
                      );

                    },

                  ),
                  Column(
                    children: <Widget>[
                      Text("Total: $total"),
                      Text("Ivatotal: $Ivatotal")
                    ],
                  )
                ],
              ))),
    );
  }

  void mas0() {
    setState(() {
      _itemCount0 = _itemCount0 + 1;
      sub = sub + 40000;
      iva = (sub * 19 / 100) as int;
      total = total + 40000;
      Ivatotal = Ivatotal + 7600;
    });
  }

  void menos0() {
    setState(() {
      _itemCount0 = _itemCount0 - 1;
      sub = sub - 40000;
      iva = (sub * 19 / 100) as int;
      total = total + 40000;
      Ivatotal = Ivatotal + 7600;
    });
  }

  void mas1() {
    setState(() {
      _itemCount1 = _itemCount1 + 1;
      sub1 = sub1 + 16000;
      iva1 = (sub1 * 19 / 100) as int;
      total = total + 16000;
      Ivatotal = Ivatotal + 3040;
    });
  }

  void menos1() {
    setState(() {
      _itemCount1 = _itemCount1 - 1;
      sub1 = sub1 - 16000;
      iva1 = (sub1 * 19 / 100) as int;
      total = total + 16000;
      Ivatotal = Ivatotal + 3040;
    });
  }

  void mas2() {
    setState(() {
      _itemCount2 = _itemCount2 + 1;
      sub2 = sub2 + 11500;
      iva2 = (sub2 * 19 / 100) as int;
      total = total + 11500;
      Ivatotal = Ivatotal + 2185;
    });
  }

  void menos2() {
    setState(() {
      _itemCount2 = _itemCount2 - 1;
      sub2 = sub2 - 11500;
      iva2 = (sub2 * 19 / 100) as int;
      total = total + 11500;
      Ivatotal = Ivatotal + 2185;
    });
  }

  void mas3() {
    setState(() {
      _itemCount3 = _itemCount3 + 1;
      sub3 = sub3 + 8900;
      iva3 = (sub3 * 19 / 100) as int;
      total = total + 8900;
      Ivatotal = Ivatotal + 1191;
    });
  }

  void menos3() {
    setState(() {
      _itemCount3 = _itemCount3 - 1;
      sub3 = sub3 - 8900;
      iva3 = (sub3 * 19 / 100) as int;
      total = total + 8900;
      Ivatotal = Ivatotal + 1191;
    });
  }

  void mas4() {
    setState(() {
      _itemCount4 = _itemCount4 + 1;
      sub4 = sub4 + 17000;
      iva4 = (sub4 * 19 / 100) as int;
      total = total + 17000;
      Ivatotal = Ivatotal + 3230;
    });
  }

  void menos4() {
    setState(() {
      _itemCount4 = _itemCount4 - 1;
      sub4 = sub4 - 17000;
      iva4 = (sub4 * 19 / 100) as int;
      total = total + 17000;
      Ivatotal = Ivatotal + 3230;
    });
  }


}