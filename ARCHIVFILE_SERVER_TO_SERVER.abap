
DATA:
  path      like sapb-sappfad,
  path_t_a  like sapb-sappfad,
  length    like sapb-length.

CALL FUNCTION 'ARCHIVFILE_SERVER_TO_SERVER'
  EXPORTING
    sourcepath = path
    targetpath = path_t_a
  IMPORTING
    length     = length
  EXCEPTIONS
    error_file = 1
    others     = 2.