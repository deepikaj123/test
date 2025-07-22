{% macro compare_row_counts(Table_A, Table_B,Table_C) %}

        select
            '{{ Table_A }}' as table_name,
            count(*) as total_records
        from {{ Table_A }}

        union all

        select
            '{{ Table_B }}' as table_name,
            count(*) as total_records
        from {{ Table_B }}
        
        union all

        select
            '{{ Table_C }}' as table_name,
            count(*) as total_records
        from {{ Table_C }}
  
{% endmacro %}
