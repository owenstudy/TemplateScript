
        drop table dm_template_veri;
        create table dm_template_veri(module_name varchar2(100), table_name varchar2(100),
        column_name varchar2(100),veri_code varchar2(100),veri_result number);
        
        Create Or Replace Function F_IS_NUMBER (STR_NUMBER Varchar2)
                    Return Number
                Is
                    V_RESULT   Integer;
                    V_NUMBER   Number;
                Begin
                    V_RESULT := 1;
                    V_NUMBER := To_number (STR_NUMBER);
                    V_RESULT := 0;
                    Return (V_RESULT);
                Exception
                    When Others
                    Then
                        V_RESULT := 1;
                        Return (V_RESULT);
                End;

                /
        
        Create Or Replace Function F_IS_DATE (STR_DATE Varchar2)
                Return Number
            Is
                V_RESULT   Integer;
                V_DATE     Date;
            Begin
                V_RESULT := 1;
                V_DATE := To_date (STR_DATE, 'mm/dd/yyyy');
                V_RESULT := 0;
                Return (V_RESULT);
            Exception
                When Others
                Then
                    V_RESULT := 1;
                    Return (V_RESULT);
            End;

            /
        