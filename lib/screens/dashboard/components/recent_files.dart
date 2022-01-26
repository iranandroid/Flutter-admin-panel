import 'package:admin/models/RecentFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  final String title;
  final bool isShowTitle;

  const RecentFiles({
    Key? key,
    required this.title,
    required this.isShowTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: sideColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: isShowTitle,
            child: Text(
              this.title,
              style: TextStyle(fontFamily: "IranYekan", fontSize: 15),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text(
                    "شناسه فاکتور",
                    style: Theme.of(context).textTheme.subtitle2?.apply(
                          fontFamily: "IranYekan",
                        ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "تاریخ صدور",
                    style: Theme.of(context).textTheme.subtitle2?.apply(
                          fontFamily: "IranYekan",
                        ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "قابل پرداخت(ریال)",
                    style: Theme.of(context).textTheme.subtitle2?.apply(
                          fontFamily: "IranYekan",
                        ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "وضعیت",
                    style: Theme.of(context).textTheme.subtitle2?.apply(
                          fontFamily: "IranYekan",
                        ),
                  ),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataColumn createHeader(BuildContext context, String item) {
  return DataColumn(
    label: Text(
      item,
      style: Theme.of(context).textTheme.subtitle2?.apply(
            fontFamily: "IranYekan",
          ),
    ),
  );
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                fileInfo.title!,
                style: TextStyle(fontFamily: "IranYekan"),
              ),
            ),
          ],
        ),
      ),
      DataCell(Text(
        fileInfo.date!,
        style: TextStyle(fontFamily: "IranYekan"),
      )),
      DataCell(Text(
        fileInfo.size!,
        style: TextStyle(fontFamily: "IranYekan"),
      )),
      DataCell(Text(
        fileInfo.status!,
        style: TextStyle(fontFamily: "IranYekan"),
      )),
    ],
  );
}
