*&---------------------------------------------------------------------*
*& Report ZG4IB_R_PROGRAM_1
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : İrem Büyüksaraç
*& 📚 Subject : Text Definition (Metin Tanımlama)
*& 📅 Date    : 27.05.2025
*&---------------------------------------------------------------------*

REPORT zg4ib_r_program_1.

" 📝 Simple text output statement (Basit metin çıktı komutu)
WRITE 'Learning ABAP'. " Display learning message (Öğrenme mesajını görüntüle)

" 📄 Multiple text output with line break (Satır atlayarak çoklu metin çıktısı)
WRITE /:'Text Definition' , 'Variable Definition'. " Display two topics with new line (İki konuyu yeni satırda görüntüle)

*&---------------------------------------------------------------------*
*& Program Features (Program Özellikleri):
*& - Basic text output using WRITE statement (WRITE komutu ile temel metin çıktısı)
*& - Single line text display (Tek satır metin görüntüleme)
*& - Multiple text output with line break (Satır atlayarak çoklu metin çıktısı)
*& - Simple ABAP syntax demonstration (Basit ABAP sözdizimi gösterimi)
*&---------------------------------------------------------------------*

" 💡 Advanced Examples (Gelişmiş Örnekler):

*&---------------------------------------------------------------------*
*& WRITE Statement Description:
*& The WRITE statement is used to output data to the screen in ABAP.
*& It can display variables, literals, and system fields.
*& (WRITE komutu ABAP'de ekrana veri çıktısı almak için kullanılır.
*& Değişkenler, sabitler ve sistem alanlarını görüntüleyebilir.)
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& WRITE Usage Format:
*& WRITE 'text'          - Simple text output
*& WRITE / 'text'        - Text with new line
*& WRITE : 'text1', 'text2' - Multiple texts in same line
*& WRITE /: 'text1', 'text2' - Multiple texts with new line
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& Example ABAP Code with WRITE:
*&---------------------------------------------------------------------*
" 🎯 Advanced WRITE examples (Gelişmiş WRITE örnekleri)
DATA: lv_name TYPE string VALUE 'John', " String variable for name (İsim için string değişkeni)
      lv_age  TYPE i VALUE 25.           " Integer variable for age (Yaş için tamsayı değişkeni)

WRITE: / 'Advanced Text Examples:', " Header text (Başlık metni)
       / 'Name:', lv_name,           " Display name variable (İsim değişkenini görüntüle)
       / 'Age:', lv_age,             " Display age variable (Yaş değişkenini görüntüle)
       / 'Current Date:', sy-datum,  " Display system date (Sistem tarihini görüntüle)
       / 'Current Time:', sy-uzeit.  " Display system time (Sistem saatini görüntüle)

*&---------------------------------------------------------------------*
*& 🧠 Mind Map - What I Achieved and Learned (Neler Başardım ve Öğrendim):
*&---------------------------------------------------------------------*
*&
*&                    ZG4IB_R_PROGRAM_1
*&                          |
*&         ┌────────────────┼────────────────┐
*&         │                │                │
*&    📝 WRITE           🔤 TEXT          📊 OUTPUT
*&    STATEMENT         HANDLING         FORMATTING
*&         │                │                │
*&    ├─ Basic syntax    ├─ String        ├─ Line breaks
*&    ├─ Single output   │  literals      ├─ Multiple texts
*&    ├─ Multi output    ├─ Text          ├─ Screen display
*&    └─ Line control    │  definition    └─ Data presentation
*&                       └─ Message
*&                          display
*&
*& 🎯 Key Achievements (Ana Başarılar):
*& • Created first ABAP program (İlk ABAP programını oluşturdum)
*& • Used WRITE statement effectively (WRITE komutunu etkili kullandım)
*& • Applied text formatting (Metin biçimlendirme uyguladım)
*& • Learned basic ABAP syntax (Temel ABAP sözdizimini öğrendim)
*&
*& 🚀 Skills Developed (Geliştirilen Yetenekler):
*& • Text output techniques (Metin çıktı teknikleri)
*& • Program structure understanding (Program yapısı anlayışı)
*& • ABAP comment usage (ABAP yorum kullanımı)
*& • Code documentation (Kod dokümantasyonu)
*&---------------------------------------------------------------------*
