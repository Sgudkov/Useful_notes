DATA: 
  lv_xml            TYPE xstring,
  lt_xml            TYPE TABLE OF smum_xmltb,
  lt_return         TYPE TABLE OF bapiret2.
  
CALL FUNCTION 'SMUM_XML_PARSE'
  EXPORTING
    xml_input = lv_xml
  TABLES
    xml_table = lt_xml
    return    = lt_return.