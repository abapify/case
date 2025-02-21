*"* use this source file for your ABAP unit test classes
*"* use this source file for your ABAP unit test classes
class ltcl_test definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      camel for testing,
      snake for testing,
      kebab for testing.
endclass.

class ltcl_case definition.
  public section.
   class-methods :test
    importing name type string
    case type ref to zif_abap_case
    abap_value type string
    out_value type string.
endclass.

class ltcl_case implementation.
    method test.

     " to ABAP
     cl_abap_unit_assert=>assert_equals(
        msg = |{ name } to ABAP|
        act = case->to_abap( out_value )
        exp = abap_value  ).

    " and back
    cl_abap_unit_assert=>assert_equals(
        msg = |ABAP to { name }|
        act = case->from_abap( abap_value )
        exp = out_value ).

    endmethod.
endclass.


class ltcl_test implementation.

  method camel.

    ltcl_case=>test(
      exporting
        name       = 'Camel case'
        case       = zcl_abap_case=>camel( )
        abap_value = 'CAMEL_CASE'
        out_value  = 'camelCase'
    ).

  endmethod.

  method snake.

    ltcl_case=>test(
      exporting
        name       = 'Snake case'
        case       = zcl_abap_case=>snake( )
        abap_value = 'SNAKE_CASE'
        out_value  = 'snake_case'
    ).

  endmethod.

  method kebab.

    ltcl_case=>test(
      exporting
        name       = 'Kebab case'
        case       = zcl_abap_case=>kebab( )
        abap_value = 'KEBAB_CASE'
        out_value  = 'kebab-case'
    ).

  endmethod.

endclass.
