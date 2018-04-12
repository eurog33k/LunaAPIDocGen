# LunaAPIDocGen

**This is a documentation generator for the Luna API**

Luna can be found at https://www.lunaapi.ga
The Luna Source Code can be found at https://github.com/eurog33k/luna

This program is used to document API calls and translate them into JSON so that we can transfer the documentation definition to the project that will do the Unit Tests and generate our swagger.json file (LunaAPI2Swagger).

## How to document the API Call:

**Important note: Before starting LunaAPIDocGen, place the apidocsluna.db sqlite database from the externals folder under SpecialFolder.ApplicationData**

• Start LunaAPIDocGen

• Fill in the API call (start the API path with a /)

• Use a PATH parameter (e.g. /apipath/{pathparameter} ) if required.

• Adjust the necessary fields.

• After filling in all the necessary fields, press save to store the API definition

At step by step guide can be found at https://lunaapi.ga/documents/step-1.html

## Transfer the documentation:

To transfer an API call to the swagger documentation generation project, select the api call, select the LunaAPI2Swagger.xojo_binary_project file and press the send to project button.

If your forgot to select the project file, the file dialog will open to allow you to select the project.

## Special Thanks

This program makes use of the Free Magic Listbox by Simcar Software http://simcarsoftware.com/newfree/newxojo/index.html

Paul Lefebvre of Xojo, Inc.: http://xojo.com

Kem Tekinay: http://www.mactechnologies.com/
