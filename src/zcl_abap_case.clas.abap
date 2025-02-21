class zcl_abap_case definition
  public
  final
  create public abstract.


  public section.

  class-methods snake returning value(result) type ref to zif_abap_case.
  class-methods kebab returning value(result) type ref to zif_abap_case.
  class-methods camel returning value(result) type ref to zif_abap_case.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_ABAP_CASE IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ABAP_CASE=>SNAKE
* +-------------------------------------------------------------------------------------------------+
* | [<-()] RESULT                         TYPE REF TO ZIF_ABAP_CASE
* +--------------------------------------------------------------------------------------</SIGNATURE>
method snake.
result = new lcl_snake_case( ).
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ABAP_CASE=>KEBAB
* +-------------------------------------------------------------------------------------------------+
* | [<-()] RESULT                         TYPE REF TO ZIF_ABAP_CASE
* +--------------------------------------------------------------------------------------</SIGNATURE>
method kebab.
result = new lcl_kebab_case( ).
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ABAP_CASE=>CAMEL
* +-------------------------------------------------------------------------------------------------+
* | [<-()] RESULT                         TYPE REF TO ZIF_ABAP_CASE
* +--------------------------------------------------------------------------------------</SIGNATURE>
method camel.
result = new lcl_camel_case( ).
endmethod.
ENDCLASS.
