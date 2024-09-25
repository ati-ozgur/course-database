## Inner Join  - İç Birleşim

![join-inner-example1-tr](images/join-inner-example1-tr.png)



- Her iki tabloda eşleşmiş olan kayıtları getirir.
- Örneğin bir öğrencinin iletişim bilgisi yoksa, o öğrencinin bilgileri gelmez.
- Eşleşme ON kelimesinde verilen kolonlara göre yapılır. Birden fazla kolon birleştirilebilir.
- Eğer birleştime \textbf{=} ile yapılıyorsa, equi-join diyede adlandırılır.

![join-inner-example1-tr](images/join-inner-example1-en.png)



``` sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI INNER JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```




