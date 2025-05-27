*&---------------------------------------------------------------------*
*& Report ZG4IB_R_PROGRAM_8
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : İrem Büyüksaraç
*& 📚 Subject : Conditional Statements - IF Structure - Calculator (Koşullu Yönlendirmeler - If Yapısı - Hesap Makinesi)
*& 📅 Date    : 13.03.2025
*&---------------------------------------------------------------------*

REPORT zg4ib_r_program_8.

" 🔢 Input parameters for calculator operations (Hesap makinesi işlemleri için giriş parametreleri)
PARAMETERS : p_num1 TYPE i,             " First number input (İlk sayı girişi)
             p_oper TYPE c LENGTH 1,    " Operation symbol input (İşlem sembolü girişi)
             p_num2 TYPE i.             " Second number input (İkinci sayı girişi)

" 📊 Result variable declaration (Sonuç değişkeni bildirimi)
DATA gv_result TYPE i.                    " Variable to store calculation result (Hesaplama sonucunu saklamak için değişken)

" ➕ Addition operation check (Toplama işlemi kontrolü)
IF p_oper = '+'.                          " Check if operation is addition (İşlem toplama mı kontrol et)
  gv_result = p_num1 + p_num2.            " Perform addition calculation (Toplama hesaplaması yap)
ENDIF.

" ➖ Subtraction operation check (Çıkarma işlemi kontrolü)
IF p_oper = '-'.                          " Check if operation is subtraction (İşlem çıkarma mı kontrol et)
  gv_result = p_num1 - p_num2.            " Perform subtraction calculation (Çıkarma hesaplaması yap)
ENDIF.

" ✖️ Multiplication operation check (Çarpma işlemi kontrolü)
IF p_oper = '*'.                          " Check if operation is multiplication (İşlem çarpma mı kontrol et)
  gv_result = p_num1 * p_num2.            " Perform multiplication calculation (Çarpma hesaplaması yap)
ENDIF.

" ➗ Division operation check (Bölme işlemi kontrolü)
IF p_oper = '/'.                          " Check if operation is division (İşlem bölme mi kontrol et)
  gv_result = p_num1 / p_num2.            " Perform division calculation (Bölme hesaplaması yap)
ENDIF.

" 🖨️ Display calculation result (Hesaplama sonucunu görüntüle)
WRITE : / 'Result = ', gv_result.         " Output the final result with label (Son sonucu etiketiyle çıktı ver)

*&---------------------------------------------------------------------*
*& Program Features (Program Özellikleri):
*& - Simple calculator with basic arithmetic operations (Temel aritmetik işlemlerle basit hesap makinesi)
*& - Uses IF statements for operation selection (İşlem seçimi için IF ifadeleri kullanır)
*& - Accepts two numbers and one operation symbol (İki sayı ve bir işlem sembolü kabul eder)
*& - Performs addition, subtraction, multiplication, division (Toplama, çıkarma, çarpma, bölme yapar)
*& - Displays formatted result output (Biçimlendirilmiş sonuç çıktısı görüntüler)
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& 💡 Advanced Examples (Gelişmiş Örnekler): IF Statements
*&---------------------------------------------------------------------*
*& Subject Description: IF statements are conditional structures that execute code blocks
*& based on logical conditions. They allow programs to make decisions and follow different
*& execution paths. (IF ifadeleri, mantıksal koşullara göre kod blokları çalıştıran koşullu
*& yapılardır. Programların karar vermesine ve farklı yürütme yolları izlemesine olanak sağlar.)
*&
*& Usage Format (Kullanım Formatı):
*& IF condition.
*&   " Code to execute when condition is true
*& ELSEIF another_condition.
*&   " Code for alternative condition
*& ELSE.
*&   " Code when no conditions are met
*& ENDIF.
*&
*& Example ABAP Code (Örnek ABAP Kodu):
*& DATA: lv_grade TYPE i VALUE 85.
*& IF lv_grade >= 90.
*&   WRITE: / 'Excellent! Grade A'.
*& ELSEIF lv_grade >= 80.
*&   WRITE: / 'Good! Grade B'.
*& ELSEIF lv_grade >= 70.
*&   WRITE: / 'Average! Grade C'.
*& ELSE.
*&   WRITE: / 'Needs Improvement!'.
*& ENDIF.
*&
*& English Explanation: This example demonstrates a grading system using nested IF-ELSEIF
*& statements to categorize student performance based on numerical scores.
*& Turkish Explanation: Bu örnek, sayısal puanlara göre öğrenci performansını kategorize
*& etmek için iç içe IF-ELSEIF ifadeleri kullanan bir notlama sistemi gösterir.
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& 📊 MINDMAP FORMAT: What I Achieved & Learned (Başardıklarım ve Öğrendiklerim)
*&---------------------------------------------------------------------*
*&           IF Statement Calculator Program (IF İfadeli Hesap Makinesi Programı)
*&                                    |
*&         ┌─────────────────────────┼─────────────────────────┐
*&         |                        |                         |
*&    🔢 Input Handling          🧮 Calculations           🖨️ Output Display
*&    (Giriş İşleme)           (Hesaplamalar)            (Çıktı Görüntüleme)
*&         |                        |                         |
*&    ┌────┴────┐              ┌────┴────┐               ┌────┴────┐
*&    |         |              |         |               |         |
*& Parameters  Data Types   IF Logic  Arithmetic      WRITE     Formatting
*& (Parametre) (Veri Tip)  (IF Mantık) (Aritmetik)   (YAZDIR)  (Biçimlendirme)
*&
*& Key Achievements (Ana Başarılar):
*& ✅ Mastered IF conditional statements (IF koşullu ifadelerinde uzmanlaştım)
*& ✅ Implemented basic calculator logic (Temel hesap makinesi mantığını uyguladım)
*& ✅ Used PARAMETERS for user input (Kullanıcı girişi için PARAMETERS kullandım)
*& ✅ Applied arithmetic operations in ABAP (ABAP'te aritmetik işlemleri uyguladım)
*& ✅ Structured program with proper commenting (Uygun yorum satırlarıyla program yapılandırdım)
*&---------------------------------------------------------------------*
