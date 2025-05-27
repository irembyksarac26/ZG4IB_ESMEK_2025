*&---------------------------------------------------------------------*
*& Report ZG4IB_R_PROGRAM_9
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : İrem Büyüksaraç
*& 📚 Subject : If - Elseif - Else Structure Calculator (If - Elseif - Else Yapısı Hesap Makinesi)
*& 📅 Date    : 13.03.2025
*&---------------------------------------------------------------------*

REPORT zg4ib_r_program_9.

" 🔢 Input parameters for calculator (Hesap makinesi için giriş parametreleri)
PARAMETERS : p_numbr1 TYPE i,              " First number input (İlk sayı girişi)
             p_opname TYPE c LENGTH 1,      " Operation symbol input (İşlem sembolü girişi)
             p_numbr2 TYPE i.               " Second number input (İkinci sayı girişi)

" 🧮 Result variable declaration (Sonuç değişkeni bildirimi)
DATA gv_result TYPE i.                       " Variable to store calculation result (Hesaplama sonucunu depolamak için değişken)

" ➕ Addition operation check (Toplama işlemi kontrolü)
IF p_opname = '+'.
  gv_result = p_numbr1 + p_numbr2.         " Perform addition (Toplama işlemini gerçekleştir)
  " ➖ Subtraction operation check (Çıkarma işlemi kontrolü)
ELSEIF p_opname = '-'.
  gv_result = p_numbr1 - p_numbr2.         " Perform subtraction (Çıkarma işlemini gerçekleştir)
  " ✖ Multiplication operation check (Çarpma işlemi kontrolü)
ELSEIF p_opname = '*'.
  gv_result = p_numbr1 * p_numbr2.         " Perform multiplication (Çarpma işlemini gerçekleştir)
  " ➗ Division operation check (Bölme işlemi kontrolü)
ELSEIF p_opname = '/'.
  gv_result = p_numbr1 / p_numbr2.         " Perform division (Bölme işlemini gerçekleştir)
  " ❌ Invalid operation handling (Geçersiz işlem kontrolü)
ELSE.
  WRITE : / '❌ Invalid Operation Code (Hatalı İşlem Kodu)'.  " Display error message (Hata mesajını görüntüle)
ENDIF.

" 📊 Display calculation result (Hesaplama sonucunu görüntüle)
WRITE : / '🔢 Result = (Sonuç = )', gv_result.

*&---------------------------------------------------------------------*
*& 📋 Program Features Description (Program Özellikleri Açıklaması)
*&---------------------------------------------------------------------*
*& This program creates a simple calculator using If-Elseif-Else structure
*& (Bu program If-Elseif-Else yapısını kullanarak basit hesap makinesi oluşturur)
*& Features (Özellikler):
*& - Takes two numbers and one operation as input (İki sayı ve bir işlem girişi alır)
*& - Supports basic arithmetic operations (+, -, *, /) (Temel aritmetik işlemleri destekler)
*& - Validates operation input and shows error for invalid operations (İşlem girişini doğrular ve geçersiz işlemler için hata gösterir)
*& - Displays calculation result (Hesaplama sonucunu görüntüler)
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): IF-ELSEIF-ELSE Structure
*&---------------------------------------------------------------------*
*& Subject Description (Konu Açıklaması):
*& IF-ELSEIF-ELSE is a conditional control structure that allows executing
*& different code blocks based on different conditions. It provides multiple
*& condition checking in a single structure.
*& (IF-ELSEIF-ELSE farklı koşullara göre farklı kod bloklarının çalıştırılmasını
*& sağlayan koşullu kontrol yapısıdır. Tek yapıda çoklu koşul kontrolü sağlar.)
*&
*& Subject Usage Format (Konu Kullanım Formatı):
*& IF condition1.
*&   " code block 1
*& ELSEIF condition2.
*&   " code block 2
*& ELSEIF condition3.
*&   " code block 3
*& ELSE.
*&   " default code block
*& ENDIF.
*&
*& Example ABAP Code (Örnek ABAP Kodu):
*& DATA: lv_grade TYPE i VALUE 85.
*& IF lv_grade >= 90.
*&   WRITE: / 'Grade A - Excellent (Not A - Mükemmel)'.
*& ELSEIF lv_grade >= 80.
*&   WRITE: / 'Grade B - Good (Not B - İyi)'.
*& ELSEIF lv_grade >= 70.
*&   WRITE: / 'Grade C - Average (Not C - Ortalama)'.
*& ELSEIF lv_grade >= 60.
*&   WRITE: / 'Grade D - Pass (Not D - Geçer)'.
*& ELSE.
*&   WRITE: / 'Grade F - Fail (Not F - Başarısız)'.
*& ENDIF.
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& 🧠 MINDMAP FORMAT: What I Achieved & Learned (Başardıklarım ve Öğrendiklerim)
*&---------------------------------------------------------------------*
*&           IF-ELSEIF-ELSE Calculator Program (IF-ELSEIF-ELSE Hesap Makinesi Programı)
*&                                      |
*&         ┌────────────────────────────┼────────────────────────────┐
*&         |                           |                            |
*&    🔧 Control Structures        📊 Data Handling            🖥 User Interface
*&    (Kontrol Yapıları)          (Veri İşleme)              (Kullanıcı Arayüzü)
*&         |                           |                            |
*&    ┌────┴────┐               ┌─────┴─────┐               ┌──────┴──────┐
*&    |         |               |           |               |             |
*& IF-ELSEIF  ELSE           INTEGER    OPERATIONS       PARAMETERS    OUTPUT
*& (Koşullar) (Varsayılan)  (Tam Sayı) (İşlemler)       (Parametreler)(Çıktı)
*&
*& Key Achievements (Ana Başarılar):
*& ✅ Conditional Logic Implementation (Koşullu Mantık Uygulaması)
*& ✅ Multiple Condition Handling (Çoklu Koşul İşleme)
*& ✅ Error Validation (Hata Doğrulama)
*& ✅ User Input Processing (Kullanıcı Girişi İşleme)
*& ✅ Arithmetic Operations (Aritmetik İşlemler)
*& ✅ Clean Code Structure (Temiz Kod Yapısı)
*&---------------------------------------------------------------------*
