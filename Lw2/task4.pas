PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  QueryStr: STRING;

FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  KeyLength, PosKey, Pos&: INTEGER;
BEGIN
  DeltaPos := 0;
  KeyLength := LENGTH(Key);
  PosKey := POS(Key, QueryStr);
  
END;

BEGIN {Response}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QueryStr := GETENV('QUERY_STRING');

END. {Response}
