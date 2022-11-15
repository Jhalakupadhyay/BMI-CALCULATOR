import 'package:bmi/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ResultPage.dart';

const Color Active = Color(0xFF0D47A1);
const Color Inactive = Color(0xFF1D1E33);
Color male = Inactive;
Color female = Inactive;
double h = 5.3;
int age = 1;
int wgt = 25;

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  //MALE CARD DESIGN ----------------------------------
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        update(1);
                      });
                    },
                    child: design1(
                      colour: male,
                      card: IconCard(
                        icon: FontAwesomeIcons.mars,
                        text: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  //FEMALE CARD DESIGN ---------------------------------
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        update(2);
                      });
                    },
                    child: design1(
                      colour: female,
                      card: IconCard(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              //SLIDER DESIGN ----------------------------------------------
              child: Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'HEIGHT',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF8D8E98),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      h.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 80.0,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Ft',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.white10,
                        thumbColor: Colors.red,
                        overlayColor: Colors.red[100]?.withAlpha(66),
                        trackHeight: 5.0,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                          elevation: 5.0,
                          pressedElevation: 25.0,
                        )),
                    child: Slider(
                      value: h,
                      onChanged: (double newValue) {
                        setState(() {
                          h = newValue;
                        });
                      },
                      min: 3.0,
                      max: 8.0,
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  //AGE DESIGN -------------------------------------------
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                            fontSize: 80.0,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                  elevation: 15.0,
                                  backgroundColor: Colors.blue,
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) age--;
                                    });
                                  },
                                  child: Center(
                                      child: const Icon(
                                    Icons.remove,
                                    size: 35.0,
                                    color: Colors.white,
                                  ))),
                              const SizedBox(width: 45.0),
                              FloatingActionButton(
                                backgroundColor: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  //WEIGHT DESIGN -------------------------------------------
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
                          wgt.toString(),
                          style: const TextStyle(
                            fontSize: 80.0,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                  elevation: 15.0,
                                  backgroundColor: Colors.blue,
                                  onPressed: () {
                                    setState(() {
                                      if (wgt > 20) wgt--;
                                    });
                                  },
                                  child: Center(
                                      child: const Icon(
                                    Icons.remove,
                                    size: 35.0,
                                    color: Colors.white,
                                  ))),
                              const SizedBox(width: 45.0),
                              FloatingActionButton(
                                backgroundColor: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    wgt++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SUBMIT BUTTON DESIGN --------------------------------
          GestureDetector(
            onTap: () {
              if (male != Inactive || female != Inactive) {
                if(wgt>50 && age < 5)
                {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Select a valid age"),
                  ));
                }
                else
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultPage();
                        },
                      ),
                    );
                  }
              }
              else
                {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Select gender"),
                  ));
                }
            },
            child: Expanded(
              child: Container(
                width: 400.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  IconCard({required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class design1 extends StatelessWidget {
  design1({required this.colour, required this.card});
  final Color colour;
  final Widget card;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
        child: card,
      ),
    );
  }
}

update(int color) {
  if (color == 1 && male == Inactive) {
    male = Active;
    female = Inactive;
  } else if (color == 1 && male == Active) {
    male = Inactive;
  } else if (color == 2 && female == Inactive) {
    female = Active;
    male = Inactive;
  } else {
    female = Inactive;
  }
}

double CALCULATION(double height, int weight) {
  double l = height * 0.304;
  double bmi = weight / (l * l);
  return bmi;
}

String RESULTMEN(double result) {
  if (result >= 25) {
    return "OVERWEIGHT";
  } else if (result > 18.5) {
    return "NORMAL";
  } else {
    return "UNDERWEIGHT";
  }
}
String RESULTWOMEN(double result) {
  if (result >= 29) {
    return "OVERWEIGHT";
  } else if (result > 18.5) {
    return "NORMAL";
  } else {
    return "UNDERWEIGHT";
  }
}

Suggestion(double result) {
  if (result >= 25) {
    return "You have higher than normal body weight, try and exercise more";
  } else if (result > 18.5) {
    return "You have normal body weight , Good Job!";
  } else {
    return "You have lower than normal body weight ,Eat a bit more";
  }
}
String RESULT(double result)
{
  if(male == Active)
    {
      return RESULTMEN(result);
    }
  else
    {
      return RESULTWOMEN(result);
    }
}
