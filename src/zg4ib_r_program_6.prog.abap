*&---------------------------------------------------------------------*
*& Report ZG4IB_R_PROGRAM_6
*& 👨‍💻 Author  : İrem Büyüksaraç
*& 📚 Subject : String Operations (Metinsel İşlemler)
*& 📅 Date    : 06.03.2025
*&---------------------------------------------------------------------*
REPORT zg4ib_r_program_6.

" 📅 Variable declarations for date operations (Tarih işlemleri için değişken tanımları)
DATA : gv_date  TYPE d,                     " Date variable (Tarih değişkeni)
       gv_day   TYPE c LENGTH 2,            " Day variable, 2 characters (Gün değişkeni, 2 karakter)
       gv_month TYPE c LENGTH 2,            " Month variable, 2 characters (Ay değişkeni, 2 karakter)
       gv_year  TYPE c LENGTH 4.            " Year variable, 4 characters (Yıl değişkeni, 4 karakter)

" 🔤 String variable for formatted date (Biçimlendirilmiş tarih için string değişkeni)
DATA : gv_date2  TYPE c LENGTH 10.           " Formatted date string, 10 characters (Biçimlendirilmiş tarih string'i, 10 karakter)

" 🗓️ Assigning today's date value (Bugünün tarih değerini atama)
gv_date = '20250306'.                        " Setting date to March 6, 2025 (Tarihi 6 Mart 2025 olarak ayarlama)

" 🖨️ Display original date in different formats (Orijinal tarihi farklı formatlarda görüntüleme)
WRITE : / '📅 Today''s Date =', gv_date.     " Display date in YYYYMMDD format (Tarihi YYYYAAGG formatında görüntüle)
WRITE : / '📅 Today''s Date =', gv_date DD/MM/YYYY. " Display date in DD/MM/YYYY format (Tarihi GG/AA/YYYY formatında görüntüle)

" ✂️ Extracting day from date using substring operation (Tarihten günü substring işlemi ile çıkarma)
gv_day = gv_date+6(2).                       " Extract day (positions 6-7) (Günü çıkar (6-7 pozisyonları))
WRITE : / '📆 gv_day = ', gv_day.           " Display extracted day (Çıkarılan günü görüntüle)

" ✂️ Extracting month from date using substring operation (Tarihten ayı substring işlemi ile çıkarma)
gv_month = gv_date+4(2).                     " Extract month (positions 4-5) (Ayı çıkar (4-5 pozisyonları))
WRITE : / '📆 gv_month = ', gv_month.       " Display extracted month (Çıkarılan ayı görüntüle)

" ✂️ Extracting year from date using substring operation (Tarihten yılı substring işlemi ile çıkarma)
gv_year = gv_date+0(4).                      " Extract year (positions 0-3) (Yılı çıkar (0-3 pozisyonları))
WRITE : / '📆 gv_year = ', gv_year.         " Display extracted year (Çıkarılan yılı görüntüle)

" 🔗 First method: Using CONCATENATE statement for string joining (İlk yöntem: String birleştirme için CONCATENATE komutu kullanma)
CONCATENATE gv_day '/' gv_month '/' gv_year INTO gv_date2. " Combine date parts with separators (Tarih parçalarını ayırıcılarla birleştir)
WRITE : / '📅 Date Method 1 = ', gv_date2.  " Display concatenated date (Birleştirilmiş tarihi görüntüle)

" 🧹 Clear variable for second method (İkinci yöntem için değişkeni temizle)
CLEAR gv_date2.                              " Reset date2 variable to initial value (date2 değişkenini başlangıç değerine sıfırla)

" 🔗 Second method: Using string template with && operator (İkinci yöntem: && operatörü ile string şablonu kullanma)
gv_date2 = gv_day && '/' && gv_month && '/' && gv_year. " Modern concatenation method (Modern birleştirme yöntemi)
WRITE : / '📅 Date Method 2 = ', gv_date2.  " Display template-formatted date (Şablon-biçimlendirilmiş tarihi görüntüle)

" 💬 Alternative display method (commented out) (Alternatif görüntüleme yöntemi (yorumlanmış))
"WRITE : / '📅 Date Method 3 = ', gv_day, '/', gv_month, '/', gv_year. " Direct output method (Doğrudan çıktı yöntemi)

*&---------------------------------------------------------------------*
*& 📋 Program Features (Program Özellikleri):
*& • Date manipulation and substring operations (Tarih manipülasyonu ve substring işlemleri)
*& • String concatenation using CONCATENATE and && operators (CONCATENATE ve && operatörleri kullanarak string birleştirme)
*& • Variable clearing and reinitialization (Değişken temizleme ve yeniden başlatma)
*& • Multiple formatting methods for date display (Tarih görüntüleme için çoklu biçimlendirme yöntemleri)
*& • Substring extraction with offset and length parameters (Offset ve uzunluk parametreleri ile substring çıkarma)
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): String Operations
*&---------------------------------------------------------------------*
*& 📖 Subject Description: String operations in ABAP include substring extraction,
*& concatenation, splitting, and formatting operations for text manipulation.
*& (ABAP'ta string işlemleri substring çıkarma, birleştirme, bölme ve metin
*& manipülasyonu için biçimlendirme işlemlerini içerir.)
*&
*& 🔧 Usage Format:
*& - Substring: variable+offset(length)
*& - CONCATENATE: CONCATENATE str1 str2 str3 INTO result SEPARATED BY separator
*& - Template: result = str1 && separator && str2
*& - SPLIT: SPLIT source_string AT delimiter INTO var1 var2 var3
*&
*& 💻 Example ABAP Code:
*& DATA: lv_full_name TYPE string VALUE 'John Michael Smith',
*&       lv_first TYPE string,
*&       lv_middle TYPE string,
*&       lv_last TYPE string.
*&
*& SPLIT lv_full_name AT space INTO lv_first lv_middle lv_last.
*& WRITE: / 'First:', lv_first, / 'Middle:', lv_middle, / 'Last:', lv_last.
*&
*& 🌟 Advanced string operations allow for complex text processing, data formatting,
*& and user interface customization in enterprise applications.
*& (Gelişmiş string işlemleri, kurumsal uygulamalarda karmaşık metin işleme,
*& veri biçimlendirme ve kullanıcı arayüzü özelleştirmesine olanak tanır.)
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& 📊 MINDMAP FORMAT: String Operations Learning Journey
*&---------------------------------------------------------------------*
*&           String Operations (Metinsel İşlemler)
*&                         |
*&         ┌───────────────┼───────────────┐
*&         │               │               │
*&    Substring        Concatenation    Formatting
*&   Operations        (Birleştirme)   (Biçimlendirme)
*&   (Alt String)           |               |
*&         |          ┌─────┼─────┐    ┌────┼────┐
*&    ┌────┼────┐     │     │     │    │    │    │
*&    │    │    │  CONCAT  &&   SPLIT  DD/MM CLEAR
*&  Offset Length Extract (Birleş) (Böl) Format (Temiz)
*& (Konum)(Uzun)(Çıkar)
*&
*& 🎯 Key Achievements (Ana Başarılar):
*& • ✅ Mastered date substring extraction (Tarih substring çıkarma ustalığı)
*& • ✅ Learned multiple concatenation methods (Çoklu birleştirme yöntemleri öğrenme)
*& • ✅ Applied variable management techniques (Değişken yönetimi tekniklerini uygulama)
*& • ✅ Implemented formatted output displays (Biçimlendirilmiş çıktı görüntüleri uygulama)
*& • ✅ Understood string template operations (String şablonu işlemlerini anlama)
*&---------------------------------------------------------------------*
