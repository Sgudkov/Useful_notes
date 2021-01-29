  DATA:
    lt_bapiret TYPE bapiret2_tab.

  CALL FUNCTION 'SUSR_DISPLAY_LOG'
    EXPORTING
      display_in_popup = abap_true
    TABLES
      it_log_bapiret2  = lt_bapiret.