data: lt_message_popup  TYPE esp1_message_tab_type,
      ls_message_popup  LIKE LINE OF lt_message_popup.
	  
	  
	  ls_message_popup-msgty = ''.
      ls_message_popup-msgid = ''.
      ls_message_popup-msgno = ''.
      ls_message_popup-msgv1 = ''.
	  APPEND ls_message_popup TO lt_message_popup.

  CALL FUNCTION 'C14Z_MESSAGES_SHOW_AS_POPUP'
    TABLES
      i_message_tab = lt_message_popup[].