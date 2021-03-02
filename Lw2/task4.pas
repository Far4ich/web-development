PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
  QueryStr: STRING
FUNCTION GetQueryStringParameter(Key: STRING): STRING;

BEGIN {Response}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QueryStr := GETENV('QUERY_STRING');

END. {Response}
