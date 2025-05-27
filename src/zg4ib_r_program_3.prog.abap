*&---------------------------------------------------------------------*
*& Report ZG4IB_R_PROGRAM_3
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : İrem Büyüksaraç (Converted by GitHub User)
*& 📚 Subject : Data Types (Veri Tipleri)
*& 📅 Date    : 20.02.2025
*&---------------------------------------------------------------------*

REPORT zg4ib_r_program_3.

" 🔢 Integer data type declarations (Tam sayı veri türü bildirimleri)
DATA : gv_i TYPE i, " Integer variable i (Tam sayı değişkeni i)
       gv_j TYPE i. " Integer variable j (Tam sayı değişkeni j)

" 🌊 Float data type declaration (Ondalık sayı veri türü bildirimi)
DATA : gv_f TYPE f. " Float variable for decimal numbers (Ondalık sayılar için float değişkeni)

" 📦 Packed decimal data type declaration (Paketlenmiş ondalık veri türü bildirimi)
DATA : gv_p TYPE p LENGTH 5 DECIMALS 2. " Packed decimal with 5 digits, 2 decimal places (5 haneli, 2 ondalık basamaklı paketlenmiş ondalık)

" ⚡ Value assignments (Değer atamaları)
gv_i = 22. " Assign value 22 to integer variable i (i tam sayı değişkenine 22 değerini ata)

gv_j = 25. " Assign value 25 to integer variable j (j tam sayı değişkenine 25 değerini ata)

gv_f = '0.123456789'. " Assign decimal value to float variable (Float değişkenine ondalık değer ata)

gv_p = '12345.12'. " Assign packed decimal value (Paketlenmiş ondalık değer ata)

" 🖨️ Output statements for displaying values (Değerleri görüntülemek için çıktı komutları)
WRITE :/ 'integer gv_i = ', gv_i, ' integer gv_j = ', gv_j. " Display both integer variables (Her iki tam sayı değişkenini görüntüle)

WRITE : / 'float gv_f = ', gv_f. " Display float variable value (Float değişken değerini görüntüle)

WRITE : / 'packed gv_p = ', gv_p. " Display packed decimal value (Paketlenmiş ondalık değerini görüntüle)

"---------------------------------------------------------------------
" 📋 Program Features (Program Özellikleri):
" • Integer (i) data type usage for whole numbers (Tam sayılar için integer veri türü kullanımı)
" • Float (f) data type for decimal calculations (Ondalık hesaplamalar için float veri türü)
" • Packed decimal (p) for precise financial calculations (Hassas finansal hesaplamalar için paketlenmiş ondalık)
" • Variable declaration and initialization (Değişken bildirimi ve başlatma)
" • WRITE statement for output formatting (Çıktı biçimlendirmesi için WRITE komutu)
"---------------------------------------------------------------------

" 💡 Advanced Examples (Gelişmiş Örnekler):

" 📖 Subject Description:
" Data types in ABAP define how data is stored and processed in memory.
" Integer (i) stores whole numbers, Float (f) stores decimal numbers with scientific notation,
" Packed decimal (p) stores numbers in compressed format for financial calculations.
" (ABAP'ta veri tipleri, verilerin bellekte nasıl saklandığını ve işlendiğini tanımlar.
" Integer tam sayıları, Float bilimsel gösterimle ondalık sayıları,
" Packed decimal finansal hesaplamalar için sıkıştırılmış formatta sayıları saklar.)

" 🎯 Usage Format (Kullanım Formatı):
" DATA : variable_name TYPE data_type [LENGTH n] [DECIMALS d].
" variable_name = value.
" WRITE : / 'Label', variable_name.

" 💻 Example ABAP Code:
DATA : lv_amount TYPE p LENGTH 8 DECIMALS 2, " Financial amount variable (Finansal tutar değişkeni)
       lv_count  TYPE i,                      " Counter variable (Sayaç değişkeni)
       lv_rate   TYPE f.                      " Interest rate variable (Faiz oranı değişkeni)

lv_amount = '1234567.89'. " Set amount value (Tutar değerini ayarla)
lv_count = 100.           " Set counter value (Sayaç değerini ayarla)
lv_rate = '0.0525'.       " Set interest rate 5.25% (Faiz oranını %5.25 olarak ayarla)

WRITE : / 'Amount: ', lv_amount,    " Display amount (Tutarı görüntüle)
        / 'Count: ', lv_count,      " Display count (Sayacı görüntüle)
        / 'Rate: ', lv_rate.        " Display rate (Oranı görüntüle)

"---------------------------------------------------------------------
" 🧠 Mind Map - What I Accomplished & Learned (Neler Başardım & Öğrendim):
"
"                    📊 DATA TYPES (VERİ TİPLERİ)
"                           |
"          ┌────────────────┼────────────────┐
"          │                │                │
"      🔢 INTEGER         🌊 FLOAT        📦 PACKED
"     (TAM SAYI)       (ONDALIKLI)      (PAKETLENMIŞ)
"          │                │                │
"    ┌─────┴─────┐    ┌─────┴─────┐    ┌─────┴─────┐
"    │           │    │           │    │           │
" ✅ Whole    ✅ Fast   ✅ Scientific ✅ Precise  ✅ Length  ✅ Decimals
" Numbers    Calc.    Notation    Calc.     Control   Control
" (Tam       (Hızlı   (Bilimsel   (Hassas   (Uzunluk  (Ondalık
" Sayılar)   Hesap)   Gösterim)   Hesap)    Kontrol)  Kontrol)
"
"        🎯 KEY LEARNINGS (TEMEL ÖĞRENMELER):
"        ├── Variable Declaration (Değişken Bildirimi)
"        ├── Memory Optimization (Bellek Optimizasyonu)
"        ├── Data Precision (Veri Hassasiyeti)
"        └── Output Formatting (Çıktı Biçimlendirme)
"---------------------------------------------------------------------
