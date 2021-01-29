    DATA:
      lt_message   TYPE TABLE OF bapiret2,
	  ls_messagees TYPE BAPIRET2.


    ls_messages-id      = ''.
    ls_messages-number  = ''.
	ls_messages-type    = ''.
	ls_messages-message = ''.
	APPEND ls_messagees to lt_message.
	
        CALL FUNCTION 'RSCRMBW_DISPLAY_BAPIRET2'
          TABLES
            it_return = lt_message.