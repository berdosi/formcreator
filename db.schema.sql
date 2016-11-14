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

