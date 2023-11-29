import 'package:flutter/material.dart';
import 'package:tu_inventario_movil/view/Singin/cuentaterminada.dart';
import 'package:tu_inventario_movil/view/Singin/singin3.dart';

class PinView extends StatefulWidget {
  const PinView({super.key});

  @override
  State<PinView> createState() => _PinViewState();
}

class _PinViewState extends State<PinView> {
  List<String> lista = [".", ".", ".", "."];
  String pin = "";
  // ControlardorCustomer controlardorCustomer = Get.find();

  CrearPin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => cuentaCreada()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Pin de Seguridad",
            style: TextStyle(
                fontFamily: 'inter-semibold',
                fontSize: 17,
                color: Colors.black)),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            // size: 35,
          ),
          onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => singin3()),
            );
          }),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              child: const Center(
                child: Text(
                  "Crear el PIN de Seguridad con el que Iniciarás Sesión",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  color: lista[0] == "."
                      ? const Color.fromRGBO(240, 239, 245, 1)
                      : const Color.fromRGBO(64, 40, 252, 1),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  color: lista[1] == "."
                      ? const Color.fromRGBO(240, 239, 245, 1)
                      : const Color.fromRGBO(64, 40, 252, 1),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  color: lista[2] == "."
                      ? const Color.fromRGBO(240, 239, 245, 1)
                      : const Color.fromRGBO(64, 40, 252, 1),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  color: lista[3] == "."
                      ? const Color.fromRGBO(240, 239, 245, 1)
                      : const Color.fromRGBO(64, 40, 252, 1),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "1";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "1";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "1";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "1";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "4";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "4";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "4";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "4";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "4",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "7";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "7";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "7";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "7";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "7",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "2";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "2";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "2";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "2";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "2",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "5";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "5";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "5";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "5";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "5",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "8";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "8";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "8";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "8";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "8",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "0";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "0";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "0";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "0";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "0",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "3";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "3";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "3";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "3";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "3",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "6";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "6";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "6";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "6";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "6",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[0] == ".") {
                              lista[0] = "9";
                            } else {
                              if (lista[1] == ".") {
                                lista[1] = "9";
                              } else {
                                if (lista[2] == ".") {
                                  lista[2] = "9";
                                } else {
                                  if (lista[3] == ".") {
                                    lista[3] = "9";
                                    pin = lista[0] +
                                        lista[1] +
                                        lista[2] +
                                        lista[3];
                                    CrearPin();
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                      child: Text(
                        "9",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ubuntu-medium',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: AlignmentDirectional.center,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        // width: MediaQuery.of(context).size.width * 0.0055
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: IconButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      icon: Icon(Icons.backspace_outlined, size: 20),
                      onPressed: () {
                        setState(
                          () {
                            if (lista[3] != ".") {
                              lista[3] = ".";
                            } else {
                              if (lista[2] != ".") {
                                lista[2] = ".";
                              } else {
                                if (lista[1] != ".") {
                                  lista[1] = ".";
                                } else {
                                  if (lista[0] != ".") {
                                    lista[0] = ".";
                                  }
                                }
                              }
                            }
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
