# Form Creator

A web application allowing you to create a form, collect answers, and show them in a structured fashion.

## Form Fields

It can be a:
* text, (minlength, maxlength0)
* long text, (minlength, maxlength)
* integer input, (min, max)
* floating point input (min, max)
* date (mindate, maxdate, dayofweek, multiselect)
* time (min, max)
* datetime (min, max)
* dateramge (min, max)
* timerange (min, max)
* datetimerange (min, max)
* list of (listid, multiselect)
	* text
	* integer
	* dates 

## Endpoints:
### /edit/secretID 
Shows the form editing interface for the form with the provided secret ID. If the ID is new, then an empty interface is shown, and the form will be created. If there is a valid secret provided, it will be loaded.

This page has :
- a hidden field with the form's ID (if there is none, it'll be generated)
- administration: 
	- delete form
	- view form answers
	- save changes to the form 
	- properties : 
		- should there be more possibility per session to submit answers?
		- can the answers be edited later on ? Or just be shown?

### /create/
Processes the /edit endpoint's output. Shows :
- public URL
- secret (edit and admin) URL

### /show/publicID
Shows the form.

### /submit/publicID
Submits the form's values to the database .

It may show a link to **/editAnswers/submissionID** where the answers can be edited.

### /editAnswers/submissionID

### /submitEditedAnswers

### /showAllAnswers/secretID




