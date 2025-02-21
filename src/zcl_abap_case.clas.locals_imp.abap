*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

" https://developer.mozilla.org/en-US/docs/Glossary/Camel_case
class lcl_case definition abstract.
    public section.
      interfaces zif_abap_case all methods abstract.
      aliases to_abap for zif_abap_case~to_abap.
      aliases from_abap for zif_abap_case~from_abap.
    protected section.

endclass.

class lcl_camel_case definition inheriting from lcl_case.
  public section.
    methods zif_abap_case~to_abap redefinition.
    methods zif_abap_case~from_abap redefinition.
endclass.

class lcl_camel_case implementation.
  method zif_abap_case~from_abap.
    result = to_mixed(
         " to make first letter small
         to_lower( value ) ).
  endmethod.
  method zif_abap_case~to_abap.
    result = from_mixed( value ).
  endmethod.
endclass.

" https://developer.mozilla.org/en-US/docs/Glossary/Snake_case
class lcl_snake_case definition inheriting from lcl_case.
  public section.
    methods zif_abap_case~to_abap redefinition.
    methods zif_abap_case~from_abap redefinition.
endclass.

class lcl_snake_case implementation.
  method zif_abap_case~from_abap.
    result = to_lower( value ).
  endmethod.
  method zif_abap_case~to_abap.
    result = to_upper( value ).
  endmethod.
endclass.

" https://developer.mozilla.org/en-US/docs/Glossary/Kebab_case
class lcl_kebab_case definition inheriting from lcl_case.
  public section.
    methods zif_abap_case~to_abap redefinition.
    methods zif_abap_case~from_abap redefinition.
endclass.

class lcl_kebab_case implementation.
  method zif_abap_case~from_abap.
    result = to_lower(  replace( val = value sub = '_' with = '-' occ = 0 ) ).
  endmethod.
  method zif_abap_case~to_abap.
    result = to_upper(  replace(  val = value sub = '-' with = '_' occ = 0 ) ).
  endmethod.
endclass.
