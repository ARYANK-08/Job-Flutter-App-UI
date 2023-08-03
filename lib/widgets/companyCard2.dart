import 'package:flutter/material.dart';
import 'package:job/models/company.dart';
import 'package:job/widgets/constants.dart';

class CompanyCard2 extends StatelessWidget {
  final Company? company;

  CompanyCard2({this.company});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      margin: EdgeInsets.only(right: 15.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: company?.image != null
                      ? DecorationImage(
                          image: AssetImage(company!.image!),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
              ),
              Spacer(),
             Text(
  company?.sallary ?? 'N/A',
  style: kitleStyle,
),
            ],
          ),
          SizedBox(height: 15.0),
          Text(
            company!.job!,
            style: kitleStyle,
          ),
          SizedBox(height: 15.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: company!.companyName!,
                  style: kSubtitleStyle,
                ),
                TextSpan(
                  text: "  •  ",
                  style: kSubtitleStyle,
                ),
                TextSpan(
                  text: company!.city!,
                  style: kSubtitleStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: company!.tag!
                .map(
                  (e) => Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 10.0),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 5.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                      border: Border.all(
                        color: kBlack,
                        width: 0.5,
                      ),
                    ),
                    child: Text(
                      e,
                      style: kSubtitleStyle.copyWith(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
