*&---------------------------------------------------------------------*
*& Report ZG4IB_R_PROGRAM_4
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : İrem Büyüksaraç
*& 📚 Subject : Data Types - String - Char - Boolean (Veri Tipleri - String - Char - Boolean)
*& 📅 Date    : 27.02.2025
*&---------------------------------------------------------------------*
REPORT zg4ib_r_program_4.

" 🔤 Character data type declarations with different methods (Farklı yöntemlerle karakter veri türü bildirimleri)
DATA : gv_name1 TYPE c LENGTH 20. " Character variable with TYPE and LENGTH (TYPE ve LENGTH ile karakter değişkeni)
" gv_name1 (isim1)

DATA : gv_name2(20) TYPE c. " Character variable with length in parentheses (Parantez içinde uzunlukla karakter değişkeni)
" gv_name2 (isim2)

DATA : gv_name3 TYPE c LENGTH 30 VALUE 'Emine İrem Büyüksaraç'. " Character variable with initial value (Başlangıç değeri ile karakter değişkeni)
" gv_name3 (isim3)

" 🅰️ Fixed length character variable (Sabit uzunluklu karakter değişkeni)
DATA : gv_char TYPE c LENGTH 3. " 3-character fixed length variable (3 karakterlik sabit uzunluk değişkeni)
" gv_char (karakter)

" 📝 String data type for variable length text (Değişken uzunluklu metin için string veri türü)
DATA : gv_string TYPE string. " Dynamic string variable (Dinamik string değişkeni)
" gv_string (metin)

" 🔢 Numeric data types (Sayısal veri türleri)
DATA : gv_postcode TYPE n LENGTH 5. " Numeric field for postal code (Posta kodu için sayısal alan)
" gv_postcode (posta_kodu)

DATA : gv_phone TYPE n LENGTH 14. " Numeric field for phone number (Telefon numarası için sayısal alan)
" gv_phone (telefon)

" 📅 Date and time data types (Tarih ve zaman veri türleri)
DATA : gv_date TYPE d. " Date field in YYYYMMDD format (YYYYAAGG formatında tarih alanı)
" gv_date (tarih)

DATA : gv_date_yest TYPE d. " Date field for yesterday (Dün için tarih alanı)
" gv_date_yest (tarih_dun)

DATA : gv_date_tomr TYPE d. " Date field for tomorrow (Yarın için tarih alanı)
" gv_date_tomr (tarih_yarın)

" ⏰ Time data type (Zaman veri türü)
DATA : gv_time TYPE t. " Time field in HHMMSS format (SSDDSS formatında zaman alanı)
" gv_time (zaman)

" 📋 Assigning values to character variables (Karakter değişkenlerine değer atama)
gv_name1 = 'İrem Büyüksaraç'. " Assign first name (İlk ismi ata)
gv_name2 = 'Gülşen Büyüksaraç'. " Assign second name (İkinci ismi ata)

" 🖨️ Display character variables (Karakter değişkenlerini görüntüle)
WRITE : / 'gv_name1 = ', gv_name1. " Output first name variable (İlk isim değişkenini çıktı al)
WRITE : / 'gv_name2 = ', gv_name2. " Output second name variable (İkinci isim değişkenini çıktı al)
WRITE : / 'gv_name3 = ', gv_name3. " Output third name variable with initial value (Başlangıç değeri ile üçüncü isim değişkenini çıktı al)

" 🔤 Working with fixed character field (Sabit karakter alanı ile çalışma)
gv_char = 'ABC'. " Assign 3 characters to char field (Karakter alanına 3 karakter ata)
WRITE : / 'gv_char = ', gv_char. " Display character field (Karakter alanını görüntüle)

" 📝 Working with string variable (String değişkeni ile çalışma)
gv_string = 'ABAP PROGRAMMING LEARNING'. " Assign text to string variable (String değişkenine metin ata)
WRITE : / 'gv_string = ', gv_string. " Display string content (String içeriğini görüntüle)

" 🏠 Working with postal code (Posta kodu ile çalışma)
gv_postcode = '26120'. " Assign postal code (Posta kodunu ata)
WRITE : / 'gv_postcode = ', gv_postcode. " Display postal code (Posta kodunu görüntüle)

" 📱 Working with phone number (Telefon numarası ile çalışma)
gv_phone = '00905376048336'. " Assign phone number (Telefon numarasını ata)
WRITE : / 'gv_phone = ', gv_phone. " Display phone number (Telefon numarasını görüntüle)

" 📅 Working with dates (Tarihler ile çalışma)
gv_date = '20250227'. " Assign specific date (Belirli tarihi ata)
WRITE : / 'gv_date = ', gv_date. " Display assigned date (Atanan tarihi görüntüle)

gv_date_yest = sy-datum - 1. " Calculate yesterday's date using system date (Sistem tarihini kullanarak dünün tarihini hesapla)
WRITE : / 'gv_date_yest = ', gv_date_yest. " Display yesterday's date (Dünün tarihini görüntüle)

gv_date_tomr = sy-datum + 1. " Calculate tomorrow's date using system date (Sistem tarihini kullanarak yarının tarihini hesapla)
WRITE : / 'gv_date_tomr = ', gv_date_tomr. " Display tomorrow's date (Yarının tarihini görüntüle)

" ⏰ Working with time (Zaman ile çalışma)
gv_time = sy-uzeit. " Get current system time (Mevcut sistem zamanını al)
WRITE : / 'gv_time = ', gv_time. " Display current time (Mevcut zamanı görüntüle)

gv_time = '161005'. " Assign specific time 16:10:05 (Belirli zaman 16:10:05 ata)
WRITE : / 'gv_time = ', gv_time. " Display assigned time (Atanan zamanı görüntüle)

"---------------------------------------------------------------------
" 📋 Program Features (Program Özellikleri):
" • Character data types with different declaration methods (Farklı bildirim yöntemleri ile karakter veri türleri)
" • String handling for variable length text (Değişken uzunluklu metin için string işleme)
" • Numeric fields for codes and numbers (Kodlar ve sayılar için sayısal alanlar)
" • Date manipulation with system variables (Sistem değişkenleri ile tarih manipülasyonu)
" • Time handling and formatting (Zaman işleme ve biçimlendirme)
" • VALUE clause for initial assignments (Başlangıç atamaları için VALUE klozu)
" • System fields usage (sy-datum, sy-uzeit) (Sistem alanları kullanımı)
"---------------------------------------------------------------------

" 💡 Advanced Examples (Gelişmiş Örnekler):

" 📚 DATA Statement Description (DATA İfadesi Açıklaması):
" DATA statement is used to declare variables and internal structures in ABAP programs
" (DATA ifadesi ABAP programlarında değişkenleri ve dahili yapıları bildirmek için kullanılır)

" 📝 DATA Usage Format (DATA Kullanım Formatı):
" DATA : variable_name TYPE data_type LENGTH length_value VALUE 'initial_value'.
" DATA : değişken_adı TYPE veri_türü LENGTH uzunluk_değeri VALUE 'başlangıç_değeri'.

" 💻 Example ABAP Code for DATA Declaration (DATA Bildirimi için Örnek ABAP Kodu):
" DATA : gv_example TYPE c LENGTH 10 VALUE 'Test'.
" DATA : gv_number TYPE i VALUE 10.
