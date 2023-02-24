# Kullanıcıdan kaynak dosya yolunu alın
echo "Lütfen kaynak dosyanın yolunu girin: "
read kaynak

# Kaynak dosyanın mevcut olup olmadığını kontrol edin
if [ ! -f "$kaynak" ]; then
  echo "Hata: $kaynak bulunamadı!"
  exit 1
fi

# Kullanıcıdan hedef dizin yolunu alın
echo "Lütfen hedef dizinin yolunu girin: "
read hedef

# Hedef dizinin mevcut olup olmadığını kontrol edin
if [ ! -d "$hedef" ]; then
  echo "Hata: $hedef bulunamadı!"
  exit 1
fi

# Kullanıcıdan seçenekleri alın
echo "Lütfen seçeneği girin: kopyala (k), taşı (t) veya sil (s)"
read secenek

# Seçeneklere göre işlem yapın
case $secenek in
  k|K)
       cp "$kaynak" "$hedef"
       echo "Dosya başarıyla kopyalandı!"
       ;;
  t|T)
       mv "$kaynak" "$hedef"
       echo "Dosya başarıyla taşındı!"
       ;;
  s|S)
       rm "$kaynak"
       echo "Dosya başarıyla silindi!"
       ;;
  *) 
     echo "Hata: yanlış seçenek girildi!"
     exit 1
     ;;
esac

exit 0
