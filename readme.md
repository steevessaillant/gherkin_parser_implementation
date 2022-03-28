# Gherkin Parser POC

1.You must use this library --> download at : https://pypi.org/project/gherkin2robotframework/
    1.1 Use pip3 to install it.
    1.2 Read the info on the page for details.

2. With the command line run :   gherkin2robotframework example.feature   (your input file, must be a gherkin feature file)

3. Output will be .robot files with to implement keywords, which is what we want!

4. All file used ofr generated we commited so you can redo the poc with PyCharm very quickly and understand what it does.
 
Help :
gherkin2robotframework -h
usage: gherkin2robotframework [-h] [-v] [feature] [output]

positional arguments:
  feature
  output

optional arguments:
  -h, --help     show this help message and exit
  -v, --verbose


## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.

```bash
pip3 install gherkin2robotframework
gherkin2robotframework example.feature
```
