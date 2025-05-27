*&---------------------------------------------------------------------*
*& Report ZG4IB_R_PROGRAM_2
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : İrem Büyüksaraç
*& 📚 Subject : Variable Declaration (Değişken Tanımlama)
*& 📅 Date    : 18.02.2025
*&---------------------------------------------------------------------*

REPORT zg4ib_r_program_2.

" 🔢 Integer variable declarations for calculation (Hesaplama için tamsayı değişken bildirimleri)
DATA : gv_number1 TYPE i, " First number for calculation (Hesaplama için birinci sayı)
       gv_number2 TYPE i, " Second number for calculation (Hesaplama için ikinci sayı)
       gv_result  TYPE i.  " Result variable to store sum (Toplamı saklamak için sonuç değişkeni)

" ➕ Assigning values to variables (Değişkenlere değer atama)
gv_number1 = 2. " Assign value 2 to first number (Birinci sayıya 2 değerini ata)
gv_number2 = 3. " Assign value 3 to second number (İkinci sayıya 3 değerini ata)
gv_result = gv_number1 + gv_number2. " Calculate sum of two numbers (İki sayının toplamını hesapla)

" 🖨️ Display calculation results (Hesaplama sonuçlarını görüntüle)
WRITE : / 'Result = ', gv_result, " Display result with label (Sonucu etiketiyle görüntüle)
        ' gv_number2 = ', gv_number2, " Display second number (İkinci sayıyı görüntüle)
        ' gv_number1 = ', gv_number1. " Display first number (Birinci sayıyı görüntüle)

" 🎯 Call subroutine for VAT calculation (KDV hesaplama alt rutinini çağır)
PERFORM calculate_vat. " Execute VAT calculation subroutine (KDV hesaplama alt rutinini yürüt)

RETURN. " End main program execution (Ana program yürütmesini sonlandır)

" 📊 Subroutine for VAT calculation (KDV hesaplama alt rutini)
FORM calculate_vat.
  " 🔢 Local variable declaration inside subroutine (Alt rutin içinde yerel değişken bildirimi)
  DATA : lv_number3 TYPE i. " Local variable for additional calculation (Ek hesaplama için yerel değişken)

  lv_number3 = 7. " Assign value 7 to local variable (Yerel değişkene 7 değerini ata)

  " 🖨️ Display local variable value (Yerel değişken değerini görüntüle)
  WRITE : / 'Local Variable lv_number3 = ', lv_number3. " Show local variable content (Yerel değişken içeriğini göster)

ENDFORM. " End of subroutine (Alt rutinin sonu)

"---------------------------------------------------------------------
" 📋 Program Features (Program Özellikleri):
"---------------------------------------------------------------------
" ✅ Variable Declaration: Demonstrates how to declare integer variables
"    (Değişken Bildirimi: Tamsayı değişkenlerinin nasıl bildirileceğini gösterir)
" ✅ Value Assignment: Shows how to assign values to variables
"    (Değer Atama: Değişkenlere değer atama işlemini gösterir)
" ✅ Arithmetic Operations: Performs basic addition operation
"    (Aritmetik İşlemler: Temel toplama işlemi gerçekleştirir)
" ✅ Output Statements: Uses WRITE statement to display results
"    (Çıktı İfadeleri: Sonuçları görüntülemek için WRITE ifadesini kullanır)
" ✅ Subroutine Usage: Demonstrates PERFORM and FORM statements
"    (Alt Rutin Kullanımı: PERFORM ve FORM ifadelerini gösterir)
" ✅ Local Variables: Shows scope of variables in subroutines
"    (Yerel Değişkenler: Alt rutinlerde değişken kapsamını gösterir)
"---------------------------------------------------------------------

"💡 Advanced Examples (Gelişmiş Örnekler):
"---------------------------------------------------------------------
"📚 Subject Description: Variable Declaration and Basic Operations
"   (Konu Açıklaması: Değişken Bildirimi ve Temel İşlemler)
"   This program demonstrates fundamental concepts of ABAP programming
"   including variable declaration, value assignment, arithmetic operations,
"   and subroutine usage with local variable scope.
"   (Bu program, değişken bildirimi, değer atama, aritmetik işlemler ve
"   yerel değişken kapsamı ile alt rutin kullanımı dahil olmak üzere
"   ABAP programlamanın temel kavramlarını gösterir.)

"🔧 Usage Format (Kullanım Formatı):
"   DATA : variable_name TYPE data_type.
"   variable_name = value.
"   PERFORM subroutine_name.
"   FORM subroutine_name.
"   ENDFORM.

"💻 Example ABAP Code (Örnek ABAP Kodu):
"   DATA : lv_price TYPE p DECIMALS 2,
"          lv_tax_rate TYPE p DECIMALS 2,
"          lv_total TYPE p DECIMALS 2.
"   lv_price = 100.
"   lv_tax_rate = '0.18'.
"   lv_total = lv_price * ( 1 + lv_tax_rate ).
"   WRITE : / 'Total with VAT:', lv_total.

"🎓 Learning Achievement Mindmap (Öğrenme Başarı Zihin Haritası):
"---------------------------------------------------------------------
"                    🎯 ABAP Variable Declaration
"                           (ABAP Değişken Bildirimi)
"                                    |
"              ┌─────────────────────┼─────────────────────┐
"              │                     │                     │
"      🔢 Data Types            📝 Declaration         🎭 Operations
"    (Veri Tipleri)            (Bildirim)            (İşlemler)
"           │                        │                     │
"    ┌──────┼──────┐          ┌──────┼──────┐       ┌──────┼──────┐
"    │      │      │          │      │      │       │      │      │
"   TYPE   TYPE   TYPE       DATA   PARA   LOCAL    +/-    *//    WRITE
"    i      c      p        keyword METERS  vars   (Aritm) (Çarp) (Çıktı)
" (Integer)(Char)(Packed)  (Anahtar)(Param)(Yerel)
"
"🏆 Achievements (Başarılar):
"• ✅ Variable declaration mastery (Değişken bildirimi ustalığı)
"• ✅ Data type understanding (Veri türü anlayışı)
"• ✅ Arithmetic operations (Aritmetik işlemler)
"• ✅ Subroutine implementation (Alt rutin uygulaması)
"• ✅ Local scope comprehension (Yerel kapsam anlayışı)
"• ✅ Output formatting skills (Çıktı biçimlendirme becerileri)
"---------------------------------------------------------------------
