# Ödev 1 - Vücut Kitle İndeksi Hesaplama Uygulaması

Patika & FMSS Bilişim iOS Bootcamp 1. Ödev - İki UIViewController arası veri transferi

### Uygulama Tanıtımı

- Uygulama iki adet ekrandan oluşuyor:
  1. `Birinci ekran`, kullanıcıdan alınan bilgilerin ve `vücut kitle indeksi`nin gösterildiği ekran.
  2. `İkinci ekran`, kullanıcıdan veri alınan ekran.
- İlk ekranda bulunan `Bilgilerinizi Girin` butonu ile veri giriş ekranı açılıyor.

- Veri giriş ekranında kullanıcıdan çeşitli bilgiler alınıyor ve iki adet buton ile çeşitli olaylar tetikleniyor:
  1. `Ad Soyad`, veri girişi için `textField` kullanılıyor ve zorunlu bir alan.
  2. `Boy` ve `Kilo` alanları. (Tutarlı veri girişi için `slider` kullanıldı.)
  3. `Tema` alanı. Farklı bir `component` kullanmak için tercih ettim. Amacı ana ekranda kullanılan renklerin, kullanıcı tarafından seçilmesini sağlamak.
  4. `Geri` butonu, birinci ekrana veri göndermeden ikinci ekranı kapatıyor.
  5. `Kaydet` butonu, forma girilen bilgileri `closure` kullanarak birinci ekrana gönderiyor.
- Birinci ekran:
  1. Burada kullanıcıdan alınan bilgiler gösteriliyor.
  2. Ayrıca alınan bilgilere göre hesaplanan `vücut kitle indeksi` ile değerin hangi kategoride olduğu gösteriliyor.
  3. Kullanıcı dilerse tekrar hesaplama yapabiliyor.

### Ekran Görüntüleri
![mainScreen](https://github.com/FMSS-IOS-Patika-Bootcamp/homework-1-sametkoyuncu/blob/main/screenshoots/3.%20bmi%20result%20screen.png)

![secendScreen](https://github.com/FMSS-IOS-Patika-Bootcamp/homework-1-sametkoyuncu/blob/main/screenshoots/1.%20blank%20form.png)

[Daha fazlası için tıklayınız](https://github.com/FMSS-IOS-Patika-Bootcamp/homework-1-sametkoyuncu/tree/main/screenshoots)
