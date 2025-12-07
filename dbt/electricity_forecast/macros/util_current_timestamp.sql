{% macro current_utc_timestamp() %}
  {{ return(adapter.dispatch('current_timestamp', 'dbt')()) }}
{% endmacro %}
