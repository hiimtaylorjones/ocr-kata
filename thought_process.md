# Thought Process

This is where my thoughts will go.

Points of interest for session 1:

* *reading and coding started at 9:31 PM*
* *Documentation started at 11:26PM*

## Models

### OCR Reader

The OCR Reader class is what we use to read a file and generate specific resources
from it. It should simply return an OCR Result instance, when prompted.


### OCR Result

The OCR Result is a model that contains and validates the input that the reader
gathers from the file. There are a few important things to note about the outline:

* We want a means to validate the input we're putting in.
* We only want our data array to contain numbers
* We only want our data array to contain 9 numbers
