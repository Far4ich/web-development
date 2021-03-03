PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  QueryStr: STRING;

FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  KeyLength, PosKey, PosAmpersant: INTEGER;
BEGIN
  KeyLength := LENGTH(Key);
  QueryStr := GETENV('QUERY_STRING');
  PosKey := POS(Key, QueryStr);
  IF PosKey <> 0
  THEN
    BEGIN
      DELETE(QueryStr, 1, PosKey + KeyLength);
      PosAmpersant := POS('&', QueryStr);
      IF PosAmpersant <> 0
      THEN
        GetQueryStringParameter := Copy(QueryStr, 1, PosAmpersant - 1)
      ELSE
        GetQueryStringParameter := QueryStr
    END
  ELSE
    GetQueryStringParameter := 'NOT FOUND'
END;

BEGIN {Response}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {Response}
