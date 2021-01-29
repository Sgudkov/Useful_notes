 DATA: 
   lv_path TYPE salfile-longname, "change path
   lv_file_count   TYPE i,
   lt_file_table TYPE TABLE OF sdokpath,
   lt_file_table TYPE TABLE OF sdokpath.


 CALL FUNCTION 'TMP_GUI_DIRECTORY_LIST_FILES'
    EXPORTING
      directory  = lv_path
      filter     = '*.txt' "get all files with property .txt
    IMPORTING
      file_count = lv_file_count
    TABLES
      file_table = lt_file_table
      dir_table  = lt_dir_table
    EXCEPTIONS
      cntl_error = 1
      OTHERS     = 2.