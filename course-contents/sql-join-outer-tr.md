

\subsection{Outer Join  - Dış Birleşim}

\begin{frame}{Outer Join  Dıştan Birleşim}

\begin{itemize}
\item Belirtilen tablodan tüm satırları getirirken, diğer tablodan sadece eşleşen satırları getirir.
\item Bir tablonun satırlarının tümü getirilir.
\item Bu tablo "LEFT, RIGHT, FULL" ile belirtilir.
\item Eşleşmeyen özellik bilgileri için NULL getirilir.
\item Örneğin İletişim bilgisi olmayan öğrenciler için iletişim bilgisi kısmında NULL yazılacaktır.
\end{itemize}

\includegraphics[height=0.3\textheight,keepaspectratio]{images/JoinLeftOrnek1}
\includegraphics[height=0.3\textheight,keepaspectratio]{images/JoinRightOrnek1}
\includegraphics[height=0.3\textheight,keepaspectratio]{images/JoinOuterOrnek1}

\end{frame}





  \begin{frame}{Outer Join Left  -  Dıştan Birleşim Soldan}

        \includegraphics[width=\textwidth,height=0.8\textheight,keepaspectratio]{images/JoinLeftOrnek1}
  \end{frame}

\begin{frame}[fragile]
\frametitle{Join Left  - Soldan İç Birleşim - SQL Ornek}
\begin{lstlisting}[language=SQL,caption=LEFT JOIN ANSI SQL 92,label=SQL-left-join-syntax-ansi-sql-92]
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI LEFT INNER JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
\end{lstlisting}
\end{frame}


  \begin{frame}{Outer Join Right  - Dıştan Birleşim Sağdan}

        \includegraphics[width=\textwidth,height=0.8\textheight,keepaspectratio]{images/JoinRightOrnek1}
  \end{frame}

\begin{frame}[fragile]
\frametitle{Outer Join Right  - Dıştan Birleşim Sağdan - SQL Ornek}
\begin{lstlisting}[language=SQL,caption=RIGHT JOIN ANSI SQL 92,label=SQL-right-join-syntax-ansi-sql-92]
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI RIGHT JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
\end{lstlisting}
\end{frame}




  \begin{frame}{Full Outer Join  - Ful Dış Birleşim}

        \includegraphics[width=\textwidth,height=0.8\textheight,keepaspectratio]{images/JoinOuterOrnek1}
  \end{frame}

\begin{frame}[fragile]
\frametitle{Full Outer Join   - Full Dıştan Birleşim - SQL Ornek}
\begin{lstlisting}[language=SQL,caption=FULL OUTER JOIN ANSI SQL 92,label=SQL-full-outer-join-syntax-ansi-sql-92]
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI FULL OUTER JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
\end{lstlisting}
\end{frame}
