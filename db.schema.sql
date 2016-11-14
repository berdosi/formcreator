CREATE TABLE valuesString (
  valueId INTEGER,
  valueContent VARCHAR(10240));

CREATE TABLE valuesInt (
  valueId INTEGER,
  valueContent INTEGER);

CREATE TABLE valuesReal (
  valueId INTEGER,
  valueContent FLOAT);

CREATE TABLE answers (
  sessionId INTEGER,
  valueId INTEGER,
  fieldId INTEGER);

CREATE TABLE sessions (
  sessionId INTEGER,
  formId INTEGER);

CREATE TABLE forms (
  formId INTEGER,
  secretId INTEGER,
  publicId INTEGER,
  answersAccepted BOOLEAN,
  answersEditable BOOLEAN);

CREATE TABLE formMetaData (
  formId INTEGER,
  formTitle VARCHAR(1024),
  formDescription VARCHAR(10240),
  formCreateDateTime DATETIME);

CREATE TABLE fieldDefinitions (
  fieldId INTEGER,
  fieldTitle VARCHAR(1024),
  fieldDescription VARCHAR(10240),
  fieldType INTEGER, -- there will be constants denoting the type we have
  mandatory BOOLEAN,
  length INTEGER,
  regexp VARCHAR(1024),
  min INTEGER, -- will hold mindate, too
  max INTEGER, -- will hold maxdate, too 
  integerOnly BOOLEAN,
  dayOfWeek INTEGER, -- will hold it as a number between 0b0000000 .. 0b1111111
  listId INTEGER, -- in case there is a list to choose the value from
  multiselect BOOLEAN); -- if there is a list (or a date), can we pick more than one?
 
CREATE TABLE formFields ( -- hold the form's layout
  formId INTEGER,
  fieldId INTEGER,
  fieldPosition INTEGER);

CREATE TABLE listDefinitions (
  fieldId INTEGER,
  listItemId INTEGER,
  itemTitle VARCHAR(1024),
  visible BOOLEAN);

