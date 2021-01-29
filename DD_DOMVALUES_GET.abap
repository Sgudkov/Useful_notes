
DATA: 
  lv_domain_name TYPE domname,
  lt_choice_values  TYPE TABLE OF dd07v.

 CALL FUNCTION 'DD_DOMVALUES_GET'
   EXPORTING
     domname   = lv_domain_name    " Domain name
     text      = abap_true    " Default ' ': without texts, 'X': with, 'T': only text
   TABLES
     dd07v_tab = lt_choice_values.