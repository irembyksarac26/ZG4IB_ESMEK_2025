*&---------------------------------------------------------------------*
*& Report ZG4IB_R_PROGRAM_5
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : İrem Büyüksaraç
*& 📚 Subject : Mathematical Operations (Matematiksel İşlemler)
*& 📅 Date    : 04.03.2025
*&---------------------------------------------------------------------*

REPORT zg4ib_r_program_5.

" 🔢 Integer variable declaration for production quantity (Üretim miktarı için tamsayı değişken bildirimi)
DATA : gv_prod_qty TYPE i.
" gv_prod_qty (üretim_miktarı)

" 💰 Packed decimal variable declaration for precise production quantity (Hassas üretim miktarı için paketli ondalık değişken bildirimi)
DATA : gv_prod_qty_p TYPE p LENGTH 5 DECIMALS 3.
" gv_prod_qty_p (hassas_üretim_miktarı)

" 🧮 Mathematical operation variables declaration (Matematiksel işlem değişkenleri bildirimi)
DATA : gv_number1 TYPE i,              " First integer number (İlk tamsayı)
       gv_number2 TYPE i,              " Second integer number (İkinci tamsayı)
       gv_number3 TYPE p LENGTH 5 DECIMALS 3,  " Result with decimals (Ondalıklı sonuç)
       gv_number4 TYPE p LENGTH 5 DECIMALS 3.  " Capacity calculation variable (Kapasite hesaplama değişkeni)

" ➗ Division operation with integer result (Tamsayı sonuçlu bölme işlemi)
gv_prod_qty = 100 / 3.                 " Integer division loses decimal part (Tamsayı bölme ondalık kısmı kaybeder)
WRITE : / '🔢 Integer Result = ', gv_prod_qty. " Display integer division result (Tamsayı bölme sonucunu göster)

" ➗ Division operation with decimal precision (Ondalık hassasiyetli bölme işlemi)
gv_prod_qty_p = 100 / 3.               " Packed decimal preserves decimal places (Paketli ondalık, ondalık basamakları korur)
WRITE : / '💰 Decimal Result = ', gv_prod_qty_p. " Display decimal division result (Ondalıklı bölme sonucunu göster)

" ➕ Addition operation setup (Toplama işlemi kurulumu)
gv_number1 = 2.                        " Assign first production unit (İlk üretim birimini ata)
gv_number2 = 3.                        " Assign second production unit (İkinci üretim birimini ata)
gv_number3 = gv_number1 + gv_number2.  " Calculate total production quantity (Toplam üretim miktarını hesapla)
WRITE : / '📊 Total Production Quantity (gv_number3) = ', gv_number3. " Display total production (Toplam üretimi göster)

" 🏭 Machine capacity calculations (Makine kapasitesi hesaplamaları)
gv_number4 = 10.                       " Initial machine production area (Başlangıç makine üretim alanı)
gv_number4 = gv_number4 + 1.          " Increment machine area by 1 (Makine alanını 1 artır)
WRITE : / '🔧 New Machine Production Area (gv_number4) = ', gv_number4. " Display new production area (Yeni üretim alanını göster)

" ✖️ Multiplication to double capacity (Kapasiteyi iki katına çıkarma çarpma işlemi)
gv_number4 = gv_number4 * 2.           " Double the production capacity (Üretim kapasitesini iki katına çıkar)
WRITE : / '⬆️ Production Capacity Doubled = ', gv_number4. " Display doubled capacity (İki katına çıkan kapasiteyi göster)

" ➗ Division to return to normal capacity (Normal kapasiteye dönmek için bölme işlemi)
gv_number4 = gv_number4 / 2.           " Return production capacity to normal (Üretim kapasitesini normale döndür)
WRITE : / '🔄 Production Capacity Returned to Normal = ', gv_number4. " Display normal capacity (Normal kapasiteyi göster)

"---------------------------------------------------------------------
" 📋 Program Features (Program Özellikleri):
" • Integer and packed decimal data type usage (Tamsayı ve paketli ondalık veri türü kullanımı)
" • Basic mathematical operations (+, -, *, /) (Temel matematiksel işlemler)
" • Precision handling in calculations (Hesaplamalarda hassasiyet yönetimi)
" • Production quantity and capacity management (Üretim miktarı ve kapasite yönetimi)
" • WRITE statement for output display (Çıktı gösterimi için WRITE komutu)
"---------------------------------------------------------------------

" 💡 Advanced Examples (Gelişmiş Örnekler):

" 📖 Subject Description (Konu Açıklaması):
" Mathematical operations in ABAP allow precise calculations using different data types.
" Integer operations truncate decimal values, while packed decimals maintain precision.
" (ABAP'ta matematiksel işlemler farklı veri türleri kullanarak hassas hesaplamalar yapmanızı sağlar.
" Tamsayı işlemleri ondalık değerleri keser, paketli ondalıklar hassasiyeti korur.)

" 📝 Usage Format (Kullanım Formatı):
" DATA: variable_name TYPE data_type.
" variable_name = operand1 operator operand2.
" WRITE: / 'Label', variable_name.

" 💻 Example ABAP Code (Örnek ABAP Kodu):
" DATA: lv_result TYPE p LENGTH 8 DECIMALS 2.
" lv_result = 1000 * 3.14 / 100.
" WRITE: / 'Calculated Value:', lv_result.

"---------------------------------------------------------------------
" 🧠 Mind Map - What I Achieved and Learned (Neler Başardım ve Öğrendim):
"
"                    📊 Mathematical Operations (Matematiksel İşlemler)
"                                      |
"              ┌─────────────────────────────────────────────────────┐
"              |                                                     |
"         🔢 Data Types                                      🧮 Operations
"    (Veri Türleri)                                        (İşlemler)
"              |                                                     |
"    ┌─────────────────┐                              ┌─────────────────────────┐
"    |                 |                              |           |             |
" Integer(i)    Packed Decimal(p)              Addition(+)  Multiplication(*)  Division(/)
" (Tamsayı)     (Paketli Ondalık)              (Toplama)    (Çarpma)          (Bölme)
"    |                 |                              |           |             |
" Loses         Maintains                    Simple      Capacity      Precision
" Decimals      Precision                    Math        Doubling      Handling
" (Ondalık      (Hassasiyet                 (Basit      (Kapasite     (Hassasiyet
" Kaybeder)     Korur)                      Matematik)   İki Katlama)  Yönetimi)
"
"         🎯 Key Learnings (Ana Öğrenmeler):
"         • Data type selection affects calculation precision (Veri türü seçimi hesaplama hassasiyetini etkiler)
"         • INTEGER truncates, PACKED preserves decimals (INTEGER keser, PACKED ondalıkları korur)
"         • Mathematical operators work consistently (Matematiksel operatörler tutarlı çalışır)
"         • WRITE statement formats output effectively (WRITE komutu çıktıyı etkili biçimlendirir)
"---------------------------------------------------------------------
