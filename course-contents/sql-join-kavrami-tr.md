


\begin{frame}{Birden fazla tabloyu JOIN ile sorgulama Konular}

\begin{itemize}
\item Birden fazla tablodaki satırları verilen kritere göre birleştirir.
\item Genellikle ana anahtar (primary key) ve yabancı anahtar (foreign key) birleştirmesi yapılır.
\item Örneğin Öğrenci ve İletişim tablosu birleştirilir.
\item birleştirme işlemini Venn diagram olarak düşünmek iyi olur.

\end{itemize}

\centering
\includegraphics[height=0.3\textheight,keepaspectratio]{images/JoinInnerOrnek1}

\end{frame}


\begin{frame}[fragile]

\frametitle{JOIN Birleştirme Söz Dizimi}
  
\begin{lstlisting}[language=SQL,caption=JOIN YAZIMI ANSI SQL 89,label=SQL-join-syntax-ansi-sql-89]
SELECT ...
FROM   Table1, Table2
WHERE  Table1.KolonA = Table2.KolonA;

\end{lstlisting}

\begin{lstlisting}[language=SQL,caption=JOIN YAZIMI ANSI SQL 92,label=SQL-join-syntax-ansi-sql-92]
SELECT ...
FROM   Table1 JOIN Table2
ON  Table1.KolonA = Table2.KolonA;

\end{lstlisting}



\end{frame}

