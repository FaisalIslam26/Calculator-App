import 'package:calculatorapp/main.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String? input = '', value = '';

  Home({
    Key? key,
    this.input,
    this.value,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int value1, pressEqual = 0, pressKey = 0, operator = 0, activity = 0;
  late int value2, result;
  late double dresult;

  String resultfinal = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black54,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Calculator",
          style: TextStyle(fontSize: 32),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      input,
                      style: TextStyle(fontSize: 38, color: Colors.white),
                    ),
                    Text(
                      resultfinal,
                      style: TextStyle(fontSize: 38, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ), //1st row

          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }

                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }

                        pressKey = 1;
                        print("Press 1");
                        input = input + '1';
                        print("Input is $input");
                        value = value + '1';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.purple.shade700,
                            borderRadius: BorderRadius.circular(20)),
                        alignment: Alignment.center,
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        pressKey = 1;
                        print("Press 2");
                        input = input + '2';
                        print("Input is $input");
                        value = value + '2';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(20)),
                        alignment: Alignment.center,
                        child: Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }

                        pressKey = 1;
                        print("Press 3");
                        input = input + '3';
                        print("Input is $input");
                        value = value + '3';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber.shade900,
                            borderRadius: BorderRadius.circular(20)),
                        alignment: Alignment.center,
                        child: Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        pressKey = 1;
                        input = input + '+';
                        value1 = int.parse(value);
                        value = '';
                        print("value1 = $value1");
                      });
                    },
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (input.length == 16) {
                            input = '';
                            operator = 0;
                            resultfinal = '';
                            value2 != null;
                            value1 != null;
                            pressEqual = 0;
                            pressKey = 0;
                          }
                          activity = 1;
                          if (pressEqual == 1 && value2 != null) {
                            input = '';
                            value = '';
                            operator = 0;
                            pressEqual = 0;
                            pressKey = 0;
                            resultfinal = '';
                            value2 != null;
                          }

                          if (pressKey == 1 && operator == 0) {
                            input = input + '+';
                            value1 = int.parse(value);
                            operator = operator + 1;
                            value = '';
                            print('value 1 = $value1');
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          child: Text(
                            "+",
                            style: TextStyle(color: Colors.white, fontSize: 32),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //2nd row
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }
                        pressKey = 1;
                        print("Press 4");
                        input = input + '4';
                        print("Input is $input");
                        value = value + '4';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.purple.shade700,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "4",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }
                        pressKey = 1;
                        print("Press 5");
                        input = input + '5';
                        print("Input is $input");
                        value = value + '5';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "5",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }
                        pressKey = 1;
                        print("Press 6");
                        input = input + '6';
                        print("Input is $input");
                        value = value + '6';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade900,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "6",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        activity = 2;
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }

                        if (pressKey == 1 && operator == 0) {
                          input = input + '-';
                          value1 = int.parse(value);
                          operator = operator + 1;
                          value = '';
                          print('value 1 = $value1');
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange.shade400,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(Icons.remove, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //3rd row
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }
                        pressKey = 1;
                        print("Press 7");
                        input = input + '7';
                        print("Input is $input");
                        value = value + '7';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.purple.shade700,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "7",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }
                        pressKey = 1;
                        print("Press 8");
                        input = input + '8';
                        print("Input is $input");
                        value = value + '8';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "8",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }
                        pressKey = 1;
                        print("Press 9");
                        input = input + '9';
                        print("Input is $input");
                        value = value + '9';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.amber.shade900,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "9",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        activity = 3;
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }

                        if (pressKey == 1 && operator == 0) {
                          input = input + 'X';
                          value1 = int.parse(value);
                          operator = operator + 1;
                          value = '';
                          print('value 1 = $value1');
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue.shade900,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "X",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //4th row
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }
                        pressKey = 0;
                        print("Press 0");
                        input = input + '0';
                        print("Input is $input");
                        value = value + '0';
                        print("Value is $value");
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.purple.shade700,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "0",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        input = '';
                        value = '';
                        operator = 0;
                        pressEqual = 0;
                        pressKey = 0;
                        resultfinal = '';
                        value2 != null;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "C",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        pressEqual = 1;

                        value2 = int.parse(value);
                        print("value2 is $value2");

                        if (activity == 1) {
                          result = value1 + value2;
                          print("result is $result");
                          resultfinal = "=" + result.toString();
                        }
                        if (activity == 2) {
                          result = value1 - value2;
                          print("result is $result");
                          resultfinal = "=" + result.toString();
                        }
                        if (activity == 3) {
                          result = value1 * value2;
                          print("result is $result");
                          resultfinal = "=" + result.toString();
                        }

                        if (activity == 4) {
                          if (value2 == 0) {
                            resultfinal = '= infinity';
                          }

                          if (value2 != 0) {
                            dresult = value1 / value2;

                            resultfinal = "=" + dresult.toStringAsFixed(2);
                            print("Result is $resultfinal");
                          }
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "=",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (input.length == 16) {
                          input = '';
                          operator = 0;
                          resultfinal = '';
                          value2 != null;
                          value1 != null;
                          pressEqual = 0;
                          pressKey = 0;
                        }
                        activity = 4;
                        if (pressEqual == 1 && value2 != null) {
                          input = '';
                          value = '';
                          operator = 0;
                          pressEqual = 0;
                          pressKey = 0;
                          resultfinal = '';
                          value2 != null;
                        }

                        if (pressKey == 1 && operator == 0) {
                          input = input + '/';
                          value1 = int.parse(value);
                          operator = operator + 1;
                          value = '';
                          print('value 1 = $value1');
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.red.shade900,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "/",
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //5th row
        ],
      ),
    );
  }
}
