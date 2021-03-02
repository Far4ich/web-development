PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  DOS;
BEGIN {Response}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  IF GETENV('QUERY_STRING') = 'lanterns=1'
  THEN
    WRITELN('Sea')
  ELSE
    IF GETENV('QUERY_STRING') = 'lanterns=2'
    THEN
      WRITELN('Land')
    ELSE
      WRITELN('Nothing')
END. {Response}
