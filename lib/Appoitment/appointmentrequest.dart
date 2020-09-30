import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  final int index;
  final String doctorimage;
  final String fee;
  final String degree;
  final String exp;
  const Request(
      {Key key, this.index, this.doctorimage, this.fee, this.degree, this.exp})
      : super(key: key);
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.index,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 28,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(widget.doctorimage)),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.2,
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 11,
                      bottom: 10,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Degree: " + widget.degree,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Experience: " + widget.exp,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Fees: " + widget.fee,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          color: Color(0xFFFF69B4),
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 6,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                child: RaisedButton(
                    child: Text("Make an appointment"), onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
