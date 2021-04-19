PROGRAM PrintHello(INPUT, OUTPUT);
USES DOS;
VAR
  QueryStr: STRING;
  PosName: INTEGER;
BEGIN {Response}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QueryStr := GETENV('QUERY_STRING');
  PosName := POS('name=', QueryStr);
  IF (PosName <> 0) AND (LENGTH(QueryStr) > 5)
  THEN
    WRITELN('Hello dear, ', COPY(QueryStr, 6, LENGTH(QueryStr)), '!')
  ELSE
    WRITELN('Hello Anonymous!')
END. {Response}
