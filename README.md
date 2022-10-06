# CRL template

Unofficial minimalistic LaTex presentation template for Computation Robotics Laboratory.

## Issues to solve

- How do we structure source files?
  - Add a new file for the commands and include them in the main.tex
  - `main.tex` should contain only renewed commands, including commands.tex and slides.tex, and finally, the begin-document section
- How to parametrize the presentation header?  
- How to install Technika-fonts?
- Use the install script and download them from CTU web?
  - Where to copy them?
  - Check for existing Technika-fonts

## TODO

- [x] Adding a new AIC logo
  - [x] Update the logo in the template
- [x] Updating graphics s.t. it follows [CTU graphical identity manual (CS-only)](https://www.cvut.cz/logo-a-graficky-manual)
- [ ] Update install script
- [ ] Update the Makefile to incorporate `comrob-ds`
  - [ ] Add `make x` and other advanced 
- [ ] Explicitly add a new file for additional commands and include it in the main.tex
- [ ] Fix the AIC and CTU logo sizes
- [x] Update the footer
- [ ] Add documentation for the fields in the main
- [ ] Add multiple macros for the title and lines in the headline
- [ ] Add readme
- [ ] Create a repository for the Technika-fonts, or script to download them from the original website
- [ ] Add tags for bold and colorful text, and italic and colorful text
- [ ] Add an option for the itemized item bullet-shapes
- [ ] Add bib item entry macro

## Optional tasks

- [ ] Modify file content to update examples

## Ideas

- [ ] Make CTUBlue color variant and whatever color the AIC color is
  - [ ] Make CTUBlue color variant for CRL template

## Links

- [Comrob templates](https://robotics.fel.cvut.cz/wiki/doku.php?id=templates)
