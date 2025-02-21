class zcl_abap_case definition
  public
  final
  create public abstract.


  public section.

  class-METHODS:
     snake RETURNING VALUE(result) type ref to zif_abap_case,
     kebab RETURNING VALUE(result) type ref to zif_abap_case,
     camel RETURNING VALUE(result) type ref to zif_abap_case.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_ABAP_CASE IMPLEMENTATION.

METHOD camel.
RESUlt = new lcl_camel_case( ).
ENDMETHOD.

METHOD snake.
RESUlt = new lcl_snake_case( ).
ENDMETHOD.

METHOD kebab.
RESUlt = new lcl_kebab_case( ).
ENDMETHOD.

ENDCLASS.
