

\subsection{Inner Join  - İç Birleşim}



  \begin{frame}{Inner Join  - İç Birleşim}

        \includegraphics[width=\textwidth,height=0.8\textheight,keepaspectratio]{images/JoinInnerOrnek1}
  \end{frame}

\begin{frame}{INNER JOIN}

\begin{itemize}
\item Her iki tabloda eşleşmiş olan kayıtları getirir.
\item Örneğin bir öğrencinin iletişim bilgisi yoksa, o öğrencinin bilgileri gelmez.
\item Eşleşme ON kelimesinde verilen kolonlara göre yapılır. Birden fazla kolon birleştirilebilir.
\item Eğer birleştime \textbf{=} ile yapılıyorsa, equi-join diyede adlandırılır.

\end{itemize}

\centering
\includegraphics[height=0.3\textheight,keepaspectratio]{images/JoinInnerOrnek1}

\end{frame}



\begin{frame}[fragile]
\frametitle{Inner Join  - İç Birleşim - SQL Ornek}
\begin{lstlisting}[language=SQL,caption=INNER JOIN ANSI SQL 92,label=SQL-inner-join-syntax-ansi-sql-92]
SELECT OgrenciNo,IletisimTipi,IletisimDegeri
FROM   OGRENCI INNER JOIN ILETISIM
ON  OGRENCI.OgrenciKey = ILETISIM.OgrenciKey;
\end{lstlisting}
\end{frame}




