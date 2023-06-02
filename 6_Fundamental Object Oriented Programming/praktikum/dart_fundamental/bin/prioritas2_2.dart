class Course {
  String judul = "";
  String deskripsi = "";
  Course(this.judul, this.deskripsi);
}

class Siswa {
  String nama = "";
  String kelas = "";
  List<Course> courses = [];

  Siswa(this.nama, this.kelas);

  void tambahCourse(Course course) {
    courses.add(course);
  }

  void menghapusCourse(Course course) {
    courses.remove(course);
  }

  void lihatcourse() {
    for (Course course in courses) {
      print(course.judul);
    }
  }
}

void main(List<String> args) {
  //membuat sebuah course
  print("Course yang diikuti : ");
  Course kelas1 = Course("Pemrograman Perangkat Bergerak", "Android");
  Course kelas2 = Course("Bahasa Asing", "Bahasa Mandarin");
  Course kelas3 = Course("Pemrograman web 2", "Codeigniter");

  //membuat identitas siswa
  Siswa siswa =  Siswa("Intan", "Kelas 12");

  //siswa menambahkan 2 course
  siswa.tambahCourse(kelas1);
  siswa.tambahCourse(kelas2);
  siswa.tambahCourse(kelas3);

  //menghapus salah kelas ke 2
  siswa.menghapusCourse(kelas2);

  //menampilkan course yang ready
  siswa.lihatcourse();
}
