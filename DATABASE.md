# Database Design for Form Creator

## ValuesStr, ValuesInt, 
valueID : Int | value : Any

## Answers

sessionID : Int | valueID | fieldId

## Sessions
sessionID : Int | formID : Int

## Forms
formId : Int | secretID : Int | publicId : Int | answersAccepted : Bool | answersEditable : Bool (| sessionAwareness : Bool )

## FormMetadata
formId | formTitle | formDescription | formCreateDate 

## FieldDefinitions
fieldID | name | type | description | mandatory | length | regexp | min | max | integerOnly | minDate | maxDate | dayOfWeek | listId | multiselect

## FormFields 
formId : Int | fieldId : Int | fieldPosition :Int

## ListDefinitions
fieldId | listItemId | titleText | visible
(when a list item is deleted, it is only hidden. )
