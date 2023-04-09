import 'package:flutter/material.dart';

class TrendingsContentScreen extends StatefulWidget {
  const TrendingsContentScreen({Key? key}) : super(key: key);

  @override
  State<TrendingsContentScreen> createState() => _TrendingsContentScreenState();
}

class _TrendingsContentScreenState extends State<TrendingsContentScreen> {
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Wrap(
          spacing: 10,
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: (device.width - 40) / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: (device.width - 40) / 2,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Text(
                        'Web Development',
                        style: TextStyle(
                          color: Colors.orange.shade700,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hyper Text Markup Language',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text.rich(
                            TextSpan(
                                text: 'No. of videos: ',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                                children: [
                                  TextSpan(
                                    text: '21',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ]),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text.rich(
                            TextSpan(
                                text: 'Course time: ',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                                children: [
                                  TextSpan(
                                    text: '2.0 hours',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ]),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 26,
                                width: 26,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Shruti Codes',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    'Instructor',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
