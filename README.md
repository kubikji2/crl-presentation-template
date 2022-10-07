# CRL template

Unofficial minimalistic LaTex presentation template for Computation Robotics Laboratory.

## Usage and Installation

### Using as-is

1. Run install script `./install.sh`.
   - It will install (update) `Technika-fonts` into `.fonts` hidden directory in your home directory.  
   - Then it will download and install `luatex` from `apt`.
2. Modify the `slides.tex` file.
3. Compile to `pdf` using `Makefile` by running: `make`

### Using as git-submodule (advanced)

0. Set up the submodule in your repo in a directory you are willing the place source code (presentation root).
   - Add submodule using HTTPS: `git add https://github.com/kubikji2/crl-presentation-template.git`. It will create/update `.gitmodules` in the repo root directory.  
   - Specify the branch in `.gitmodule` to `template`. The entry should look like this:
   
     ```
      [submodule "<path relative to repo root>"]
	    path = <path relative to repo root>
	    url = https://github.com/kubikji2/crl-presentation-template.git  
        branch = template
     ```

1. Run the install script in the submodule if `luatex` and `Technika` fonts are not yet installed.

2. In the presentation root, run `./crl-presentation-template/init-submodule.sh`. The presentation root should now contain two new files: `ctu-path.tex` and `beamerthemeCTUstyle.sty`.

3. The template can be utilized in your presentation root (usual `\usetheme{CTUstyle}` in `main.tex` should work).

4. Your presentation should be compilable from the presentation root via `luatex main.tex`.

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

## Issues to solve

- How do we structure source files?
  - Add a new file for the commands and include them in the main.tex
  - `main.tex` should contain only renewed commands, including commands.tex and slides.tex, and finally, the begin-document section
- How to parametrize the presentation header?  
- How to install Technika-fonts?
- Use the install script and download them from CTU web?
  - Where to copy them?
  - Check for existing Technika-fonts

## Optional tasks

- [ ] Modify file content to update examples

## Ideas

- [ ] Make CTUBlue color variant and whatever color the AIC color is
  - [ ] Make CTUBlue color variant for CRL template

## Links

- [Comrob templates](https://robotics.fel.cvut.cz/wiki/doku.php?id=templates)
