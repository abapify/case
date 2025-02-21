# ABAP Case converter

Simple case converter

## Supported cases

- Camel
- Snake
- Kebab

### Camel case

```
zcl_abap_case=>camel( )->to_abap( 'camelCase' ) " --> CAMEL_CASE
zcl_abap_case=>camel( )->from_abap( 'CAMEL_CASE' ) " --> camelCase
```

### Snake case

```
zcl_abap_case=>snake( )->to_abap( 'snake_case' ) " --> SNAKE_CASE
zcl_abap_case=>snake( )->from_abap( 'SNAKE_CASE' ) " --> snake_case
```

### Kebab case
```
zcl_abap_case=>kebab( )->to_abap( 'kebab-case' ) " -->  KEBAB_CASE
zcl_abap_case=>kebab( )->from_abap( 'KEBAB_CASE' ) " --> kebab-case
```

## ZIF_ABAP_CASE

All converters are instances of `ZIF_ABAP_CASE` interface which allows to send convertor as a variable to other libs

