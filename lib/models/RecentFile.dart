class RecentFile {
  final String? icon, title, date, size, status;

  RecentFile({this.icon, this.title, this.date, this.size, this.status});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "خرید کارت پستال عید",
    date: "01-03-2021",
    size: "3.5mb",
    status: "موفق",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "خرید کارت پستال عید",
    date: "27-02-2021",
    size: "19.0mb",
    status: "موفق",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "خرید کارت پستال عید",
    date: "23-02-2021",
    size: "32.5mb",
    status: "موفق",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "خرید کارت پستال عید",
    date: "21-02-2021",
    size: "3.5mb",
    status: "موفق",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "خرید کارت پستال عید",
    date: "23-02-2021",
    size: "2.5gb",
    status: "موفق",
  )
];
