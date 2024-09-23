## Inner Join  - İç Birleşim

![JoinInnerOrnek1](images/JoinInnerOrnek1.png)



- Her iki tabloda eşleşmiş olan kayıtları getirir.
- Örneğin bir öğrencinin iletişim bilgisi yoksa, o öğrencinin bilgileri gelmez.
- Eşleşme ON kelimesinde verilen kolonlara göre yapılır. Birden fazla kolon birleştirilebilir.
- Eğer birleştime \textbf{=} ile yapılıyorsa, equi-join diyede adlandırılır.

![JoinInnerOrnek1](images/JoinInnerOrnek1.png)



``` sql
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI INNER JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
```




