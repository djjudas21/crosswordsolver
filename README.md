# Crossword Solver

Simple script to help solve crossword clues

## Setup

This script requires a Perl interpreter (which should be pretty much universal) and a word list. On RedHat-flavour systems, install the dictionary like this:

```
yum install words
```

On Debian-flavour systems, instll the dictionary like this:

```
apt-get install wordlist
```

## Usage

This script takes just one argument. Enter the word you want to match, substituting underscores for letters you don't know. For example, `W_RD`.

```
[jonathan@apollo crosswordsolver]$ ./crosswordsolver.pl w_rd
Searching for matches for 4-letter word W_RD...
Found 6 matches for W_RD
  Ward
  ward
  wird
  Word
  word
  Wyrd
```
