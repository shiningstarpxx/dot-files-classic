;; Autoloads for nXthml
;;
;; This file should be updated by `nxhtmlmaint-get-file-autoloads',
;; `nxhtmlmaint-get-dir-autoloads' or `nxhtmlmaint-get-all-autoloads'.
;;;### (autoloads (cancel-secondary-selection set-secondary-selection
;;;;;;  anchored-transpose) "anchored-transpose" "util/anchored-transpose.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/anchored-transpose.el

(autoload (quote anchored-transpose) "anchored-transpose" "\
Transpose portions of the region around an anchor phrase.

`this phrase but not that word'    can be transposed into
`that word but not this phrase'

I want this phrase but not that word.
       |----------------------------|. .This is the entire phrase.
                  |-------|. . . . . . .This is the anchor phrase.

First select the entire phrase and type \\[anchored-transpose].
This set the secondary selection.

Then select the anchor phrase and type \\[anchored-transpose]
again.  Alternatively you can do the selections like this:

I want this phrase but not that word.
       |----------|       |---------|   Separate phrase selection.

By default the anchor phrase will automatically include
any surrounding whitespace even if you don't explicitly select
it.  Also, it won't include certain trailing punctuation.  See
`anchored-transpose-do-fuzzy' for details.  A prefix arg prior to
either selection means `no fuzzy logic, use selections
literally'.

You can select the regions to be swapped separately in any
order.

After swapping both primary and secondary selection are still
active.  They will be canceled after second next command if you
do not swap regions again.  (Second because this allow you to
adjust the regions and try again.)

You can also swap text between different buffers this way.

Typing \\[anchored-transpose] with nothing selected clears any
prior selection, ie secondary selection.

\(fn BEG1 END1 FLG1 &optional BEG2 END2 FLG2 WIN2)" t nil)

(autoload (quote set-secondary-selection) "anchored-transpose" "\
Set the secondary selection to the current region.
mouse-set-secondary
This must be bound to a mouse drag event.

\(fn BEG END)" t nil)

(autoload (quote cancel-secondary-selection) "anchored-transpose" "\
Not documented

\(fn)" t nil)

;;;***

;;;### (autoloads (appmenu-add appmenu) "appmenu" "util/appmenu.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/appmenu.el

(let ((loads (get (quote appmenu) (quote custom-loads)))) (if (member (quote "appmenu") loads) nil (put (quote appmenu) (quote custom-loads) (cons (quote "appmenu") loads))))

(autoload (quote appmenu-add) "appmenu" "\
Add entry to `appmenu-alist'.
Add an entry to this list with ID, PRIORITY, TEST, TITLE and
DEFINITION as explained there.

\(fn ID PRIORITY TEST TITLE DEFINITION)" nil nil)

;;;***

;;;### (autoloads (as-external-mode as-external-for-wiki as-external-for-mail-mode
;;;;;;  as-external-for-xhtml as-external) "as-external" "util/as-external.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/as-external.el

(let ((loads (get (quote as-external) (quote custom-loads)))) (if (member (quote "as-external") loads) nil (put (quote as-external) (quote custom-loads) (cons (quote "as-external") loads))))

(autoload (quote as-external-for-xhtml) "as-external" "\
Setup for Firefox addon It's All Text to edit XHTML.
It's All Text is a Firefox add-on for editing textareas with an
external editor.
See URL `https://addons.mozilla.org/en-US/firefox/addon/4125'.

In this case Emacs is used to edit textarea fields on a web page.
The text will most often be part of a web page later, like on a
blog.  Therefore turn on these:

- `nxhtml-mode' since some XHTML tags may be allowed.
- `nxhtml-validation-header-mode' since it is not a full page.
- `wrap-to-fill-column-mode' to see what you are writing.
- `html-write-mode' to see it even better.

Also bypass the question for line end conversion when using
emacsw32-eol.

\(fn)" t nil)

(autoload (quote as-external-for-mail-mode) "as-external" "\
Setup for Firefox addon It's All Text to edit mail.
Set normal mail comment markers in column 1 (ie >).

Set `fill-column' to 90 and enable `wrap-to-fill-column-mode' so
that it will look similar to how it will look in the sent plain
text mail.

See also `as-external-mode'.

\(fn)" t nil)

(autoload (quote as-external-for-wiki) "as-external" "\
Setup for Firefox addon It's All Text to edit MediaWikis.

\(fn)" t nil)

(defvar as-external-mode nil "\
Non-nil if As-External mode is enabled.
See the command `as-external-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `as-external-mode'.")

(nxhtml-custom-autoload (quote as-external-mode) "as-external" nil)

(autoload (quote as-external-mode) "as-external" "\
If non-nil check if Emacs is called as external editor.
When Emacs is called as an external editor for example to edit
text areas on a web page viewed with Firefox this library tries
to help to setup the buffer in a useful way. It may for example
set major and minor modes for the buffer.

This can for example be useful when blogging or writing comments
on blogs.

See `as-external-alist' for more information.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (chart-make-chart chart-complete) "chart" "util/chart.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/chart.el

(autoload (quote chart-complete) "chart" "\
Not documented

\(fn)" t nil)

(autoload (quote chart-make-chart) "chart" "\
Try to make a new chart.
If region is active then make a new chart from data in the
selected region.

Else if current buffer is in `chart-mode' then do it from the
chart specifications in this buffer.  Otherwise create a new
buffer and initialize it with `chart-mode'.

If the chart specifications are complete enough to make a chart
then do it and show the resulting chart image.  If not then tell
user what is missing.

NOTE: This is beta, no alpha code. It is not ready.

Below are some examples.  To test them mark an example and do

  M-x chart-make-chart

* Example, simple x-y chart:

  Output-file: \"~/temp-chart.png\"
  Size: 200 200
  Data: 3 8 5 | 10 20 30
  Type: line-chart-xy

* Example, pie:

  Output-file: \"~/temp-depression.png\"
  Size: 400 200
  Data:
  2,160,000
  3,110,000
  1,510,000
  73,600
  775,000
  726,000
  8,180,000
  419,000
  Type: pie-3-dimensional
  Chart-title: \"Depression hits on Google\"
  Legends:
  \"SSRI\"
  | \"Psychotherapy\"
  | \"CBT\"
  | \"IPT\"
  | \"Psychoanalysis\"
  | \"Mindfulness\"
  | \"Meditation\"
  | \"Exercise\"


* Example, pie:

  Output-file: \"~/temp-panic.png\"
  Size: 400 200
  Data:
  979,000
  969,000
  500,000
  71,900
  193,000
  154,000
  2,500,000
  9,310,000
  Type: pie-3-dimensional
  Chart-title: \"Depression hits on Google\"
  Legends:
  \"SSRI\"
  | \"Psychotherapy\"
  | \"CBT\"
  | \"IPT\"
  | \"Psychoanalysis\"
  | \"Mindfulness\"
  | \"Meditation\"
  | \"Exercise\"


* Example using raw:

  Output-file: \"~/temp-chart-slipsen-kostar.png\"
  Size: 400 130
  Data: 300 1000 30000
  Type: bar-chart-horizontal
  Chart-title: \"Vad killen i slips tj�Á�nar j�Á�mf�Á�rt med dig och mig\"
  Google-chart-raw: \"&chds=0,30000&chco=00cd00|ff4500|483d8b&chxt=y,x&chxl=0:|Killen+i+slips|Partiledarna|Du+och+jag&chf=bg,s,ffd700\"


\(fn)" t nil)

;;;***

;;;### (autoloads (csharp-mode) "csharp-mode" "related/csharp-mode.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/csharp-mode.el

(autoload (quote csharp-mode) "csharp-mode" "\
Major mode for editing C# (pronounced \"see sharp\") code.
This is a simple example of a separate mode derived from CC Mode to
support a language with syntax similar to C/C++/ObjC/Java/IDL/Pike.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `csharp-mode-hook'.

Key bindings:
\\{csharp-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (css-color-mode css-color-global-mode css-color)
;;;;;;  "css-color" "util/css-color.el" (19346 1291))
;;; Generated autoloads from util/css-color.el

(let ((loads (get (quote css-color) (quote custom-loads)))) (if (member (quote "css-color") loads) nil (put (quote css-color) (quote custom-loads) (cons (quote "css-color") loads))))

(defvar css-color-global-mode nil "\
Non-nil if Css-Color-Global mode is enabled.
See the command `css-color-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `css-color-global-mode'.")

(nxhtml-custom-autoload (quote css-color-global-mode) "css-color" nil)

(autoload (quote css-color-global-mode) "css-color" "\
Toggle Css-Color mode in every possible buffer.
With prefix ARG, turn Css-Color-Global mode on if and only if ARG is positive.
Css-Color mode is enabled in all buffers where `css-color-turn-on-in-buffer' would do it.
See `css-color-mode' for more information on Css-Color mode.

\(fn &optional ARG)" t nil)

(autoload (quote css-color-mode) "css-color" "\
Show hex color literals with the given color as background.
In this mode hexadecimal colour specifications like #3253ff are
displayed with the specified colour as background.

Certain keys are bound to special colour editing commands when
point is at a hexadecimal colour:

\\{css-color-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (css-palette-global-mode css-palette css-palette-mode)
;;;;;;  "css-palette" "util/css-palette.el" (19346 1291))
;;; Generated autoloads from util/css-palette.el

(autoload (quote css-palette-mode) "css-palette" "\
Minor mode for palettes in CSS.

The mode `css-palette-mode' acts on the first COLORS declaration in your
  file of the form:

COLORS:
\(
c0 \"#6f5d25\"	;tainted sand
c1 \"#000000\"	;Black
c2 \"#cca42b\"	;goldenslumber
c3 \"#6889cb\"	;far off sky
c4 \"#fff\"	;strange aeons
)

Such declarations should appear inside a block comment, in order
  to be parsed properly by the LISP reader.

Type \\[css-palette-update-all], and any occurence of

  color: #f55; /*[c3]*/

will be updated with

  color: #6899cb; /*[c3]*/

The following commands are available to insert key-value pairs
  and palette declarations:
  \\{css-palette-mode-map}

You can extend or redefine the types of palettes by defining a
  new palette specification of the form (PATTERN REGEXP
  REF-FOLLOWS-VALUE), named according to the naming scheme
  css-palette:my-type, where

PATTERN is a pattern containing two (%s) format directives which
  will be filled in with the variable and its value,

REGEXP is a regular expression to match a value - variable
  pattern,

and REF-FOLLOWS-VALUE defined whether or not the reference comes
  after the value. This allows for more flexibility.

Note that, although the w3c spec at URL
  `http://www.w3.org/TR/CSS2/syndata.html#comments' says that
  comments \" may occur anywhere between tokens, and their
  contents have no influence on the rendering\", Internet
  Explorer does not think so. Better keep all your comments after
  a \"statement\", as per the default. This means `css-palette'
  is ill-suited for use within shorthands.

See variable `css-palette:colors' for an example of a palette
  type.

The extension mechanism means that palette types can be used to
  contain arbitrary key-value mappings.

Besides the colors palette, css-palette defines the palette
  definition variables `css-palette:colors-outside' and
  `css-palette:files', for colors with the reference outside and
  for file url()'s respectively.

You can fine-control which palette types css-palette should look
  at via the variable `css-palette-types'.

\(fn &optional ARG)" t nil)

(let ((loads (get (quote css-palette) (quote custom-loads)))) (if (member (quote "css-palette") loads) nil (put (quote css-palette) (quote custom-loads) (cons (quote "css-palette") loads))))

(defvar css-palette-global-mode nil "\
Non-nil if Css-Palette-Global mode is enabled.
See the command `css-palette-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `css-palette-global-mode'.")

(nxhtml-custom-autoload (quote css-palette-global-mode) "css-palette" nil)

(autoload (quote css-palette-global-mode) "css-palette" "\
Toggle Css-Palette mode in every possible buffer.
With prefix ARG, turn Css-Palette-Global mode on if and only if ARG is positive.
Css-Palette mode is enabled in all buffers where `css-palette-turn-on-in-buffer' would do it.
See `css-palette-mode' for more information on Css-Palette mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (cusnu-export-my-skin-options customize-for-new-user)
;;;;;;  "cus-new-user" "util/cus-new-user.el" (19346 1291))
;;; Generated autoloads from util/cus-new-user.el

(autoload (quote customize-for-new-user) "cus-new-user" "\
Show special customization page for new user.

\(fn &optional NAME)" t nil)

(autoload (quote cusnu-export-my-skin-options) "cus-new-user" "\
Export to file FILE custom options in `cusnu-my-skin-options'.
The options is exported to elisp code that other users can run to
set the options that you have added to `cusnu-my-skin-options'.

For more information about this see `cusnu-export-cust-group'.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (django-mode) "django" "related/django.el" (19346
;;;;;;  1291))
;;; Generated autoloads from related/django.el

(autoload (quote django-mode) "django" "\
Simple Django mode for use with mumamo.
This mode only provides syntax highlighting.

\(fn)" t nil)

;;;***

;;;### (autoloads (flymake-css-load) "flymake-css" "related/flymake-css.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/flymake-css.el

(autoload (quote flymake-css-load) "flymake-css" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (flymake-js-load flymake-js) "flymake-js" "related/flymake-js.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/flymake-js.el

(let ((loads (get (quote flymake-js) (quote custom-loads)))) (if (member (quote "flymake-js") loads) nil (put (quote flymake-js) (quote custom-loads) (cons (quote "flymake-js") loads))))

(autoload (quote flymake-js-load) "flymake-js" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (fold-dwim-turn-on-outline-and-hide-all fold-dwim-turn-on-hs-and-hide
;;;;;;  fold-dwim-unhide-hs-and-outline fold-dwim-mode fold-dwim-toggle
;;;;;;  fold-dwim) "fold-dwim" "util/fold-dwim.el" (19346 1291))
;;; Generated autoloads from util/fold-dwim.el

(let ((loads (get (quote fold-dwim) (quote custom-loads)))) (if (member (quote "fold-dwim") loads) nil (put (quote fold-dwim) (quote custom-loads) (cons (quote "fold-dwim") loads))))

(autoload (quote fold-dwim-toggle) "fold-dwim" "\
Toggle visibility or some other visual things.
Try toggling different visual things in this order:

- Images shown at point with `inlimg-mode'
- Text at point prettified by `html-write-mode'.

For the rest it unhides if possible, otherwise hides in this
order:

- `org-mode' header or something else using that outlines.
- Maybe `fold-dwim-toggle-selective-display'.
- `Tex-fold-mode' things.
- In html if `outline-minor-mode' and after heading hide content.
- `hs-minor-mode' things.
- `outline-minor-mode' things. (Turns maybe on this.)

It uses `fold-dwim-show' to show any hidden text at point; if no
hidden fold is found, try `fold-dwim-hide' to hide the
construction at the cursor.

Note: Also first turn on `fold-dwim-mode' to get the keybinding
for this function from it.

\(fn)" t nil)

(defvar fold-dwim-mode nil "\
Non-nil if Fold-Dwim mode is enabled.
See the command `fold-dwim-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `fold-dwim-mode'.")

(nxhtml-custom-autoload (quote fold-dwim-mode) "fold-dwim" nil)

(autoload (quote fold-dwim-mode) "fold-dwim" "\
Key binding for `fold-dwim-toggle'.

\(fn &optional ARG)" t nil)

(autoload (quote fold-dwim-unhide-hs-and-outline) "fold-dwim" "\
Unhide everything hidden by Hide/Show and Outline.
Ie everything hidden by `hs-minor-mode' and
`outline-minor-mode'.

\(fn)" t nil)

(autoload (quote fold-dwim-turn-on-hs-and-hide) "fold-dwim" "\
Turn on minor mode `hs-minor-mode' and hide.
If major mode is derived from `nxml-mode' call `hs-hide-block'
else call `hs-hide-all'.

\(fn)" t nil)

(autoload (quote fold-dwim-turn-on-outline-and-hide-all) "fold-dwim" "\
Turn on `outline-minor-mode' and call `hide-body'.

\(fn)" t nil)

;;;***

;;;### (autoloads (foldit-global-mode foldit-mode foldit) "foldit"
;;;;;;  "util/foldit.el" (19346 1291))
;;; Generated autoloads from util/foldit.el

(let ((loads (get (quote foldit) (quote custom-loads)))) (if (member (quote "foldit") loads) nil (put (quote foldit) (quote custom-loads) (cons (quote "foldit") loads))))

(autoload (quote foldit-mode) "foldit" "\
Minor mode providing visual aids for folding.
Shows some hints about what you have hidden and how to reveal it.

Supports `hs-minor-mode', `outline-minor-mode' and major modes
derived from `outline-mode'.

\(fn &optional ARG)" t nil)

(defvar foldit-global-mode nil "\
Non-nil if Foldit-Global mode is enabled.
See the command `foldit-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `foldit-global-mode'.")

(nxhtml-custom-autoload (quote foldit-global-mode) "foldit" nil)

(autoload (quote foldit-global-mode) "foldit" "\
Toggle Foldit mode in every possible buffer.
With prefix ARG, turn Foldit-Global mode on if and only if ARG is positive.
Foldit mode is enabled in all buffers where `(lambda nil (foldit-mode 1))' would do it.
See `foldit-mode' for more information on Foldit mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (gimpedit-can-edit gimpedit-edit-buffer gimpedit-edit-file
;;;;;;  gimpedit) "gimpedit" "util/gimpedit.el" (19346 1291))
;;; Generated autoloads from util/gimpedit.el

(let ((loads (get (quote gimpedit) (quote custom-loads)))) (if (member (quote "gimpedit") loads) nil (put (quote gimpedit) (quote custom-loads) (cons (quote "gimpedit") loads))))

(autoload (quote gimpedit-edit-file) "gimpedit" "\
Edit IMAGE-FILE with GIMP.
See also `gimpedit-edit-file'.

\(fn IMAGE-FILE &optional EXTRA-ARGS)" t nil)

(autoload (quote gimpedit-edit-buffer) "gimpedit" "\
Edit image file in current buffer with GIMP.
See also `gimpedit-edit-file'.

You may also be interested in gimpedit-mode with which you can edit
gimp files from within Emacs using GIMP's scripting
possibilities. See

  URL `http://www.emacswiki.org/emacs/GimpMode'

\(fn)" t nil)

(autoload (quote gimpedit-can-edit) "gimpedit" "\
Not documented

\(fn FILE-NAME)" nil nil)

;;;***

;;;### (autoloads (gpl-mode) "gpl" "util/gpl.el" (19346 1291))
;;; Generated autoloads from util/gpl.el

(autoload (quote gpl-mode) "gpl" "\
Mode for font-locking and editing color palettes of the GPL format.

Such palettes are used and produced by free software applications
such as the GIMP, Inkscape, Scribus, Agave and on-line tools such
as http://colourlovers.com.

You can also use
URL `http://niels.kicks-ass.org/public/elisp/css-palette.el' to import
such palette into a css-file as hexadecimal color palette.

\(fn)" t nil)

;;;***

;;;### (autoloads (hfyview-frame hfyview-window hfyview-region hfyview-buffer)
;;;;;;  "hfyview" "util/hfyview.el" (19346 1291))
;;; Generated autoloads from util/hfyview.el

(autoload (quote hfyview-buffer) "hfyview" "\
Convert buffer to html preserving faces and show in web browser.
With command prefix ARG also show html source in other window.

\(fn ARG)" t nil)

(autoload (quote hfyview-region) "hfyview" "\
Convert region to html preserving faces and show in web browser.
With command prefix ARG also show html source in other window.

\(fn ARG)" t nil)

(autoload (quote hfyview-window) "hfyview" "\
Convert window to html preserving faces and show in web browser.
With command prefix ARG also show html source in other window.

\(fn ARG)" t nil)

(autoload (quote hfyview-frame) "hfyview" "\
Convert frame to html preserving faces and show in web browser.
Make an XHTML view of the current Emacs frame. Put it in a buffer
named *hfyview-frame* and show that buffer in a web browser.

If WHOLE-BUFFERS is non-nil then the whole content of the buffers
is shown in the XHTML page, otherwise just the part that is
visible currently on the frame.

If you turn on the minor mode `hfyview-frame-mode' you can also
get the minibuffer/echo area in the output. See this mode for
details.

With command prefix also show html source in other window.

\(fn WHOLE-BUFFERS)" t nil)

;;;***

;;;### (autoloads (hl-needed-mode hl-needed) "hl-needed" "util/hl-needed.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/hl-needed.el

(let ((loads (get (quote hl-needed) (quote custom-loads)))) (if (member (quote "hl-needed") loads) nil (put (quote hl-needed) (quote custom-loads) (cons (quote "hl-needed") loads))))

(defvar hl-needed-mode nil "\
Non-nil if Hl-Needed mode is enabled.
See the command `hl-needed-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `hl-needed-mode'.")

(nxhtml-custom-autoload (quote hl-needed-mode) "hl-needed" nil)

(autoload (quote hl-needed-mode) "hl-needed" "\
Try to highlight current line and column when needed.
This is a global minor mode.  It can operate in some different
ways:

- Highlighting can be on always, see `hl-needed-always'.

Or, it can be turned on depending on some conditions.  In this
case highlighting is turned off after each command and turned on
again in the current window when either:

- A new window was selected, see `hl-needed-on-new-window'.
- A new buffer was selected, see `hl-needed-on-new-buffer'.
- Window configuration was changed, see `hl-needed-on-config-change'.
- Buffer was scrolled see `hl-needed-on-scrolling'.
- A window was clicked with the mouse, see `hl-needed-on-mouse'.

After this highlighting may be turned off again, normally after a
short delay, see `hl-needed-flash'.

If either highlighting was not turned on or was turned off again
it will be turned on when

- Emacs has been idle for `hl-needed-idle-time' seconds.

See also `hl-needed-not-in-modes' and `hl-needed-currently-fun'.

Note 1: For columns to be highlighted vline.el must be available.

Note 2: This mode depends on `hl-line-mode' and `vline-mode' and
tries to cooperate with them. If you turn on either of these that
overrides the variables for turning on the respective
highlighting here.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (html-chklnk) "html-chklnk" "nxhtml/html-chklnk.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from nxhtml/html-chklnk.el

(let ((loads (get (quote html-chklnk) (quote custom-loads)))) (if (member (quote "html-chklnk") loads) nil (put (quote html-chklnk) (quote custom-loads) (cons (quote "html-chklnk") loads))))

;;;***

;;;### (autoloads (html-pagetoc-rebuild-toc html-pagetoc-insert-toc
;;;;;;  html-pagetoc) "html-pagetoc" "nxhtml/html-pagetoc.el" (19346
;;;;;;  1291))
;;; Generated autoloads from nxhtml/html-pagetoc.el

(let ((loads (get (quote html-pagetoc) (quote custom-loads)))) (if (member (quote "html-pagetoc") loads) nil (put (quote html-pagetoc) (quote custom-loads) (cons (quote "html-pagetoc") loads))))

(autoload (quote html-pagetoc-insert-toc) "html-pagetoc" "\
Inserts a table of contents for the current html file.
The html header tags h1-h6 found in the file are inserted into
this table.  MIN-LEVEL and MAX-LEVEL specifies the minimum and
maximum level of h1-h6 to include.  They should be integers.

\(fn &optional MIN-LEVEL MAX-LEVEL)" t nil)

(autoload (quote html-pagetoc-rebuild-toc) "html-pagetoc" "\
Update the table of contents inserted by `html-pagetoc-insert-toc'.

\(fn)" t nil)

(defconst html-pagetoc-menu-map (let ((map (make-sparse-keymap))) (define-key map [html-pagetoc-rebuild-toc] (list (quote menu-item) "Update Page TOC" (quote html-pagetoc-rebuild-toc))) (define-key map [html-pagetoc-insert-style-guide] (list (quote menu-item) "Insert CSS Style for Page TOC" (quote html-pagetoc-insert-style-guide))) (define-key map [html-pagetoc-insert-toc] (list (quote menu-item) "Insert Page TOC" (quote html-pagetoc-insert-toc))) map))

;;;***

;;;### (autoloads (html-site html-site-query-replace html-site-rgrep
;;;;;;  html-site-find-file html-site-dired-current html-site-set-site
;;;;;;  html-site-buffer-or-dired-file-name) "html-site" "nxhtml/html-site.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from nxhtml/html-site.el

(autoload (quote html-site-buffer-or-dired-file-name) "html-site" "\
Return buffer file name or file pointed to in dired.

\(fn)" nil nil)

(autoload (quote html-site-set-site) "html-site" "\
Not documented

\(fn NAME)" t nil)

(autoload (quote html-site-dired-current) "html-site" "\
Open `dired' in current site top directory.

\(fn)" t nil)

(autoload (quote html-site-find-file) "html-site" "\
Find file in current site.

\(fn)" t nil)

(autoload (quote html-site-rgrep) "html-site" "\
Search current site's files with `rgrep'.
See `rgrep' for the arguments REGEXP and FILES.

\(fn REGEXP FILES)" t nil)

(autoload (quote html-site-query-replace) "html-site" "\
Query replace in current site's files.

\(fn FROM TO FILE-REGEXP DELIMITED)" t nil)

(let ((loads (get (quote html-site) (quote custom-loads)))) (if (member (quote "html-site") loads) nil (put (quote html-site) (quote custom-loads) (cons (quote "html-site") loads))))

;;;***

;;;### (autoloads (html-toc) "html-toc" "nxhtml/html-toc.el" (19346
;;;;;;  1291))
;;; Generated autoloads from nxhtml/html-toc.el

(let ((loads (get (quote html-toc) (quote custom-loads)))) (if (member (quote "html-toc") loads) nil (put (quote html-toc) (quote custom-loads) (cons (quote "html-toc") loads))))

(defconst html-toc-menu-map (let ((map (make-sparse-keymap))) (define-key map [html-toc-browse-frames-file] (list (quote menu-item) "Browse Frames File" (quote html-toc-browse-frames-file))) (define-key map [html-toc-write-frames-file] (list (quote menu-item) "Write Frames File" (quote html-toc-write-frames-file))) (define-key map [html-toc-write-toc-file] (list (quote menu-item) "Write TOC File for Frames" (quote html-toc-write-toc-file))) (define-key map [html-toc-sep1] (list (quote menu-item) "--")) (define-key map [html-toc-edit-pages-file] (list (quote menu-item) "Edit List of Pages for TOC" (quote html-site-edit-pages-file))) (define-key map [html-toc-create-pages-file] (list (quote menu-item) "Write List of Pages for TOC" (quote html-toc-create-pages-file))) map))

;;;***

;;;### (autoloads (html-upl-ediff-file html-upl-edit-remote-file-with-toc
;;;;;;  html-upl-edit-remote-file html-upl-upload-file html-upl-remote-dired
;;;;;;  html-upl-upload-site html-upl-upload-site-with-toc html-upl)
;;;;;;  "html-upl" "nxhtml/html-upl.el" (19346 1291))
;;; Generated autoloads from nxhtml/html-upl.el

(let ((loads (get (quote html-upl) (quote custom-loads)))) (if (member (quote "html-upl") loads) nil (put (quote html-upl) (quote custom-loads) (cons (quote "html-upl") loads))))

(autoload (quote html-upl-upload-site-with-toc) "html-upl" "\
Not documented

\(fn)" t nil)

(autoload (quote html-upl-upload-site) "html-upl" "\
Not documented

\(fn)" t nil)

(autoload (quote html-upl-remote-dired) "html-upl" "\
Start dired for remote directory or its parent/ancestor.

\(fn DIRNAME)" t nil)

(autoload (quote html-upl-upload-file) "html-upl" "\
Upload a single file in a site.
For the definition of a site see `html-site-current'.

\(fn FILENAME)" t nil)

(autoload (quote html-upl-edit-remote-file) "html-upl" "\
Not documented

\(fn)" t nil)

(autoload (quote html-upl-edit-remote-file-with-toc) "html-upl" "\
Not documented

\(fn)" t nil)

(autoload (quote html-upl-ediff-file) "html-upl" "\
Run ediff on local and remote file.
FILENAME could be either the remote or the local file.

\(fn FILENAME)" t nil)

;;;***

;;;### (autoloads (html-write-mode html-write) "html-write" "util/html-write.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/html-write.el

(let ((loads (get (quote html-write) (quote custom-loads)))) (if (member (quote "html-write") loads) nil (put (quote html-write) (quote custom-loads) (cons (quote "html-write") loads))))

(autoload (quote html-write-mode) "html-write" "\
Minor mode for convenient display of some HTML tags.
When this mode is on a tag in `html-write-tag-list' is displayed as
the inner text of the tag with a face corresponding to the tag.
By default for example <i>...</i> is displayed as italic and
<a>...</a> is displayed as an underlined clickable link.

Only non-nested tags are hidden.  The idea is just that it should
be easier to read and write, not that it should look as html
rendered text.

See the customization group `html-write' for more information about
faces.

The following keys are defined when you are on a tag handled by
this minor mode:

\\{html-write-keymap}

IMPORTANT: Most commands you use works also on the text that is
hidden.  The movement commands is an exception, but as soon as
you edit the buffer you may also change the hidden parts.

Hint: Together with `wrap-to-fill-column-mode' this can make it
easier to see what text you are actually writing in html parts of
a web file.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (html-wtoc) "html-wtoc" "nxhtml/html-wtoc.el" (19346
;;;;;;  1291))
;;; Generated autoloads from nxhtml/html-wtoc.el

(let ((loads (get (quote html-wtoc) (quote custom-loads)))) (if (member (quote "html-wtoc") loads) nil (put (quote html-wtoc) (quote custom-loads) (cons (quote "html-wtoc") loads))))

;;;***

;;;### (autoloads (inlimg-toggle-slicing inlimg-toggle-display inlimg-global-mode
;;;;;;  inlimg-mode inlimg) "inlimg" "util/inlimg.el" (19346 1291))
;;; Generated autoloads from util/inlimg.el

(let ((loads (get (quote inlimg) (quote custom-loads)))) (if (member (quote "inlimg") loads) nil (put (quote inlimg) (quote custom-loads) (cons (quote "inlimg") loads))))

(autoload (quote inlimg-mode) "inlimg" "\
Display images inline.
Search buffer for image tags.  Display found images.

Image tags are setup per major mode in `inlimg-mode-specs'.

Images are displayed on a line below the tag referencing them.
The whole image or a slice of it may be displayed, see
`inlimg-slice'.  Margins relative text are specified in
`inlimg-margins'.

See also the commands `inlimg-toggle-display' and
`inlimg-toggle-slicing'.

Note: This minor mode uses `font-lock-mode'.

\(fn &optional ARG)" t nil)

(defvar inlimg-global-mode nil "\
Non-nil if Inlimg-Global mode is enabled.
See the command `inlimg-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `inlimg-global-mode'.")

(nxhtml-custom-autoload (quote inlimg-global-mode) "inlimg" nil)

(autoload (quote inlimg-global-mode) "inlimg" "\
Toggle Inlimg mode in every possible buffer.
With prefix ARG, turn Inlimg-Global mode on if and only if ARG is positive.
Inlimg mode is enabled in all buffers where `inlimg--global-turn-on' would do it.
See `inlimg-mode' for more information on Inlimg mode.

\(fn &optional ARG)" t nil)

(autoload (quote inlimg-toggle-display) "inlimg" "\
Toggle display of image at point POINT.
See also the command `inlimg-mode'.

\(fn POINT)" t nil)

(autoload (quote inlimg-toggle-slicing) "inlimg" "\
Toggle slicing of image at point POINT.
See also the command `inlimg-mode'.

\(fn POINT)" t nil)

;;;***

;;;### (autoloads (iss-mode) "iss-mode" "related/iss-mode.el" (19346
;;;;;;  1291))
;;; Generated autoloads from related/iss-mode.el

(autoload (quote iss-mode) "iss-mode" "\
Major mode for editing InnoSetup script files. Upon startup iss-mode-hook is run.

\(fn)" t nil)

;;;***

;;;### (autoloads (iss-mumamo) "iss-mumamo" "related/iss-mumamo.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/iss-mumamo.el

(autoload (quote iss-mumamo) "iss-mumamo" "\
Turn on multiple major modes Inno Setup .iss files.
The code section will be in `pascal-mode' while the rest will be
in `iss-mode'.

\[code]

... this will be in `pascal-mode'. Note the end mark below!

{*** End of CODE **}
" t)

;;;***

;;;### (autoloads (majmodpri majmodpri-apply-priorities majmodpri-apply
;;;;;;  majmodpri-sort-lists) "majmodpri" "util/majmodpri.el" (19346
;;;;;;  1291))
;;; Generated autoloads from util/majmodpri.el

(autoload (quote majmodpri-sort-lists) "majmodpri" "\
Sort the list used when selecting major mode.
Only sort those lists choosen in `majmodpri-lists-to-sort'.
Sort according to priorities in `majmodpri-mode-priorities'.
Keep the old order in the list otherwise.

The lists can be sorted when loading elisp libraries, see
`majmodpri-sort-after-load'.

See also `majmodpri-apply-priorities'.

\(fn)" t nil)

(autoload (quote majmodpri-apply) "majmodpri" "\
Sort major mode lists and apply to existing buffers.
Note: This function is suitable to add to
`desktop-after-read-hook'. It will restore the multi major modes
in buffers.

\(fn)" nil nil)

(autoload (quote majmodpri-apply-priorities) "majmodpri" "\
Apply major mode priorities.
First run `majmodpri-sort-lists' and then if CHANGE-MODES is
non-nil apply to existing file buffers.  If interactive ask
before applying.

\(fn CHANGE-MODES)" t nil)

(let ((loads (get (quote majmodpri) (quote custom-loads)))) (if (member (quote "majmodpri") loads) nil (put (quote majmodpri) (quote custom-loads) (cons (quote "majmodpri") loads))))

;;;***

;;;### (autoloads (mlinks-global-mode mlinks-mode mlinks) "mlinks"
;;;;;;  "util/mlinks.el" (19346 1291))
;;; Generated autoloads from util/mlinks.el

(let ((loads (get (quote mlinks) (quote custom-loads)))) (if (member (quote "mlinks") loads) nil (put (quote mlinks) (quote custom-loads) (cons (quote "mlinks") loads))))

(autoload (quote mlinks-mode) "mlinks" "\
Recognizes certain parts of a buffer as hyperlinks.
The hyperlinks are created in different ways for different major
modes with the help of the functions in the list
`mlinks-mode-functions'.

The hyperlinks can be hilighted when point is over them.  Use
`mlinks-toggle-hilight' to toggle this feature for the current
buffer.

All keybindings in this mode are by default done under the prefi��x
key

  C-c RET

which is supposed to be a kind of mnemonic for link (alluding to
the RET key commonly used in web browser to follow a link).
\(Unfortunately this breaks the rules in info node `Key Binding
Conventions'.) Below are the key bindings defined by this mode:

\\{mlinks-mode-map}

For some major modes `mlinks-backward-link' and
`mlinks-forward-link' will take you to the previous/next link.
By default the link moved to will be active, see
`mlinks-active-links'.

\(fn &optional ARG)" t nil)

(defvar mlinks-global-mode nil "\
Non-nil if Mlinks-Global mode is enabled.
See the command `mlinks-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `mlinks-global-mode'.")

(nxhtml-custom-autoload (quote mlinks-global-mode) "mlinks" nil)

(autoload (quote mlinks-global-mode) "mlinks" "\
Toggle Mlinks mode in every possible buffer.
With prefix ARG, turn Mlinks-Global mode on if and only if ARG is positive.
Mlinks mode is enabled in all buffers where `mlinks-turn-on-in-buffer' would do it.
See `mlinks-mode' for more information on Mlinks mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (inferior-moz-mode moz-minor-mode) "moz" "related/moz.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/moz.el

(autoload (quote moz-minor-mode) "moz" "\
MozRepl minor mode for interaction with Firefox.
With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode.

When this minor mode is enabled, some commands become available
to send current code area (as understood by c-mark-function) or
region or buffer to an inferior MozRepl process (which will be
started as needed).

The following keys are bound in this minor mode:

\\{moz-minor-mode-map}

\(fn &optional ARG)" t nil)

(autoload (quote inferior-moz-mode) "moz" "\
Major mode for interacting with Firefox via MozRepl.

\(fn)" t nil)

;;;***

;;;### (autoloads (global-mozadd-mirror-mode mozadd-mirror-mode global-mozadd-refresh-edited-on-save-mode
;;;;;;  mozadd-refresh-edited-on-save-mode) "mozadd" "related/mozadd.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/mozadd.el

(autoload (quote mozadd-refresh-edited-on-save-mode) "mozadd" "\
Refresh mozadd edited file in Firefox when saving file.
The mozadd edited file is the file in the last buffer visited in
`mozadd-mirror-mode'.

You can use this for example when you edit CSS files.

The mozadd edited file must be shown in Firefox and visible.

\(fn &optional ARG)" t nil)

(defvar global-mozadd-refresh-edited-on-save-mode nil "\
Non-nil if Global-Mozadd-Refresh-Edited-On-Save mode is enabled.
See the command `global-mozadd-refresh-edited-on-save-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-mozadd-refresh-edited-on-save-mode'.")

(nxhtml-custom-autoload (quote global-mozadd-refresh-edited-on-save-mode) "mozadd" nil)

(autoload (quote global-mozadd-refresh-edited-on-save-mode) "mozadd" "\
Toggle Mozadd-Refresh-Edited-On-Save mode in every possible buffer.
With prefix ARG, turn Global-Mozadd-Refresh-Edited-On-Save mode on if and only if ARG is positive.
Mozadd-Refresh-Edited-On-Save mode is enabled in all buffers where `(lambda nil (when (or (derived-mode-p (quote css-mode)) (mozadd-html-buffer-file-p)) (mozadd-refresh-edited-on-save-mode 1)))' would do it.
See `mozadd-refresh-edited-on-save-mode' for more information on Mozadd-Refresh-Edited-On-Save mode.

\(fn &optional ARG)" t nil)

(autoload (quote mozadd-mirror-mode) "mozadd" "\
Mirror content of current file buffer immediately in Firefox.
When you turn on this mode the file will be opened in Firefox.
Every change you make in the buffer will trigger a redraw in
Firefox - regardless of if you save the file or not.

For the mirroring to work the edited file must be shown in
Firefox and visible.

If `nxml-where-mode' is on the marks will also be shown in
Firefox as CSS outline style.  You can customize the style
through the option `mozadd-xml-path-outline-style'.

See also `mozadd-refresh-edited-on-save-mode'.

\(fn &optional ARG)" t nil)

(defvar global-mozadd-mirror-mode nil "\
Non-nil if Global-Mozadd-Mirror mode is enabled.
See the command `global-mozadd-mirror-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-mozadd-mirror-mode'.")

(nxhtml-custom-autoload (quote global-mozadd-mirror-mode) "mozadd" nil)

(autoload (quote global-mozadd-mirror-mode) "mozadd" "\
Toggle Mozadd-Mirror mode in every possible buffer.
With prefix ARG, turn Global-Mozadd-Mirror mode on if and only if ARG is positive.
Mozadd-Mirror mode is enabled in all buffers where `(lambda nil (when (mozadd-html-buffer-file-p) (mozadd-mirror-mode 1)))' would do it.
See `mozadd-mirror-mode' for more information on Mozadd-Mirror mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (mumamo-multi-major-modep mumamo-mark-for-refontification
;;;;;;  mumamo-hi-lock-faces mumamo) "mumamo" "util/mumamo.el" (19346
;;;;;;  1291))
;;; Generated autoloads from util/mumamo.el

(let ((loads (get (quote mumamo) (quote custom-loads)))) (if (member (quote "mumamo") loads) nil (put (quote mumamo) (quote custom-loads) (cons (quote "mumamo") loads))))

(let ((loads (get (quote mumamo-hi-lock-faces) (quote custom-loads)))) (if (member (quote "mumamo") loads) nil (put (quote mumamo-hi-lock-faces) (quote custom-loads) (cons (quote "mumamo") loads))))

(autoload (quote mumamo-mark-for-refontification) "mumamo" "\
Mark region between MIN and MAX for refontification.

\(fn MIN MAX)" nil nil)

(autoload (quote mumamo-multi-major-modep) "mumamo" "\
Return t if VALUE is a multi major mode function.

\(fn VALUE)" nil nil)

;;;***

;;;### (autoloads (mako-html-mumamo-mode org-mumamo-mode asp-html-mumamo-mode
;;;;;;  noweb2-mumamo-mode mumamo-noweb2 csound-sgml-mumamo-mode
;;;;;;  laszlo-nxml-mumamo-mode metapost-mumamo-mode ruby-heredoc-mumamo-mode
;;;;;;  python-heredoc-mumamo-mode cperl-heredoc-mumamo-mode perl-heredoc-mumamo-mode
;;;;;;  php-heredoc-mumamo-mode sh-heredoc-mumamo-mode eruby-html-mumamo-mode
;;;;;;  eruby-mumamo-mode jsp-html-mumamo-mode gsp-html-mumamo-mode
;;;;;;  ssjs-html-mumamo-mode smarty-html-mumamo-mode mjt-html-mumamo-mode
;;;;;;  genshi-html-mumamo-mode django-html-mumamo-mode embperl-html-mumamo-mode
;;;;;;  mason-html-mumamo-mode nxml-mumamo-mode html-mumamo-mode)
;;;;;;  "mumamo-fun" "util/mumamo-fun.el" (19346 1291))
;;; Generated autoloads from util/mumamo-fun.el

(autoload (quote html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for (X)HTML with main mode `html-mode'.
This covers inlined style and javascript and PHP." t)

(autoload (quote nxml-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for (X)HTML with main mode `nxml-mode'.
This covers inlined style and javascript and PHP.

See also `mumamo-alt-php-tags-mode'." t)

(autoload (quote mason-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Mason using main mode `html-mode'.
This covers inlined style and javascript and PHP.

See also `mumamo-alt-php-tags-mode'." t)

(autoload (quote embperl-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Embperl files with main mode `html-mode'.
This also covers inlined style and javascript." t)

(autoload (quote django-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Django with main mode `html-mode'.
This also covers inlined style and javascript." t)

(autoload (quote genshi-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Genshi with main mode `html-mode'.
This also covers inlined style and javascript.

Note: You will currently get fontification errors if you use
python chunks

  {% python ... %}

The reason is that the chunk routines currently do not know when
to just look for the } or %} endings.  However this should not
affect your editing normally." t)

(autoload (quote mjt-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for MJT with main mode `html-mode'.
This also covers inlined style and javascript." t)

(autoload (quote smarty-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Smarty with main mode `html-mode'.
This also covers inlined style and javascript." t)

(autoload (quote ssjs-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for SSJS with main mode `html-mode'.
This covers inlined style and javascript." t)

(autoload (quote gsp-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for GSP with main mode `html-mode'.
This also covers inlined style and javascript." t)

(autoload (quote jsp-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for JSP with main mode `html-mode'.
This also covers inlined style and javascript." t)

(autoload (quote eruby-mumamo-mode) "mumamo-fun" "\
Turn on multiple major mode for eRuby with unspecified main mode.
Current major-mode will be used as the main major mode." t)

(autoload (quote eruby-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for eRuby with main mode `html-mode'.
This also covers inlined style and javascript." t)

(autoload (quote sh-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for sh heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(autoload (quote php-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for PHP heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(autoload (quote perl-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Perl heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(autoload (quote cperl-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Perl heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes.

Note: I have seen some problems with this.  Use
`perl-mumamo-mode' instead for now." t)

(autoload (quote python-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Perl heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(autoload (quote ruby-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Ruby heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(autoload (quote metapost-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for MetaPost." t)

(autoload (quote laszlo-nxml-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for OpenLaszlo." t)

(autoload (quote csound-sgml-mumamo-mode) "mumamo-fun" "\
Turn on mutiple major modes for CSound orc/sco Modes." t)

(let ((loads (get (quote mumamo-noweb2) (quote custom-loads)))) (if (member (quote "mumamo-fun") loads) nil (put (quote mumamo-noweb2) (quote custom-loads) (cons (quote "mumamo-fun") loads))))

(autoload (quote noweb2-mumamo-mode) "mumamo-fun" "\
Multi major mode for noweb files." t)

(autoload (quote asp-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for ASP with main mode `html-mode'.
This also covers inlined style and javascript." t)

(autoload (quote org-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for `org-mode' files with main mode `org-mode'.
Unfortunately this only allows `html-mode' (not `nxhtml-mode') in
sub chunks." t)

(autoload (quote mako-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Mako with main mode `html-mode'.
This also covers inlined style and javascript." t)

;;;***

;;;### (autoloads (mumamo-add-region-from-string mumamo-add-region)
;;;;;;  "mumamo-regions" "util/mumamo-regions.el" (19346 1291))
;;; Generated autoloads from util/mumamo-regions.el

(autoload (quote mumamo-add-region) "mumamo-regions" "\
Add a mumamo region from selection.
Mumamo regions are like another layer of chunks above the normal chunks.
They does not affect the normal chunks, but they overrides them.

To create a mumamo region first select a visible region and then
call this function.

If the buffer is not in a multi major mode a temporary multi
major mode will be created applied to the buffer first.
To get out of this and get back to a single major mode just use

  M-x normal-mode

\(fn)" t nil)

(autoload (quote mumamo-add-region-from-string) "mumamo-regions" "\
Add a mumamo region from string at point.
Works as `mumamo-add-region' but for string or comment at point.

Buffer must be fontified.

\(fn)" t nil)

;;;***

;;;### (autoloads (n-back-game n-back) "n-back" "util/n-back.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/n-back.el

(let ((loads (get (quote n-back) (quote custom-loads)))) (if (member (quote "n-back") loads) nil (put (quote n-back) (quote custom-loads) (cons (quote "n-back") loads))))

(autoload (quote n-back-game) "n-back" "\
Emacs n-Back game.
This game is supposed to increase your working memory and fluid
intelligence.

In this game something is shown for half a second on the screen
and maybe a sound is played.  You should then answer if parts of
it is the same as you have seen or heard before.  This is
repeated for about 20 trials.

You answer with the keys shown in the bottom window.

In the easiest version of the game you should answer if you have
just seen or heard what is shown now.  By default the game gets
harder as you play it with success.  Then first the number of
items presented in a trial grows.  After that it gets harder by
that you have to somehow remember not the last item, but the item
before that (or even earlier). That is what \"n-Back\" stands
for.

Note that remember does not really mean remember clearly.  The
game is for training your brain getting used to keep those things
in the working memory, maybe as a cross-modal unit.  You are
supposed to just nearly be able to do what you do in the game.
And you are supposed to have fun, that is what your brain like.

You should probably not overdue this. Half an hour a day playing
might be an optimal time according to some people.

The game is shamelessly modeled after Brain Workshop, see URL
`http://brainworkshop.sourceforge.net/' just for the fun of
getting it into Emacs.  The game resembles but it not the same as
that used in the report by Jaeggi mentioned at the above URL.

Not all features in Brain Workshop are implemented here, but some
new are maybe ... - and you have it available here in Emacs.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-features-check nxhtml-customize nxhtml)
;;;;;;  "nxhtml" "nxhtml/nxhtml.el" (19346 1291))
;;; Generated autoloads from nxhtml/nxhtml.el

(let ((loads (get (quote nxhtml) (quote custom-loads)))) (if (member (quote "nxhtml") loads) nil (put (quote nxhtml) (quote custom-loads) (cons (quote "nxhtml") loads))))

(autoload (quote nxhtml-customize) "nxhtml" "\
Customize nXhtml.

\(fn)" t nil)

(autoload (quote nxhtml-features-check) "nxhtml" "\
Check if external modules used by nXhtml are found.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-report-bug) "nxhtml-bug" "nxhtml/nxhtml-bug.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from nxhtml/nxhtml-bug.el

(autoload (quote nxhtml-report-bug) "nxhtml-bug" "\
Report a bug in nXhtml.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-overview nxhtml-global-minor-mode nxhtml-minor-mode
;;;;;;  nxhtml-browse-region nxhtml-browse-file nxhtml-edit-with-gimp)
;;;;;;  "nxhtml-menu" "nxhtml/nxhtml-menu.el" (19346 1291))
;;; Generated autoloads from nxhtml/nxhtml-menu.el

(autoload (quote nxhtml-edit-with-gimp) "nxhtml-menu" "\
Edit with GIMP buffer or file at point.

\(fn)" t nil)

(autoload (quote nxhtml-browse-file) "nxhtml-menu" "\
View file in web browser.

\(fn FILE)" t nil)

(autoload (quote nxhtml-browse-region) "nxhtml-menu" "\
View region in web browser.

\(fn)" t nil)

(autoload (quote nxhtml-minor-mode) "nxhtml-menu" "\
Minor mode to turn on some key and menu bindings.
See `nxhtml-mode' for more information.

\(fn &optional ARG)" t nil)

(defvar nxhtml-global-minor-mode nil "\
Non-nil if Nxhtml-Global minor mode is enabled.
See the command `nxhtml-global-minor-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `nxhtml-global-minor-mode'.")

(nxhtml-custom-autoload (quote nxhtml-global-minor-mode) "nxhtml-menu" nil)

(autoload (quote nxhtml-global-minor-mode) "nxhtml-menu" "\
Toggle Nxhtml minor mode in every possible buffer.
With prefix ARG, turn Nxhtml-Global minor mode on if and only if ARG is positive.
Nxhtml minor mode is enabled in all buffers where `nxhtml-maybe-turn-on-minor-mode' would do it.
See `nxhtml-minor-mode' for more information on Nxhtml minor mode.

\(fn &optional ARG)" t nil)

(autoload (quote nxhtml-overview) "nxhtml-menu" "\
Show a HTML page with an overview of nXhtml.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-validation-header-mode nxhtml-short-tag-help
;;;;;;  nxhtml-mode) "nxhtml-mode" "nxhtml/nxhtml-mode.el" (19346
;;;;;;  1291))
;;; Generated autoloads from nxhtml/nxhtml-mode.el

(when (fboundp 'nxml-mode)
(autoload (quote nxhtml-mode) "nxhtml-mode" "\
Major mode for editing XHTML documents.
It is based on `nxml-mode' and adds some features that are useful
when editing XHTML files.\\<nxhtml-mode-map>

To see an overview in html format do \\[nxhtml-overview].

* Note: Please observe that when loading nXhtml some file
  associations are done, see `nxhtml-auto-mode-alist'.

The nXhtml menu is added by this mode (or actually the minor
mode `nxhtml-minor-mode') and gives quick access and an overview
of some other important features. These includes:

- multiple major modes, see `define-mumamo-multi-major-mode'
- easy uploading and viewing of files, see for example
  `html-upl-upload-file'
- validation in XHTML part for php etc, see
  `nxhtml-validation-header-mode' (you probably also want to know about
  `nxhtml-toggle-visible-warnings' for this!)
- converting of html to xhtml, see `tidy-buffer'

The XML menu contains functionality added by `nxml-mode' (on
which this major mode is based).  There is also a popup menu
added to the [apps] key.

The most important features are probably completion and
validation, which is inherited from `nxml-mode' with some small
addtions.  In very many situation you can use completion. To
access it type \\[nxml-complete]. Completion has been enhanced in
the following way:

- If region is active and visible then completion will surround the
  region with the chosen tag's start and end tag.  However only the
  starting point is checked for validity. If something is wrong after
  insertion you will however immediately see it if you have validation
  on.
- It can in some cases give assistance with attribute values.
- Completion can be customized, see the menus XHTML - Completion:
  * You can use a menu popup style completion.
  * You can have alternatives grouped.
  * You can get a short help text shown for each alternative.
- There does not have to be a '<' before point for tag name
  completion. (`nxml-mode' requires a '<' before point for tag name
  completion.)
- Completes xml version and encoding.
- Completes in an empty buffer, ie inserts a skeleton.

Some smaller, useful, but easy-to-miss features:

* Following links. The href and src attribute names are
  underlined and a special keymap is bound to
  them:\\<mlinks-mode-map>

    \\[mlinks-backward-link], \\[mlinks-forward-link] Move
        between underlined href/src attributes

    \\[mlinks-goto], Mouse-1 Follow link inside Emacs
        (if possible)

  It is even a little bit quicker when the links are in an active
  state (marked with the face `isearch'):\\<mlinks-active-hilight-keymap>

    \\[mlinks-backward-link], \\[mlinks-forward-link] Move
        between underlined href/src attributes
    \\[mlinks-goto], Mouse-1  Follow link inside Emacs (if possible)

  If the link is not into a file that you can edit (a mailto link
  for example) you will be prompted for an alternative action.

* Creating links. To make it easier to create links to id/name
  attribute in different files there are two special
  functions:\\<nxhtml-mode-map>

    \\[nxhtml-save-link-to-here] copy link to id/name (you must
        be in the tag to get the link)
    \\[nxhtml-paste-link-as-a-tag] paste this as an a-tag.

Here are all key bindings in nxhtml-mode itself:

\\{nxhtml-mode-map}

The minor mode `nxhtml-minor-mode' adds some bindings:

\\{nxhtml-minor-mode-map}

Notice that other minor mode key bindings may also be active, as
well as emulation modes. Do \\[describe-bindings] to get a list
of all active key bindings. Also, *VERY IMPORTANT*, if mumamo is
used in the buffer each mumamo chunk has a different major mode
with different key bindings. You can however still see all
bindings with \\[describe-bindings], but you have to do that with
point in the mumamo chunk you want to know the key bindings in.

---------
* Note: Some of the features supported by this mode are optional
  and available only if other Emacs modules are found.  Use
  \\[nxhtml-features-check] to get a list of these optional
  features and modules needed. You should however have no problem
  with this if you have followed the installation instructions
  for nXhtml.

\(fn)" t nil))

(autoload (quote nxhtml-short-tag-help) "nxhtml-mode" "\
Display description of tag TAG.  If TAG is omitted, try tag at point.

\(fn TAG)" t nil)

(when (fboundp 'nxml-mode)
(autoload (quote nxhtml-validation-header-mode) "nxhtml-mode" "\
If on use a Fictive XHTML Validation Header for the buffer.
See `nxhtml-set-validation-header' for information about Fictive XHTML Validation Headers.

This mode may be turned on automatically in two ways:
- If you try to do completion of a XHTML tag or attribute then
  `nxthml-mode' may ask you if you want to turn this mode on if
  needed.
- You can also choose to have it turned on automatically whenever
  a mumamo multi major mode is used, see
  `nxhtml-validation-header-if-mumamo' for further information.

\(fn &optional ARG)" t nil))

;;;***

;;;### (autoloads (mako-nxhtml-mumamo-mode asp-nxhtml-mumamo-mode
;;;;;;  eruby-nxhtml-mumamo-mode jsp-nxhtml-mumamo-mode gsp-nxhtml-mumamo-mode
;;;;;;  smarty-nxhtml-mumamo-mode mjt-nxhtml-mumamo-mode genshi-nxhtml-mumamo-mode
;;;;;;  django-nxhtml-mumamo-mode embperl-nxhtml-mumamo-mode nxhtml-mumamo-mode)
;;;;;;  "nxhtml-mumamo" "nxhtml/nxhtml-mumamo.el" (19346 1291))
;;; Generated autoloads from nxhtml/nxhtml-mumamo.el

(autoload (quote nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for (X)HTML with main mode `nxhtml-mode'.
This covers inlined style and javascript and PHP.

See also `mumamo-alt-php-tags-mode'." t)

(autoload (quote embperl-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Embperl files with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(autoload (quote django-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Django with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(autoload (quote genshi-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Genshi with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(autoload (quote mjt-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for MJT with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(autoload (quote smarty-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Smarty with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(autoload (quote gsp-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for GSP with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(autoload (quote jsp-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for JSP with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(autoload (quote eruby-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for eRuby with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(autoload (quote asp-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for ASP with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(autoload (quote mako-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Mako with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

;;;***

;;;### (autoloads (nxml-where-global-mode nxml-where-mode nxml-where)
;;;;;;  "nxml-where" "nxhtml/nxml-where.el" (19346 1291))
;;; Generated autoloads from nxhtml/nxml-where.el

(let ((loads (get (quote nxml-where) (quote custom-loads)))) (if (member (quote "nxml-where") loads) nil (put (quote nxml-where) (quote custom-loads) (cons (quote "nxml-where") loads))))

(autoload (quote nxml-where-mode) "nxml-where" "\
Shows path in mode line.

\(fn &optional ARG)" t nil)

(defvar nxml-where-global-mode nil "\
Non-nil if Nxml-Where-Global mode is enabled.
See the command `nxml-where-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `nxml-where-global-mode'.")

(nxhtml-custom-autoload (quote nxml-where-global-mode) "nxml-where" nil)

(autoload (quote nxml-where-global-mode) "nxml-where" "\
Toggle Nxml-Where mode in every possible buffer.
With prefix ARG, turn Nxml-Where-Global mode on if and only if ARG is positive.
Nxml-Where mode is enabled in all buffers where `nxml-where-turn-on-in-nxml-child' would do it.
See `nxml-where-mode' for more information on Nxml-Where mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ourcomments-warning ourcomments-M-x-menu-mode
;;;;;;  use-custom-style info-open-file grep-query-replace emacs-Q-nxhtml
;;;;;;  emacs-Q emacs--no-desktop emacs--debug-init emacs-buffer-file
;;;;;;  emacs emacs-restart ourcomments-ido-ctrl-tab ourcomments-ido-buffer-raise-frame
;;;;;;  ourcomments-ido-buffer-other-frame ourcomments-ido-buffer-other-window
;;;;;;  describe-symbol describe-defstruct describe-custom-group
;;;;;;  narrow-to-comment buffer-narrowed-p describe-command ourcomments-ediff-files
;;;;;;  find-emacs-other-file better-fringes-mode describe-key-and-map-briefly
;;;;;;  ourcomments-move-end-of-line ourcomments-move-beginning-of-line
;;;;;;  ourcomments-mark-whole-buffer-or-field unfill-individual-paragraphs
;;;;;;  unfill-region unfill-paragraph define-toggle popup-menu-at-point
;;;;;;  ourcomments-indirect-fun) "ourcomments-util" "util/ourcomments-util.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/ourcomments-util.el

(autoload (quote ourcomments-indirect-fun) "ourcomments-util" "\
Get the alias symbol for function FUN if any.

\(fn FUN)" nil nil)

(autoload (quote popup-menu-at-point) "ourcomments-util" "\
Popup the given menu at point.
This is similar to `popup-menu' and MENU and PREFIX has the same
meaning as there.  The position for the popup is however where
the window point is.

\(fn MENU &optional PREFIX)" nil nil)

(autoload (quote define-toggle) "ourcomments-util" "\
Declare SYMBOL as a customizable variable with a toggle function.
The purpose of this macro is to define a defcustom and a toggle
function suitable for use in a menu.

The arguments have the same meaning as for `defcustom' with these
restrictions:

- The :type keyword cannot be used.  Type is always 'boolean.
- VALUE must be t or nil.

DOC and ARGS are just passed to `defcustom'.

A `defcustom' named SYMBOL with doc-string DOC and a function
named SYMBOL-toggle is defined.  The function toggles the value
of SYMBOL.  It takes no parameters.

To create a menu item something similar to this can be used:

    (define-key map [SYMBOL]
      (list 'menu-item \"Toggle nice SYMBOL\"
            'SYMBOL-toggle
            :button '(:toggle . SYMBOL)))

\(fn SYMBOL VALUE DOC &rest ARGS)" nil (quote macro))

(autoload (quote unfill-paragraph) "ourcomments-util" "\
Unfill the current paragraph.

\(fn)" t nil)

(autoload (quote unfill-region) "ourcomments-util" "\
Unfill the current region.

\(fn)" t nil)

(autoload (quote unfill-individual-paragraphs) "ourcomments-util" "\
Unfill individual paragraphs in the current region.

\(fn)" t nil)

(autoload (quote ourcomments-mark-whole-buffer-or-field) "ourcomments-util" "\
Mark whole buffer or editable field at point.

\(fn)" t nil)

(autoload (quote ourcomments-move-beginning-of-line) "ourcomments-util" "\
Move point to beginning of line or indentation.
See `beginning-of-line' for ARG.

If `line-move-visual' is non-nil then the visual line beginning
is first tried.

If in a widget field stay in that.

\(fn ARG)" t nil)

(autoload (quote ourcomments-move-end-of-line) "ourcomments-util" "\
Move point to end of line or after last non blank char.
See `end-of-line' for ARG.

Similar to `ourcomments-move-beginning-of-line' but for end of
line.

\(fn ARG)" t nil)

(autoload (quote describe-key-and-map-briefly) "ourcomments-util" "\
Try to print names of keymap from which KEY fetch its definition.
Look in current active keymaps and find keymap variables with the
same value as the keymap where KEY is bound.  Print a message
with those keymap variable names.  Return a list with the keymap
variable symbols.

When called interactively prompt for KEY.

INSERT and UNTRANSLATED should normall be nil (and I am not sure
what they will do ;-).

\(fn &optional KEY INSERT UNTRANSLATED)" t nil)

(defvar better-fringes-mode nil "\
Non-nil if Better-Fringes mode is enabled.
See the command `better-fringes-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `better-fringes-mode'.")

(nxhtml-custom-autoload (quote better-fringes-mode) "ourcomments-util" nil)

(autoload (quote better-fringes-mode) "ourcomments-util" "\
Choose another fringe bitmap color and bottom angle.

\(fn &optional ARG)" t nil)

(autoload (quote find-emacs-other-file) "ourcomments-util" "\
Find corresponding file to source or installed elisp file.
If you have checked out and compiled Emacs yourself you may have
Emacs lisp files in two places, the checked out source tree and
the installed Emacs tree.  If buffer contains an Emacs elisp file
in one of these places then find the corresponding elisp file in
the other place. Return the file name of this file.

Rename current buffer using your `uniquify-buffer-name-style' if
it is set.

When DISPLAY-FILE is non-nil display this file in other window
and go to the same line number as in the current buffer.

\(fn DISPLAY-FILE)" t nil)

(autoload (quote ourcomments-ediff-files) "ourcomments-util" "\
In directory DEF-DIR run `ediff-files' on files FILE-A and FILE-B.
The purpose of this function is to make it eaiser to start
`ediff-files' from a shell through Emacs Client.

This is used in EmacsW32 in the file ediff.cmd where Emacs Client
is called like this:

  @%emacs_client% -e \"(setq default-directory \\\"%emacs_cd%\\\")\"
  @%emacs_client% -n  -e \"(ediff-files \\\"%f1%\\\" \\\"%f2%\\\")\"

It can of course be done in a similar way with other shells.

\(fn DEF-DIR FILE-A FILE-B)" nil nil)

(autoload (quote describe-command) "ourcomments-util" "\
Like `describe-function', but prompts only for interactive commands.

\(fn COMMAND)" t nil)

(autoload (quote buffer-narrowed-p) "ourcomments-util" "\
Return non-nil if the current buffer is narrowed.

\(fn)" nil nil)

(autoload (quote narrow-to-comment) "ourcomments-util" "\
Not documented

\(fn)" t nil)

(autoload (quote describe-custom-group) "ourcomments-util" "\
Describe customization group SYMBOL.

\(fn SYMBOL)" t nil)

(autoload (quote describe-defstruct) "ourcomments-util" "\
Not documented

\(fn SYMBOL)" t nil)

(autoload (quote describe-symbol) "ourcomments-util" "\
Show information about SYMBOL.
Show SYMBOL plist and whether is is a variable or/and a
function.

\(fn SYMBOL)" t nil)

(autoload (quote ourcomments-ido-buffer-other-window) "ourcomments-util" "\
Show buffer in other window.

\(fn)" t nil)

(autoload (quote ourcomments-ido-buffer-other-frame) "ourcomments-util" "\
Show buffer in other frame.

\(fn)" t nil)

(autoload (quote ourcomments-ido-buffer-raise-frame) "ourcomments-util" "\
Raise frame showing buffer.

\(fn)" t nil)

(defvar ourcomments-ido-ctrl-tab nil "\
Enable buffer switching using C-Tab with function `ido-mode'.
This changes buffer switching with function `ido-mode' the
following way:

- You can use C-Tab.

- You can show the selected buffer in three ways independent of
  how you entered function `ido-mode' buffer switching:

  * S-return: other window
  * C-return: other frame
  * M-return: raise frame

Those keys are selected to at least be a little bit reminiscent
of those in for example common web browsers.")

(nxhtml-custom-autoload (quote ourcomments-ido-ctrl-tab) "ourcomments-util" nil)

(autoload (quote emacs-restart) "ourcomments-util" "\
Restart Emacs and start `server-mode' if on before.

\(fn)" t nil)

(autoload (quote emacs) "ourcomments-util" "\
Start a new Emacs.

\(fn)" t nil)

(autoload (quote emacs-buffer-file) "ourcomments-util" "\
Start a new Emacs showing current buffer file.
Go to the current line and column in that file.
If there is no buffer file then instead start with `dired'.

\(fn)" t nil)

(autoload (quote emacs--debug-init) "ourcomments-util" "\
Not documented

\(fn)" t nil)

(autoload (quote emacs--no-desktop) "ourcomments-util" "\
Not documented

\(fn)" t nil)

(autoload (quote emacs-Q) "ourcomments-util" "\
Start new Emacs without any customization whatsoever.

\(fn)" t nil)

(autoload (quote emacs-Q-nxhtml) "ourcomments-util" "\
Start new Emacs with -Q and load nXhtml.

\(fn)" t nil)

(autoload (quote grep-query-replace) "ourcomments-util" "\
Do `query-replace-regexp' of FROM with TO, on all files in *grep*.
Third arg DELIMITED (prefix arg) means replace only word-delimited matches.
If you exit (\\[keyboard-quit], RET or q), you can resume the query replace
with the command \\[tags-loop-continue].

\(fn FROM TO &optional DELIMITED)" t nil)

(autoload (quote info-open-file) "ourcomments-util" "\
Open an info file in `Info-mode'.

\(fn INFO-FILE)" t nil)

(autoload (quote use-custom-style) "ourcomments-util" "\
Setup like in `Custom-mode', but without things specific to Custom.

\(fn)" nil nil)

(defvar ourcomments-M-x-menu-mode nil "\
Non-nil if Ourcomments-M-X-Menu mode is enabled.
See the command `ourcomments-M-x-menu-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ourcomments-M-x-menu-mode'.")

(nxhtml-custom-autoload (quote ourcomments-M-x-menu-mode) "ourcomments-util" nil)

(autoload (quote ourcomments-M-x-menu-mode) "ourcomments-util" "\
Add commands started from Emacs menus to M-x history.
The purpose of this is to make it easier to redo them and easier
to learn how to do them from the command line (which is often
faster if you know how to do it).

Only commands that are not already in M-x history are added.

\(fn &optional ARG)" t nil)

(autoload (quote ourcomments-warning) "ourcomments-util" "\
Not documented

\(fn FORMAT-STRING &rest ARGS)" nil nil)

;;;***

;;;### (autoloads (major-modep major-or-multi-majorp) "ourcomments-widgets"
;;;;;;  "util/ourcomments-widgets.el" (19346 1291))
;;; Generated autoloads from util/ourcomments-widgets.el
 (autoload 'command "ourcomments-widgets")

(autoload (quote major-or-multi-majorp) "ourcomments-widgets" "\
Return t if VALUE is a major or multi major mode function.

\(fn VALUE)" nil nil)

(autoload (quote major-modep) "ourcomments-widgets" "\
Return t if VALUE is a major mode function.

\(fn VALUE)" nil nil)
 (autoload 'major-mode-function "ourcomments-widgets")

;;;***

;;;### (autoloads (pause-mode pause) "pause" "util/pause.el" (19346
;;;;;;  1291))
;;; Generated autoloads from util/pause.el

(let ((loads (get (quote pause) (quote custom-loads)))) (if (member (quote "pause") loads) nil (put (quote pause) (quote custom-loads) (cons (quote "pause") loads))))

(defvar pause-mode nil "\
Non-nil if Pause mode is enabled.
See the command `pause-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pause-mode'.")

(nxhtml-custom-autoload (quote pause-mode) "pause" nil)

(autoload (quote pause-mode) "pause" "\
This minor mode tries to make you take a break!
To customize it see:

 `pause-after-minutes'
 `pause-text-color'
 `pause-prompt1-color'
 `pause-prompt2-color'
 `pause-message-color'

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (php-mode php-file-patterns php) "php-mode" "related/php-mode.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/php-mode.el

(let ((loads (get (quote php) (quote custom-loads)))) (if (member (quote "php-mode") loads) nil (put (quote php) (quote custom-loads) (cons (quote "php-mode") loads))))

(defvar php-file-patterns (quote ("\\.php[s34]?\\'" "\\.phtml\\'" "\\.inc\\'")) "\
List of file patterns for which to automatically invoke `php-mode'.")

(nxhtml-custom-autoload (quote php-file-patterns) "php-mode" nil)

(autoload (quote php-mode) "php-mode" "\
Major mode for editing PHP code.

\\{php-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (global-pointback-mode pointback-mode) "pointback"
;;;;;;  "util/pointback.el" (19346 1291))
;;; Generated autoloads from util/pointback.el

(autoload (quote pointback-mode) "pointback" "\
Restore previous window point when switching back to a buffer.

\(fn &optional ARG)" t nil)

(defvar global-pointback-mode nil "\
Non-nil if Global-Pointback mode is enabled.
See the command `global-pointback-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-pointback-mode'.")

(nxhtml-custom-autoload (quote global-pointback-mode) "pointback" nil)

(autoload (quote global-pointback-mode) "pointback" "\
Toggle Pointback mode in every possible buffer.
With prefix ARG, turn Global-Pointback mode on if and only if ARG is positive.
Pointback mode is enabled in all buffers where `pointback-on' would do it.
See `pointback-mode' for more information on Pointback mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (popcmp) "popcmp" "util/popcmp.el" (19346 1291))
;;; Generated autoloads from util/popcmp.el

(let ((loads (get (quote popcmp) (quote custom-loads)))) (if (member (quote "popcmp") loads) nil (put (quote popcmp) (quote custom-loads) (cons (quote "popcmp") loads))))

;;;***

;;;### (autoloads (rebind-keys-mode rebind) "rebind" "util/rebind.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/rebind.el

(let ((loads (get (quote rebind) (quote custom-loads)))) (if (member (quote "rebind") loads) nil (put (quote rebind) (quote custom-loads) (cons (quote "rebind") loads))))

(defvar rebind-keys-mode nil "\
Non-nil if Rebind-Keys mode is enabled.
See the command `rebind-keys-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `rebind-keys-mode'.")

(nxhtml-custom-autoload (quote rebind-keys-mode) "rebind" nil)

(autoload (quote rebind-keys-mode) "rebind" "\
Rebind keys as defined in `rebind-keys'.
The key bindings will override almost all other key bindings
since it is put on emulation level, like for example ``cua-mode'
and `viper-mode'.

This is for using for example C-a to mark the whole buffer (or a
field). There are some predifined keybindings for this.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (rnc-mode) "rnc-mode" "util/rnc-mode.el" (19346
;;;;;;  1291))
;;; Generated autoloads from util/rnc-mode.el

(autoload (quote rnc-mode) "rnc-mode" "\
Major mode for editing RELAX NG Compact Syntax schemas.
\\{rnc-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (rngalt-set-validation-header) "rngalt" "nxhtml/rngalt.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from nxhtml/rngalt.el

(autoload (quote rngalt-set-validation-header) "rngalt" "\
Not documented

\(fn START-OF-DOC)" nil nil)

;;;***

;;;### (autoloads (search-form) "search-form" "util/search-form.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/search-form.el

(autoload (quote search-form) "search-form" "\
Display a form for search and replace.

\(fn)" t nil)

;;;***

;;;### (autoloads (sex-mode sex) "sex-mode" "util/sex-mode.el" (19346
;;;;;;  1291))
;;; Generated autoloads from util/sex-mode.el

(let ((loads (get (quote sex) (quote custom-loads)))) (if (member (quote "sex-mode") loads) nil (put (quote sex) (quote custom-loads) (cons (quote "sex-mode") loads))))

(defvar sex-mode nil "\
Non-nil if Sex mode is enabled.
See the command `sex-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sex-mode'.")

(nxhtml-custom-autoload (quote sex-mode) "sex-mode" nil)

(autoload (quote sex-mode) "sex-mode" "\
Open certain files in external programs.
See `sex-get-file-open-cmd' for how to determine which files to
open by external applications.  Note that this selection is
nearly the same as in `org-mode'.  The main difference is that
the fallback always is to open a file in Emacs. (This is
necessary to avoid to disturb many of Emacs operations.)

This affects all functions that opens files, like `find-file',
`find-file-noselect' etc.

However it does not affect files opened through Emacs client.

Urls can also be handled, see `sex-handle-urls'.

When opening a file with the shell a (temporary) dummy buffer is
created in Emacs with major mode `sex-file-mode' and an external
program is called to handle the file.  How this dummy buffer is
handled is governed by `sex-keep-dummy-buffer'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (smarty-mode smarty) "smarty-mode" "related/smarty-mode.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/smarty-mode.el

(let ((loads (get (quote smarty) (quote custom-loads)))) (if (member (quote "smarty-mode") loads) nil (put (quote smarty) (quote custom-loads) (cons (quote "smarty-mode") loads))))

(autoload (quote smarty-mode) "smarty-mode" "\
Smarty Mode
***********

Smarty Mode is a GNU XEmacs major mode for editing Smarty templates.

1 Introduction
**************

Smarty-Mode is a mode allowing easy edit of Smarty templates:
highlight, templates, navigation into source files...



Features (new features in bold) :

   * Completion

   * Customizable

   * Highlight

   * Menu

   * Stuttering

   * Templates
        - Built-in Functions

        - User Functions

        - Variable Modifiers

        - Plugin (Functions)
             * BlockRepeatPlugin

             * ClipCache

             * Smarty Formtool

             * Smarty Paginate

             * Smarty Validate

        - Plugin (Variable Modifiers)
             * AlternativeDateModifierPlugin

             * B2Smilies

             * BBCodePlugin

        - Fonctions Non-Smarty



This manual describes Smarty Mode version 0.0.5.

2 Installation
**************

2.1 Requirements
================

Smarty Mode is a XEmacs major mode that needs the following
software/packages:

   * XEmacs (http://www.xemacs.org/).

   * `font-lock' mode generaly installed with XEmacs.

   * `assoc' mode generaly installed with XEmacs.

   * `easymenu' mode generaly installed with XEmacs.

   * `hippie-exp' mode generaly installed with XEmacs.

Before continuing, you must be sure to have all this packages
installed.

2.2 Download
============

Two internet address to download Smarty Mode :

   * Principal: Smarty-Mode 0.0.5
     (http://deboutv.free.fr/lisp/smarty/download/smarty-0.0.5.tar.gz)
     (http://deboutv.free.fr/lisp/smarty/)

   * Secondary: Smarty-Mode 0.0.5
     (http://www.morinie.fr/lisp/smarty/download/smarty-0.0.5.tar.gz)
     (http://www.morinie.fr/lisp/smarty/)

   * Old releases: Smarty-Mode
     (http://deboutv.free.fr/lisp/smarty/download.php)
     (http://deboutv.free.fr/lisp/smarty/)

2.3 Installation
================

2.3.1 Installation
------------------

To install Smarty Mode you need to choose an installation directory
\(for example `/usr/local/share/lisp' or `c:lisp'). The administrator
must have the write rights on this directory.

With your favorite unzip software, unzip the archive in the
installation directory.

Example:
     cd /usr/local/share/lisp
     tar zxvf smarty-0.0.5.tar.gz
Now you have a `smarty' directory in the installation directory. This
directory contains 2 files `smarty-mode.el' and `smarty-mode.elc' and
another directory `docs' containing the documentation.

You need to configure XEmacs. open you initialization file `init.el'
\(open the file or start XEmacs then choose the Options menu and Edit
Init File). Add the following lines (the installation directory in
this example is `/usr/local/share/lisp') :

     (setq load-path
           (append (list \"/usr/local/share/lisp/\") load-path))
     (autoload 'smarty-mode \"smarty-mode\" \"Smarty Mode\" t)

2.3.2 Update
------------

The update is easy. You need to unzip the archive in the installation
directory to remove the old release.

Example:
     cd /usr/local/share/lisp
     rm -rf smarty
     tar zxvf smarty-0.0.5.tar.gz

2.4 Invoke Smarty-Mode
======================

You have two possibilities to invoke the Smarty Mode.

   - Manually: At each file opening you need to launch Smarty Mode
     with the following command:

     `M-x smarty-mode'

   - Automatically: Add the following linesin your initialization
     file `init.el' :

          (setq auto-mode-alist
                (append
                 '((\"\\.tpl$\" . smarty-mode))
          	 auto-mode-alist))


3 Customization
***************

This chapter describes the differents parameters and functions that
you can change to customize Smarty Mode.  To do that, open a Smarty
file, click on the Smarty menu and choose Options then Browse
Options....

3.1 Parameters
==============

3.1.1 Mode
----------

Smarty Mode has 2 modes allowing to simplify the writing of Smarty
templates. You can enable/disable each mode individually.

`smarty-electric-mode'
     Type: boolean
     Default value: `t'
     Description: If `t'; enable automatic generation of template.
     If `nil'; template generators can still be invoked through key
     bindings and menu. Is indicated in the modeline by \"/e\" after
     the mode name and can be toggled by `smarty-electric-mode'.

`smarty-stutter-mode'
     Type: boolean
     Default value: `t'
     Description: If `t'; enable the stuttering. Is indicated in the
     modeline by \"/s\" after the mode name and can be toggled by
     `smarty-stutter-mode'.

3.1.2 Menu
----------

Smarty Mode has also 1 menu that you can enable/disable. The menu
Sources is specific to each Smarty files opened.

`smarty-source-file-menu'
     Type: boolean
     Default value: `t'
     Description: If `t'; the Sources menu is enabled. This menu
     contains the list of Smarty file located in the current
     directory. The Sources menu scans the directory when a file is
     opened.

3.1.3 Menu
----------

`smarty-highlight-plugin-functions'
     Type: boolean
     Default value: `t'
     Description: If `t'; the functions described in the smarty
     plugins are highlighted.

3.1.4 Templates
---------------

3.1.4.1 Header
..............

`smarty-file-header'
     Type: string
     Default value: `\"\"'
     Description: String or file to insert as file header. If the
     string specifies an existing file name the contents of the file
     is inserted; otherwise the string itself is inserted as file
     header.
     Type `C-j' for newlines.
     The follonwing keywords are supported:
     <filename>: replaced by the file name.
     <author>: replaced by the user name and email address.
     <login>: replaced by `user-login-name'.
     <company>: replaced by `smarty-company-name' content.
     <date>: replaced by the current date.
     <year>: replaced by the current year.
     <copyright>: replaced by `smarty-copyright-string' content.
     <cursor>: final cursor position.

`smarty-file-footer'
     Type: string
     Default value: `\"\"'
     Description: String or file to insert as file footer.  See
     `smarty-file-header'

`smarty-company-name'
     Type: string
     Default value: `\"\"'
     Description: Name of the company to insert in file header.

`smarty-copyright-string'
     Type: string
     Default value: `\"\"'
     Description: Coryright string to insert in file header.

`smarty-date-format'
     Type: string
     Default value: `\"%Y-%m-%d\"'
     Description: Date format.

`smarty-modify-date-prefix-string'
     Type: string
     Default value: `\"\"'
     Description: Prefix string of modification date in Smarty file
     header.

`smarty-modify-date-on-saving'
     Type: bool
     Default value: `nil'
     Description: If `t'; update the modification date when the
     buffer is saved.

3.1.5 Miscellaneous
-------------------

`smarty-left-delimiter'
     Type: string
     Default value: `\"\"'
     Description: Left escaping delimiter for Smarty templates.

`smarty-right-delimiter'
     Type: string
     Default value: `\"\"'
     Description: Right escaping delimiter for Smarty templates.

`smarty-intelligent-tab'
     Type: bool
     Default value: `t'
     Description: If `t'; TAB does indentation; completion and insert
     tabulations. If `nil'; TAB does only indentation.

`smarty-word-completion-in-minibuffer'
     Type: bool
     Default value: `t'
     Description: If `t'; enable completion in the minibuffer.

`smarty-word-completion-case-sensitive'
     Type: bool
     Default value: `nil'
     Description: If `t'; completion is case sensitive.

3.2 Functions
=============

3.2.1 Mode
----------

`smarty-electric-mode'
     Menu: Smarty -> Options -> Mode -> Electric Mode
     Keybinding: `C-c C-m C-e'
     Description: This functions is used to enable/disable the
     electric mode.

`smarty-stutter-mode'
     Menu: Smarty -> Options -> Mode -> Stutter Mode
     Keybinding: `C-c C-m C-s'
     Description: This function is used to enable/disable the stutter
     mode.

4 Menus
*******

There are 2 menus: Smarty and Sources. All theses menus can be
accessed from the menubar or from the right click. This chapter
describes each menus.

4.1 Smarty
==========

This is the main menu of Smarty Mode. It allows an easy access to the
main features of the Smarty Mode: Templates (see *Note Templates::)
and Options (see *Note Customization::).

This menu contains also 3 functions that are discussed in the next
part.

4.1.1 Functions
---------------

`smarty-show-messages'
     Menu: Smarty -> Show Messages
     Keybinding: `C-c M-m'
     Description: This function opens the *Messages* buffer to
     display previous error messages.

`smarty-doc-mode'
     Menu: Smarty -> Smarty Mode Documentation
     Keybinding: `C-c C-h'
     Description: This function opens the *Help* buffer and prints in
     it the Smarty Mode documentation.

`smarty-version'
     Menu: Smarty -> Version
     Keybinding: `C-c C-v'
     Description: This function displays in the minibuffer the
     current Smarty Mode version with the timestamp.

4.2 Sources
===========

The Sources menu shows the Smarty files in the current directory. If
you add or delete a file in the current directory, you need to
refresh the menu.

4.2.1 Customization
-------------------

`smarty-source-file-menu'
     Type: boolean
     Default value: `t'
     Description: If `t'; the Sources menu is enabled. This menu
     contains the list of Smarty file located in the current
     directory. The Sources menu scans the directory when a file is
     opened.

4.2.2 Functions
---------------

`smarty-add-source-files-menu'
     Menu: Sources -> *Rescan*
     Keybinding: `C-c C-s C-u'
     Description: This function is used to refresh the Sources menu.

5 Stuttering
************

The stutter mode is a mode that affects a function to a key. For
example, when you use the `ENTER' key, the associated function will
create a new line and indent it.

5.1 Customization
=================

`smarty-stutter-mode'
     Type: boolean
     Default value: `t'
     Description: If `t'; enable the stuttering. Is indicated in the
     modeline by \"/s\" after the mode name and can be toggled by
     `smarty-stutter-mode'.

5.2 Functions
=============

`SPACE'
     If in comment, indent the comment and add new line if necessary.
     In other case, add a space.

`('
     If the previous character is a `(', the `((' will be replaced by
     `['.
     If the previous character is a `[', the `[(' will be replaced by
     `{'.
     In other case, insert a `('.

`)'
     If the previous character is a `)', the `))' will be replaced by
     `]'.
     If the previous character is a `]', the `])' will be replaced by
     `}'.
     In other case, insert a `)'.

6 Templates
***********

In the Smarty Mode, the Smarty functions (like if, while, for, fopen,
fclose) are predefined in functions called \"Templates\".

Each template can be invoked by the function name or by using the
<SPACE> key after the Smarty function name in the buffer (Note, using
`M-<SPACE>' disable the template).

A template can be aborted by using the `C-g' or by lefting empty the
tempate prompt (in the minibuffer).

6.1 Customization
=================

`smarty-electric-mode'
     Type: boolean
     Default value: `t'
     Description: If `t'; enable automatic generation of template.
     If `nil'; template generators can still be invoked through key
     bindings and menu. Is indicated in the modeline by \"/e\" after
     the mode name and can be toggled by `smarty-electric-mode'.

For a complete description of the template customizable variables,
see *Note Cu01-Pa01-Template::

6.2 Functions
=============

6.2.1 Smarty Functions
----------------------

For Smarty functions, see PDF or HTML documentation.

6.2.2 Non-Smarty Functions
--------------------------

`smarty-template-header'
     Menu: Smarty -> Templates -> Insert Header
     Keybinding: `C-c C-t C-h'
     Description: This function is used to insert a header in the
     current buffer.

`smarty-template-footer'
     Menu: Smarty -> Templates -> Insert Footer
     Keybinding: `C-c C-t C-f'
     Description: This function is used to insert a footer in the
     current buffer.

`smarty-template-insert-date'
     Menu: Smarty -> Templates -> Insert Date
     Keybinding: `C-c C-t C-d i'
     Description: This function is used to insert the date in the
     current buffer.

`smarty-template-modify'
     Menu: Smarty -> Templates -> Modify Date
     Keybinding: `C-c C-t C-d m'
     Description: This function is used to modify the last
     modification date in the current buffer.

7 Bugs, Help
************

   * To report bugs: Bugtracker
     (http://bugtracker.morinie.fr/lisp/set_project.php?project_id=2)

   * To obtain help you can post on the dedicated forum: Forum
     (http://forum.morinie.fr/lisp/)

8 Key bindings
**************

\\{smarty-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (tabkey2-mode tabkey2-emma-without-tabkey2 tabkey2)
;;;;;;  "tabkey2" "util/tabkey2.el" (19346 1291))
;;; Generated autoloads from util/tabkey2.el

(let ((loads (get (quote tabkey2) (quote custom-loads)))) (if (member (quote "tabkey2") loads) nil (put (quote tabkey2) (quote custom-loads) (cons (quote "tabkey2") loads))))

(autoload (quote tabkey2-emma-without-tabkey2) "tabkey2" "\
Not documented

\(fn)" nil nil)

(defvar tabkey2-mode nil "\
Non-nil if Tabkey2 mode is enabled.
See the command `tabkey2-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabkey2-mode'.")

(nxhtml-custom-autoload (quote tabkey2-mode) "tabkey2" nil)

(autoload (quote tabkey2-mode) "tabkey2" "\
More fun with Tab key number two (completion etc).
This global minor mode by default binds Tab in a way that let you
do completion with Tab in all buffers (where it is possible).

The Tab key is easy to type on your keyboard.  Then why not use
it for completion, something that is very useful?  Shells usually
use Tab for completion so many are used to it.  This was the idea
of Smart Tabs and this is a generalization of that idea.

However in Emacs the Tab key is usually used for indentation.
The idea here is that if Tab has been pressed once for
indentation, then as long as point stays further Tab keys might
as well do completion.

So you kind of do Tab-Tab for first completion (and then just
Tab for further completions as long as point is not moved).

And there is even kind of Tab-Tab-Tab completion: If completion
fails the next completion function will be the one you try with
next Tab. (You get some notification of this, of course.)

See `tabkey2-first' for more information about usage.

Note: If you do not want the Tab-Tab behaviour above, but still
want an easy way to reach the available completion functions,
then you can instead of turning on tabkey2-mode enter this in
your .emacs:

 (global-set-key [f8] 'tabkey2-cycle-completion-functions)

After hitting f8 you will then be in the same state as after the
first in tabkey2-mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (tidy-build-menu tidy) "tidy-xhtml" "nxhtml/tidy-xhtml.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from nxhtml/tidy-xhtml.el

(let ((loads (get (quote tidy) (quote custom-loads)))) (if (member (quote "tidy-xhtml") loads) nil (put (quote tidy) (quote custom-loads) (cons (quote "tidy-xhtml") loads))))

(autoload (quote tidy-build-menu) "tidy-xhtml" "\
Set up the tidy menu in MAP.
Used to set up a Tidy menu in your favourite mode.

\(fn &optional MAP)" t nil)

;;;***

;;;### (autoloads (tt-mode) "tt-mode" "related/tt-mode.el" (19346
;;;;;;  1291))
;;; Generated autoloads from related/tt-mode.el

(autoload (quote tt-mode) "tt-mode" "\
Major mode for editing Template Toolkit files.

\(fn)" t nil)

;;;***

;;;### (autoloads (tyda-lookup-word) "tyda" "util/tyda.el" (19346
;;;;;;  1291))
;;; Generated autoloads from util/tyda.el

(autoload (quote tyda-lookup-word) "tyda" "\
Look up word WORD at URL `http://tyda.se/'.
This site translates between English and Swedish.  The site will
be opened in your webbrowser with WORD looked up.

\(fn WORD)" t nil)

;;;***

;;;### (autoloads (udev-call-first-step) "udev" "util/udev.el" (19346
;;;;;;  1291))
;;; Generated autoloads from util/udev.el

(autoload (quote udev-call-first-step) "udev" "\
Set up and call first step.
Set up buffer LOG-BUFFER to be used for log messages and
controling of the execution of the functions in list STEPS which
are executed one after another.

Write HEADER at the end of LOG-BUFFER.

Call first step.

If FINISH-FUN non-nil it should be a function. This is called
after last step with LOG-BUFFER as parameter.

\(fn LOG-BUFFER STEPS HEADER FINISH-FUN)" nil nil)

;;;***

;;;### (autoloads (udev-cedet-utest udev-cedet-customize-startup
;;;;;;  udev-cedet-update) "udev-cedet" "util/udev-cedet.el" (19346
;;;;;;  1291))
;;; Generated autoloads from util/udev-cedet.el

(autoload (quote udev-cedet-update) "udev-cedet" "\
Fetch and install CEDET from the development sources.
To determine where to store the sources see `udev-cedet-dir'.
For how to start CEDET see `udev-cedet-load-cedet'.

Note that if you install CEDET yourself you should not use this function.

\(fn)" t nil)

(autoload (quote udev-cedet-customize-startup) "udev-cedet" "\
Customize CEDET dev nXhtml startup group.

\(fn)" t nil)

(autoload (quote udev-cedet-utest) "udev-cedet" "\
Start CEDET unit tests.
These runs in a fresh Emacs.

\(fn)" t nil)

;;;***

;;;### (autoloads (udev-ecb-customize-startup udev-ecb-update) "udev-ecb"
;;;;;;  "util/udev-ecb.el" (19346 1291))
;;; Generated autoloads from util/udev-ecb.el

(autoload (quote udev-ecb-update) "udev-ecb" "\
Fetch and install ECB from the devel sources.
To determine where to store the sources see `udev-ecb-dir'.
For how to start ECB see `udev-ecb-load-ecb'.

\(fn)" t nil)

(autoload (quote udev-ecb-customize-startup) "udev-ecb" "\
Customize ECB dev nXhtml startup group.

\(fn)" t nil)

;;;***

;;;### (autoloads (udev-fmcss-update) "udev-flymake-css" "util/udev-flymake-css.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/udev-flymake-css.el

(autoload (quote udev-fmcss-update) "udev-flymake-css" "\
Fetch and install flymake css from sources.
To determine where to store the sources see `udev-fmcss-dir'.

\(fn)" t nil)

;;;***

;;;### (autoloads (udev-rinari-update) "udev-rinari" "util/udev-rinari.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/udev-rinari.el

(autoload (quote udev-rinari-update) "udev-rinari" "\
Fetch and install Rinari from the devel sources.
To determine where to store the sources and how to start rinari
see `udev-rinari-dir' and `udev-rinari-load-rinari'.

\(fn)" t nil)

;;;***

;;;### (autoloads (viper-tutorial) "viper-tut" "util/viper-tut.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/viper-tut.el

(autoload (quote viper-tutorial) "viper-tut" "\
Run a tutorial for Viper.
If any of the standard Viper key bindings that are used in the
tutorial have been changed then an explanatory note about this is
shown in the beginning of the tutorial buffer.

When the tutorial buffer is killed the content and point position
in the buffer is saved so that the tutorial may be resumed
later.

\(fn PART &optional DONT-ASK-FOR-REVERT)" t nil)

;;;***

;;;### (autoloads (visual-basic-mode) "visual-basic-mode" "related/visual-basic-mode.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/visual-basic-mode.el

(autoload (quote visual-basic-mode) "visual-basic-mode" "\
A mode for editing Microsoft Visual Basic programs.
Features automatic indentation, font locking, keyword capitalization,
and some minor convenience functions.
Commands:
\\{visual-basic-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (vline-global-mode vline-mode) "vline" "util/vline.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/vline.el

(autoload (quote vline-mode) "vline" "\
Display vertical line mode.

\(fn &optional ARG)" t nil)

(defvar vline-global-mode nil "\
Non-nil if Vline-Global mode is enabled.
See the command `vline-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `vline-global-mode'.")

(nxhtml-custom-autoload (quote vline-global-mode) "vline" nil)

(autoload (quote vline-global-mode) "vline" "\
Display vertical line mode as globally.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (nxhtml-download web-vcs-get-files-from-root) "web-vcs"
;;;;;;  "util/web-vcs.el" (19346 1291))
;;; Generated autoloads from util/web-vcs.el

(autoload (quote web-vcs-get-files-from-root) "web-vcs" "\
Download a file tree from VCS system using the web interface.
Use WEB-VCS entry in variable `web-vcs-links-regexp' to download
files via http from URL to directory DL-DIR.

Show URL first and offer to visit the page.  That page will give
you information about version control system (VCS) system used
etc.

\(fn WEB-VCS URL DL-DIR)" nil nil)

(autoload (quote nxhtml-download) "web-vcs" "\
Download or update nXhtml.
If you already have nXhtml installed you can update it with this
command.  Otherwise after downloading read the instructions in
README.txt in the download directory for setting up nXhtml.
\(This requires adding only one line to your .emacs, but you may
optionally also byte compile the files from the nXhtml menu.)

To learn more about nXhtml visit its home page at URL
`http://www.emacswiki.com/NxhtmlMode/'.

\(fn)" t nil)

;;;***

;;;### (autoloads (whelp) "whelp" "util/whelp.el" (19346 1291))
;;; Generated autoloads from util/whelp.el

(let ((loads (get (quote whelp) (quote custom-loads)))) (if (member (quote "whelp") loads) nil (put (quote whelp) (quote custom-loads) (cons (quote "whelp") loads))))

;;;***

;;;### (autoloads (wikipedia-draft-buffer wikipedia-draft-page wikipedia-draft
;;;;;;  wikipedia-mode) "wikipedia-mode" "related/wikipedia-mode.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from related/wikipedia-mode.el

(autoload (quote wikipedia-mode) "wikipedia-mode" "\
Major mode for editing wikimedia style wikis.
Major mode for editing articles written in the markup language
used by Wikipedia, the free on-line
encyclopedia (see URL `http://www.wikipedia.org').

There are several ways to use wikipedia-mode:

- You can simply cut and paste articles between Emacs and your
  web browser's text box.
- If you are using Firefox you can use the It's All Text add-on
  for Firefox.
- You can use MozEx, a Mozilla/Firefox web browser extension that
  allows you to call Emacs from a text
  box (see URL `http://mozex.mozdev.org/').
- Another way is to use the PERL script ee-helper, which allows
  you to up and download wiki texts.

Wikipedia articles are usually unfilled: newline characters are not
used for breaking paragraphs into lines. Unfortunately, Emacs does not
handle word wrapping yet. As a workaround, wikipedia-mode turns on
longlines-mode automatically. In case something goes wrong, the
following commands may come in handy:

\\[wikipedia-fill-article] fills the buffer.
\\[wikipedia-unfill-article] unfills the buffer.
Be warned that function can be dead  slow, better use wikipedia-unfill-paragraph-or-region.
\\[wikipedia-unfill-paragraph-or-region] unfills the paragraph
\\[wikipedia-unfill-paragraph-simple] doehe same but simpler.



The following commands put in markup structures.

\\[wikipedia-insert-bold-italic] bold+italic
\\[wikipedia-insert-bold] bold text
\\[wikipedia-insert-italics] italics
\\[wikipedia-insert-nowiki] no wiki markup
\\[wikipedia-insert-link-wiki] inserts a link

The following commands are also defined:
\\[wikipedia-insert-user] inserts user name
\\[wikipedia-insert-signature] inserts ~~~~
\\[wikipedia-insert-enumerate] inserts enumerate type structures
\\[wikipedia-insert-itemize] inserts itemize type structures
\\[wikipedia-insert-hline] inserts a hline

The draft functionality
\\[wikipedia-draft]
\\[wikipedia-draft-region]
\\[wikipedia-draft-view-draft]
\\[wikipedia-draft-page]
\\[wikipedia-draft-buffer]

Replying and sending functionality
\\[wikipedia-reply-at-point-simple]
\\[wikipedia-draft-reply]


The register functionality
\\[wikipedia-copy-page-to-register]
\\[defun wikipedia-insert-page-to-register]


Some simple editing commands.
\\[wikipedia-enhance-indent]
\\[wikipedia-yank-prefix]
\\[wikipedia-unfill-paragraph-or-region]



\\[wikipedia-terminate-paragraph]     starts a new list item or paragraph in a context-aware manner.

\(fn)" t nil)

(autoload (quote wikipedia-draft) "wikipedia-mode" "\
Open a temporary buffer in wikipedia mode for editing an
 wikipedia draft, which an arbitrary piece of data. After
 finishing the editing either use \\[wikipedia-draft-buffer] to
 send the data into the wikipedia-draft-data-file, or send the
 buffer using `wikipedia-draft-send-to-mozex' and insert it later
 into a wikipedia article.

\(fn)" t nil)

(autoload (quote wikipedia-draft-page) "wikipedia-mode" "\
Not documented

\(fn)" t nil)

(autoload (quote wikipedia-draft-buffer) "wikipedia-mode" "\
Wikipedia-draft-buffer sends the contents of the current (temporary)
buffer to the wikipedia-draft-buffer, see the variable
wikipedia-draft-data-file.

\(fn)" t nil)

(defvar wikipedia-draft-send-archive t "\
*Archive the reply.")

;;;***

;;;### (autoloads (winsav-switch-config winsav-save-full-config winsav-save-mode
;;;;;;  winsav winsav-put-window-tree) "winsav" "util/winsav.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/winsav.el

(autoload (quote winsav-put-window-tree) "winsav" "\
Put window structure SAVED-TREE into WINDOW.
Restore a structure SAVED-TREE returned from
`winsav-get-window-tree' into window WINDOW.

If COPY-WIN-OVL is non-nil then overlays having a 'window
property pointing to one of the windows in SAVED-TREE where this
window still is shown will be copied to a new overlay with
'window property pointing to the corresponding new window.

If WIN-OVL-ALL-BUFS is non-nil then all buffers will be searched
for overlays with a 'window property of the kind above.

At the very end of this function the hook `winsav-after-put' is
run.

\(fn SAVED-TREE WINDOW &optional COPY-WIN-OVL WIN-OVL-ALL-BUFS)" nil nil)

(let ((loads (get (quote winsav) (quote custom-loads)))) (if (member (quote "winsav") loads) nil (put (quote winsav) (quote custom-loads) (cons (quote "winsav") loads))))

(defvar winsav-save-mode nil "\
Non-nil if Winsav-Save mode is enabled.
See the command `winsav-save-mode' for a description of this minor mode.")

(nxhtml-custom-autoload (quote winsav-save-mode) "winsav" nil)

(autoload (quote winsav-save-mode) "winsav" "\
Toggle winsav configuration saving mode.
With numeric ARG, turn winsav saving on if ARG is positive, off
otherwise.

When this mode is turned on, winsav configurations are saved from
one session to another.  A winsav configuration consists of
frames, windows and visible buffers configurations plus
optionally buffers and files managed by the functions used by
option `desktop-save-mode'

By default this is integrated with `desktop-save-mode'.  If
`desktop-save-mode' is on and `winsav-handle-also-desktop' is
non-nil then save and restore also desktop.

See the command `winsav-switch-config' for more information and
other possibilities.

Note: If you want to avoid saving when you exit just turn off
this minor mode.

For information about what is saved and restored and how to save
and restore additional information see the function
`winsav-save-configuration'.

\(fn &optional ARG)" t nil)

(autoload (quote winsav-save-full-config) "winsav" "\
Saved current winsav configuration in directory DIRNAME.
Then change to this configuration.

See also `winsav-switch-config'.

\(fn DIRNAME)" nil nil)

(autoload (quote winsav-switch-config) "winsav" "\
Change to winsav configuration in directory DIRNAME.
If DIRNAME is the current winsav configuration directory then
offer to save it or restore it from saved values.

Otherwise, before switching offer to save the current winsav
configuration.  Then finally switch to the new winsav
configuration, creating it if it does not exist.

If option `desktop-save-mode' is on then buffers and files are also
restored and saved the same way.

See also option `winsav-save-mode' and command
`winsav-tell-configuration'.

\(fn DIRNAME)" t nil)

;;;***

;;;### (autoloads (winsize-save-window-configuration winsize-balance-siblings
;;;;;;  resize-windows) "winsize" "util/winsize.el" (19346 1291))
;;; Generated autoloads from util/winsize.el

(autoload (quote resize-windows) "winsize" "\
Start window resizing.
During resizing a window is selected.  You can move its
borders. In the default configuration the arrow keys moves the
right or bottom border if they are there. To move the opposite
border use S-arrowkeys.

You can also do other window operations, like splitting, deleting
and balancing the sizes.  The keybindings below describes the key
bindings during resizing:\\<winsize-keymap>

  `balance-windows'                      \\[balance-windows]
  `winsize-balance-siblings'             \\[winsize-balance-siblings]
  `fit-window-to-buffer'                 \\[fit-window-to-buffer]
  `shrink-window-if-larger-than-buffer'  \\[shrink-window-if-larger-than-buffer]

  `winsav-rotate'                        \\[winsav-rotate]

  `winsize-move-border-up'      \\[winsize-move-border-up]
  `winsize-move-border-down'    \\[winsize-move-border-down]
  `winsize-move-border-left'    \\[winsize-move-border-left]
  `winsize-move-border-right'   \\[winsize-move-border-right]

  `winsize-to-border-or-window-left'    \\[winsize-to-border-or-window-left]
  `winsize-to-border-or-window-up'      \\[winsize-to-border-or-window-up]
  `winsize-to-border-or-window-right'   \\[winsize-to-border-or-window-right]
  `winsize-to-border-or-window-down'    \\[winsize-to-border-or-window-down]

   Note that you can also use your normal keys for
   `forward-char', `backward-char', `next-line', `previous-line'
   and what you have on HOME and END to move in the windows. That
   might sometimes be necessary to directly select a
   window. (You may however also use `other-window' or click
   with the mouse, see below.)

  `delete-window'                \\[delete-window]
  `delete-other-windows'         \\[delete-other-windows]
  `split-window-vertically'      \\[split-window-vertically]
  `split-window-horizontally'    \\[split-window-horizontally]
  `other-window'                 \\[other-window]

  `winsize-save-window-configuration'       \\[winsize-save-window-configuration]
  `winsize-next-window-configuration'       \\[winsize-next-window-configuration]
  `winsize-previous-window-configuration'   \\[winsize-previous-window-configuration]

  `mouse-set-point'   \\[mouse-set-point]

  `winsize-quit'               \\[winsize-quit]
  `winsize-stop-go-back'       \\[winsize-stop-go-back]
  `winsize-stop'               \\[winsize-stop]
  `winsize-stop-and-execute'   \\[winsize-stop-and-execute]

  `winsize-help'          \\[winsize-help]
  `describe-key'          \\[describe-key]
  `describe-key-briefly'  \\[describe-key-briefly]
  (All the normal help keys work, and at least those above will
  play well with resizing.)

Nearly all other keys exits window resizing and they are also
executed.  However, the key sequences in `winsize-let-me-use' and
dito for commands there are also executed without exiting
resizing.

The colors of the modelines are changed to those given in
`winsize-mode-line-colors' to indicate that you are resizing
windows.  To make this indication more prominent the text in the
selected window is marked with the face hold in the variable
`winsize-selected-window-face'.

The option `winsize-juris-way' decides how the borders to move
are selected. If this option is non-nil then the right or bottom
border are the ones that are moved with the arrow keys and the
opposite border with shift arrow keys.

If `winsize-juris-way' is nil then the following apply:

As you select other borders or move to new a window the mouse
pointer is moved inside the selected window to show which borders
are beeing moved. The mouse jumps a little bit to make its
position more visible. You can turn this off by customizing
`winsize-make-mouse-prominent'.

Which borders initially are choosen are controlled by the
variable `winsize-autoselect-borders'.

** Example: Border selection, movements and windows.

  Suppose you have a frame divided into windows like in the
  figure below.  If window B is selected when you start resizing
  then (with default settings) the borders marked with 'v' and
  'h' will be the ones that the arrow keys moves. To indicate
  this the mouse pointer is placed in the right lower corner of
  the selected window B.

    +----------+-----------+--------+
    |          |           v        |
    |          |           v        |
    |    A     |    _B_    v        |
    |          |           v        |
    |          |           v        |
    |          |         x v        |
    +hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    +----------+---------+----------+

  Now if you press M-<left> then the picture below shows what has
  happened. Note that the selected vertical border is now the one
  between A and B. The mouse pointer has moved to the
  corresponding corner in the window B, which is still selected.

    +----------+-----------+--------+
    |          v           |        |
    |          v           |        |
    |    A     v    _B_    |        |
    |          v           |        |
    |          v           |        |
    |          v x         |        |
    +hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    +----------+---------+----------+

  Press M-<left> once again. This gives this picture:

    +----------+-----------+--------+
    |          v           |        |
    |          v           |        |
    |   _A_    v     B     |        |
    |          v           |        |
    |          v           |        |
    |        x v           |        |
    +hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    +----------+---------+----------+

  Note that the window A is now selected. However there is no
  border that could be moved to the left of this window (which
  would otherwise be chosen now) so the border between A and B is
  still the one that <left> and <right> moves. The mouse has
  moved to A.

  If we now delete window A the new situation will look like
  this:

    +----------+-----------+--------+
    |                      |        |
    |                      |        |
    |         _B_          |        |
    |                      |        |
    |                      |        |
    |                    x |        |
    +hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    +----------+---------+----------+



>>>> testing stuff >>>>
`help-mode-hook'
`temp-buffer-show-function'
`view-exit-action'
<<<<<<<<<<<<<<<<<<<<<<<

\(fn)" t nil)

(autoload (quote winsize-balance-siblings) "winsize" "\
Make current window siblings the same height or width.
It works the same way as `balance-windows', but only for the
current window and its siblings.

\(fn)" t nil)

(autoload (quote winsize-save-window-configuration) "winsize" "\
Not documented

\(fn)" t nil)

;;;***

;;;### (autoloads (wrap-to-fill-column-mode wrap-to-fill-left-marg-modes
;;;;;;  wrap-to-fill-left-marg wrap-to-fill) "wrap-to-fill" "util/wrap-to-fill.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/wrap-to-fill.el

(let ((loads (get (quote wrap-to-fill) (quote custom-loads)))) (if (member (quote "wrap-to-fill") loads) nil (put (quote wrap-to-fill) (quote custom-loads) (cons (quote "wrap-to-fill") loads))))

(defvar wrap-to-fill-left-marg nil "\
Left margin handling for `wrap-to-fill-column-mode'.
Used by `wrap-to-fill-column-mode'. If nil then center the
display columns. Otherwise it should be a number which will be
the left margin.")

(nxhtml-custom-autoload (quote wrap-to-fill-left-marg) "wrap-to-fill" t)

(defvar wrap-to-fill-left-marg-modes (quote (text-mode fundamental-mode)) "\
Major modes where `wrap-to-fill-left-margin' may be nil.")

(nxhtml-custom-autoload (quote wrap-to-fill-left-marg-modes) "wrap-to-fill" t)

(autoload (quote wrap-to-fill-column-mode) "wrap-to-fill" "\
Use `fill-column' display columns in buffer windows.
By default the display columns are centered, but see the option
`wrap-to-fill-left-marg'.

Fix-me:
Note 1: When turning this on `visual-line-mode' is also turned on. This
is not reset when turning off this mode.

Note 2: The text properties 'wrap-prefix and 'wrap-to-fill-prefix
is set by this mode to indent continuation lines.

Key bindings added by this minor mode:

\\{wrap-to-fill-column-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (xhtml-help xhtml-help-show-tag-ref xhtml-help-tag-at-point
;;;;;;  xhtml-help-show-css-ref) "xhtml-help" "nxhtml/xhtml-help.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from nxhtml/xhtml-help.el

(autoload (quote xhtml-help-show-css-ref) "xhtml-help" "\
Show CSS reference for CSS property name at point.

\(fn)" t nil)

(autoload (quote xhtml-help-tag-at-point) "xhtml-help" "\
Get xhtml tag name at or before point.

\(fn)" nil nil)

(autoload (quote xhtml-help-show-tag-ref) "xhtml-help" "\
Show xhtml reference for tag name at or before point.

\(fn)" t nil)

(let ((loads (get (quote xhtml-help) (quote custom-loads)))) (if (member (quote "xhtml-help") loads) nil (put (quote xhtml-help) (quote custom-loads) (cons (quote "xhtml-help") loads))))

;;;***

;;;### (autoloads (zencoding-preview zencoding-expand-yas zencoding-mode
;;;;;;  zencoding-expand-line zencoding) "zencoding-mode" "util/zencoding-mode.el"
;;;;;;  (19346 1291))
;;; Generated autoloads from util/zencoding-mode.el

(let ((loads (get (quote zencoding) (quote custom-loads)))) (if (member (quote "zencoding-mode") loads) nil (put (quote zencoding) (quote custom-loads) (cons (quote "zencoding-mode") loads))))

(autoload (quote zencoding-expand-line) "zencoding-mode" "\
Replace the current line's zencode expression with the corresponding expansion.
If prefix ARG is given or region is visible call `zencoding-preview' to start an
interactive preview.

Otherwise expand line directly.

For more information see `zencoding-mode'.

\(fn ARG)" t nil)

(autoload (quote zencoding-mode) "zencoding-mode" "\
Minor mode for writing HTML and CSS markup.
With zen coding for HTML and CSS you can write a line like

  ul#name>li.item*2

and have it expanded to

  <ul id=\"name\">
    <li class=\"item\"></li>
    <li class=\"item\"></li>
  </ul>

This minor mode defines keys for quick access:

\\{zencoding-mode-keymap}

Home page URL `http://www.emacswiki.org/emacs/ZenCoding'.

See also `zencoding-expand-line'.

\(fn &optional ARG)" t nil)

(autoload (quote zencoding-expand-yas) "zencoding-mode" "\
Not documented

\(fn)" t nil)

(autoload (quote zencoding-preview) "zencoding-mode" "\
Expand zencode between BEG and END interactively.
This will show a preview of the expanded zen code and you can
accept it or skip it.

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads nil nil ("autostart.el" "autostart22.el" "etc/schema/schema-path-patch.el"
;;;;;;  "nxhtml/html-imenu.el" "nxhtml/html-move.el" "nxhtml/html-quote.el"
;;;;;;  "nxhtml/nxhtml-autoload.el" "nxhtml/nxhtml-strval.el" "nxhtml/nxhtmljs.el"
;;;;;;  "nxhtml/outline-magic.el" "nxhtml/wtest.el" "related/flymake-helpers.el"
;;;;;;  "related/flymakemsg.el" "related/flymu.el" "related/php-imenu.el"
;;;;;;  "util/appmenu-fold.el" "util/buffer-bg.el" "util/css-simple-completion.el"
;;;;;;  "util/custsets.el" "util/ecb-batch-compile.el" "util/ffip.el"
;;;;;;  "util/fupd.el" "util/hfy-cmap.el" "util/htmlfontify.el" "util/key-cat.el"
;;;;;;  "util/mumamo-aspnet.el" "util/mumamo-trace.el" "util/new-key-seq-widget.el"
;;;;;;  "util/nxml-mode-os-additions.el" "util/ocr-user.el" "util/org-panel.el"
;;;;;;  "util/rxi.el" "util/udev-nxhtml.el" "util/useful-commands.el")
;;;;;;  (19346 2737 210110))

;;;***

;;;### (autoloads (nxhtmlmaint-byte-uncompile-all nxhtmlmaint-start-byte-compilation)
;;;;;;  "nxhtmlmaint" "nxhtmlmaint.el" (19346 1291))
;;; Generated autoloads from nxhtmlmaint.el

(autoload (quote nxhtmlmaint-start-byte-compilation) "nxhtmlmaint" "\
Start byte compilation of nXhtml in new Emacs instance.
Byte compiling in general makes elisp code run 5-10 times faster
which is quite noticeable when you use nXhtml.

This will also update the file nxhtml-loaddefs.el.

You must restart Emacs to use the byte compiled files.

If for some reason the byte compiled files does not work you can
remove then with `nxhtmlmaint-byte-uncompile-all'.

\(fn)" t nil)

(autoload (quote nxhtmlmaint-byte-uncompile-all) "nxhtmlmaint" "\
Delete byte compiled files in nXhtml.
This will also update the file nxhtml-loaddefs.el.

See `nxhtmlmaint-start-byte-compilation' for byte compiling.

\(fn)" t nil)

;;;***
