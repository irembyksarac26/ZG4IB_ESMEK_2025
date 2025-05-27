*&---------------------------------------------------------------------*
*& Report ZG4IB_R_PROGRAM_7
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : İrem Büyüksaraç
*& 📚 Subject : Parameter Usage (Parametre Kullanımı)
*& 📅 Date    : 06.06.2025
*&---------------------------------------------------------------------*

REPORT zg4ib_r_program_7.

" 📝 Parameter declarations for user input (Kullanıcı girişi için parametre bildirimleri)
PARAMETERS : p_fname TYPE c LENGTH 20, " First name parameter, 20 characters (İlk isim parametresi, 20 karakter)
             p_lname TYPE c LENGTH 20. " Last name parameter, 20 characters (Soyisim parametresi, 20 karakter)
" p_fname (ilk_isim_parametresi)
" p_lname (soyisim_parametresi)

" 🔗 Data declaration for concatenated full name (Birleştirilmiş tam isim için veri bildirimi)
DATA : gv_fullnm TYPE c LENGTH 40. " Full name variable, 40 characters (Tam isim değişkeni, 40 karakter)
" gv_fullnm (tam_isim_değişkeni)

" 👋 Welcome message output (Hoş geldin mesajı çıktısı)
WRITE : / '🎉 Hello', p_fname, p_lname. " Greeting with first and last name (İlk isim ve soyisimle karşılama)
" Output welcome message (hoşgeldin_mesajı_çıktısı)

" 🔗 Concatenate first and last name with space separator (İlk isim ve soyismi boşluk ayırıcısıyla birleştir)
CONCATENATE p_fname p_lname INTO gv_fullnm SEPARATED BY ' '. " Join names with space (İsimleri boşlukla birleştir)
" Concatenation operation (birleştirme_işlemi)

" 📋 Display full name result (Tam isim sonucunu göster)
WRITE : / '👤 Full Name =', gv_fullnm. " Output complete name (Tam ismi çıktı ver)
" Output full name (tam_isim_çıktısı)

RETURN. " 🔚 End program execution (Program yürütmesini sonlandır)
" Program termination (program_sonlandırması)

*&---------------------------------------------------------------------*
*& 📊 Program Features Description (Program Özellikleri Açıklaması)
*&---------------------------------------------------------------------*
" ✨ This program demonstrates parameter usage in ABAP (Bu program ABAP'ta parametre kullanımını gösterir)
" 🎯 Features: User input handling, string concatenation, formatted output (Özellikler: Kullanıcı girişi işleme, string birleştirme, biçimli çıktı)
" 💡 Purpose: Educational example for learning PARAMETERS and CONCATENATE (Amaç: PARAMETERS ve CONCATENATE öğrenmek için eğitim örneği)
" 🔧 Techniques: Parameter declaration, data concatenation, WRITE statements (Teknikler: Parametre bildirimi, veri birleştirme, WRITE ifadeleri)

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): PARAMETERS
*&---------------------------------------------------------------------*
*& 📖 Subject Description:
*& PARAMETERS statement creates input fields on selection screen for user interaction
*& (PARAMETERS ifadesi kullanıcı etkileşimi için seçim ekranında giriş alanları oluşturur)
*&
*& 📝 Usage Format:
*& PARAMETERS : parameter_name TYPE data_type LENGTH length_value.
*& (PARAMETERS : parametre_adı TYPE veri_tipi LENGTH uzunluk_değeri.)
*&
*& 💻 Example ABAP Code:
*& PARAMETERS : p_empid   TYPE n LENGTH 8,     " Employee ID (Çalışan ID)
*&              p_salary  TYPE p DECIMALS 2,   " Salary amount (Maaş tutarı)
*&              p_active  TYPE c LENGTH 1.     " Active status (Aktif durumu)
*&
*& 🔍 English Explanation: Creates input parameters for employee data entry
*& 🔍 Turkish Explanation: Çalışan veri girişi için girdi parametreleri oluşturur

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): CONCATENATE
*&---------------------------------------------------------------------*
*& 📖 Subject Description:
*& CONCATENATE statement joins multiple string values into single string variable
*& (CONCATENATE ifadesi birden fazla string değerini tek string değişkeninde birleştirir)
*&
*& 📝 Usage Format:
*& CONCATENATE source1 source2 INTO target SEPARATED BY 'separator'.
*& (CONCATENATE kaynak1 kaynak2 INTO hedef SEPARATED BY 'ayırıcı'.)
*&
*& 💻 Example ABAP Code:
*& DATA : gv_email TYPE string.
*& CONCATENATE p_fname '.' p_lname '@company.com' INTO gv_email.
*& WRITE : / 'Email Address:', gv_email.
*&
*& 🔍 English Explanation: Creates email address by joining name components
*& 🔍 Turkish Explanation: İsim bileşenlerini birleştirerek e-posta adresi oluşturur

*&---------------------------------------------------------------------*
*& 📊 MINDMAP FORMAT: What I Achieved & Learned (Başardıklarım ve Öğrendiklerim)
*&---------------------------------------------------------------------*
*&           Parameter Usage Program (Parametre Kullanım Programı)
*&                                |
*&         ┌──────────────────────┼──────────────────────┐
*&         |                     |                      |
*&    📝 Parameters            🔗 Concatenation       🖨 Output
*&    (Parametreler)         (Birleştirme)          (Çıktı)
*&         |                     |                      |
*&    ┌────┴────┐           ┌────┴────┐           ┌────┴────┐
*&    |         |           |         |           |         |
*& p_fname   p_lname    CONCATENATE  SEPARATED   WRITE   Formatting
*& (ilkisim) (soyisim)  (birleştir)  BY (ile)    (yaz)   (biçimlendirme)
*&
*& 🎯 Key Achievements (Ana Başarılar):
*& • ✅ User input handling with PARAMETERS (PARAMETERS ile kullanıcı girişi işleme)
*& • ✅ String concatenation with SEPARATED BY (SEPARATED BY ile string birleştirme)
*& • ✅ Formatted output with emoji enhancement (Emoji geliştirmeli biçimli çıktı)
*& • ✅ Variable naming conventions (Değişken adlandırma kuralları)
*& • ✅ Comment documentation in dual language (İki dilli yorum belgelendirmesi)
