"! Case converter
"! This is just a converter - it should support any case
interface ZIF_ABAP_CASE
  public .

  "! from external to abap ( like camelCase -> CAMEL_CASE )
  methods to_abap   importing value type csequence returning value(result) type string.
  "! from abap to external ( like CAMEL_CASE -> camelCase )
  methods from_abap importing value type csequence returning value(result) type string.

endinterface.
