

\subsection{Self Join  - Kendi ile Birleşim }

\begin{frame}{SELF JOIN}

\begin{itemize}
\item Aynı tablonun satırlarını birleştirir.
\item FROM cümlesinden aynı tablonun 2 sanal kopyasını oluşturarak satırları bir biri ile karşılaştır.
\item Bu işlem için en az bir takma ad (alias) gereklidir. 
\item Takma isim verirken anlamlı bir isim vermeniz sql'ı daha sonra daha iyi anlamınız sağlayacaktır.
\end{itemize}

\end{frame}

\begin{frame}[fragile]
\frametitle{Cross Join  - Çapraz Birleşim - SQL Ornek}




\lstinputlisting[language=SQL,caption=SELF JOIN,label=SQL-self-join-northwind-example1]{sqlFiles/self-join-northwind-example1.sql}

\end{frame}



