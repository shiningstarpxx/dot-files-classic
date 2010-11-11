;;;; tdtd-font.el --- Font-lock keywords for Tony's DTD mode
;; $Id: tdtd-font.el,v 1.3 1999/03/23 13:07:29 tkg Exp $
;; $Name: tdtd071 $
;;
;; Copyright (C) 1999, Tony Graham
;;
;; Author: Tony Graham <tgraham@mulberrytech.com>

;;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;; Generated by tdtd-font-maker.el
;; Do not modify this file.  Make changes in tdtd-font-maker.el
;; and regenerate.

;; Send bugs to tdtd-bug@menteith.com


(defvar dtd-sgml-font-lock-keywords
  '(("<!--[^-]*\\(-[^-]+\\)*-->" . font-lock-comment-face) ("--[^-]*\\(-[^-]+\\)*--" . font-lock-comment-face) ("<!--[^-]*\\(-[^-]+\\)*-->" . font-lock-comment-face) ("[%&][^; \t]+;" . font-lock-reference-face) ("\\(<!\\(ATTLIST\\|ENTITY\\(\\s-+%\\|\\)\\|NOTATION\\)\\)\\s-+\\(\\S-+\\)[^>]+\\(>\\)" (1 font-lock-keyword-face) (4 font-lock-variable-name-face) (5 font-lock-keyword-face)) ("\\(<!DOCTYPE\\)\\s-+\\([^[]+\\)\\s-+\\(\\[\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-keyword-face)) ("\\(<!ELEMENT\\)\\s-+\\([^ \t()|]+\\)\\s-+[^>]+\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-keyword-face)) ("\\(<!\\[\\)[^[]*\\(\\[\\)" (1 font-lock-keyword-face) (2 font-lock-keyword-face)) ("\\(<!\\(SHORTREF\\|USEMAP\\)\\)\\s-+\\(\\S-+\\)[^>]+\\(>\\)" (1 font-lock-keyword-face) (3 font-lock-variable-name-face) (4 font-lock-keyword-face)) ("\\(<!ELEMENT\\)\\s-+\\([^ \t()|]+\\)\\s-+\\(o\\s-+o\\|O\\s-+O\\|-\\s-+[oO]\\|[oO]\\s-+-\\)\\s-+[^>]+\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-keyword-face) (4 font-lock-keyword-face)) ("\\(\\(-\\|+\\)(\\)[^)]*\\()\\)" (1 font-lock-variable-name-face) (3 font-lock-variable-name-face)) ("\\(<!LINKTYPE\\)\\s-+\\([^ \t]+\\)\\s-+\\([^ \t]+\\)\\s-+\\(\\#IMPLIED\\)[ \t\n]*\\(\\[\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-variable-name-face) (4 font-lock-keyword-face) (5 font-lock-keyword-face)) ("\\(<!LINKTYPE\\)\\s-+\\([^ \t]+\\)\\s-+\\([^ \t]+\\)\\s-+\\([^ \t]+\\)\\s-*\\(\\[\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-variable-name-face) (4 font-lock-type-face) (5 font-lock-keyword-face)) ("\\(<!IDLINK\\)\\b[^>]+\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-keyword-face)) ("\\(<\\?\\)\\([^ \t>]+\\)\\s-*[^>]*\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-keyword-face)) ("\\(#\\(ALL\\|C\\(ONREF\\|URRENT\\)\\|DEFAULT\\|FIXED\\|I\\(MPLI\\(CIT\\|ED\\)\\|NITIAL\\)\\|NOTATION\\|P\\(CDATA\\|OSTLINK\\)\\|RE\\(QUIRED\\|STORE\\)\\|SIMPLE\\|USELINK\\)\\|+//\\(\\|IDN\\)\\|-//\\|//\\)\\b" (1 font-lock-type-face)) ("\\b\\(A\\(NY\\|TTLIST\\)\\|CDATA\\|D\\(ATA\\|OCTYPE\\|TD\\)\\|E\\(LEMENT\\|MPTY\\|NTIT\\(IES\\|Y\\)\\|XPLICIT\\)\\|I\\(D\\(\\|LINK\\|REFS?\\)\\|MPLICIT\\)\\|LINK\\(\\|TYPE\\)\\|N\\(AME\\(\\|CHAR\\|S\\)\\|DATA\\|MTOKENS?\\|OTATION\\|U\\(MBERS?\\|TOKENS?\\)\\)\\|P\\(OSTLINK\\|UBLIC\\)\\|RCDATA\\|S\\(DATA\\|HORTREF\\|IMPLE\\|UBDOC\\|YSTEM\\)\\|TEMP\\|USE\\(LINK\\|MAP\\)\\)\\b" (1 font-lock-type-face)) ("\\(\\]?\\]\\)\\s-*\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-keyword-face)) ("\\('\\)[^']*\\('\\)" (1 font-lock-string-face) (2 font-lock-string-face)) ("\\(\"\\)[^\"]*\\(\"\\)" (1 font-lock-string-face) (2 font-lock-string-face)) ("[,()|&]" . font-lock-function-name-face) ("[+*?]" . font-lock-string-face)))

(defvar dtd-xml-font-lock-keywords
  '(("<!--[^-]*\\(-[^-]+\\)*-->" . font-lock-comment-face) ("[%&][^; \t]+;" . font-lock-reference-face) ("\\(<!\\(ATTLIST\\|ENTITY\\(\\s-+%\\|\\)\\|NOTATION\\)\\)\\s-+\\(\\S-+\\)[^>]+\\(>\\)" (1 font-lock-keyword-face) (4 font-lock-variable-name-face) (5 font-lock-keyword-face)) ("\\(<!DOCTYPE\\)\\s-+\\([^[]+\\)\\s-+\\(\\[\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-keyword-face)) ("\\(<!ELEMENT\\)\\s-+\\([^ \t()|]+\\)\\s-+[^>]+\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-keyword-face)) ("\\(<!\\[\\)[^[]*\\(\\[\\)" (1 font-lock-keyword-face) (2 font-lock-keyword-face)) ("\\(<\\?\\)\\(xml\\)\\(\\s-+version\\s-*=\\s-*\\('[^']+'\\|\"[^\"]+\"\\)\\)?\\(\\s-+encoding\\s-*=\\s-*\\('[^']+'\\|\"[^\"]+\"\\)\\)?\\(\\s-+standalone\\s-*=\\s-*\\('\\(yes\\|no\\)'\\|\"\\(yes\\|no\\)\"\\)\\)?\\s-*\\(\\?>\\)" (1 font-lock-keyword-face) (2 font-lock-type-face nil) (3 font-lock-type-face nil t) (5 font-lock-type-face nil t) (7 font-lock-type-face nil t) (11 font-lock-keyword-face)) ("\\(<\\?\\)\\([^ \t?>]+\\)\\s-*\\([^?>]\\|\\?[^>]\\|>[^\n\r]\\)*\\(\\?>\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (4 font-lock-keyword-face)) ("\\(#\\(DEFAULT\\|FIXED\\|IMPLIED\\|NOTATION\\|PCDATA\\|REQUIRED\\)\\|+//\\(\\|IDN\\)\\|-//\\|//\\)\\b" (1 font-lock-type-face)) ("\\b\\(xml:\\(l\\(ang\\|ink\\)\\|space\\)\\)\\b" (1 font-lock-type-face)) ("\\b\\(A\\(NY\\|TTLIST\\)\\|C\\(APACITY\\|DATA\\|HARSET\\)\\|D\\(OC\\(TYPE\\|UMENT\\)\\|TD\\)\\|E\\(LEMENTS?\\|MPTY\\|NTIT\\(IES\\|Y\\)\\)\\|ID\\(\\|REFS?\\)\\|LPD\\|N\\(DATA\\|MTOKENS?\\|O\\(NSGML\\|TATION\\)\\|UTOKENS?\\)\\|PUBLIC\\|S\\(HORTREF\\|UBDOC\\|Y\\(NTAX\\|STEM\\)\\)\\|TEXT\\|XML\\|xml\\)\\b" (1 font-lock-type-face)) ("\\(\\]?\\]\\)\\s-*\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-keyword-face)) ("\\('\\)[^']*\\('\\)" (1 font-lock-string-face) (2 font-lock-string-face)) ("\\(\"\\)[^\"]*\\(\"\\)" (1 font-lock-string-face) (2 font-lock-string-face)) ("[,()|&]" . font-lock-function-name-face) ("[+*?]" . font-lock-string-face)))

(defvar dtd-decl-font-lock-keywords
  '(("--[^-]*\\(-[^-]+\\)*--" . font-lock-comment-face) ("<!--[^-]*\\(-[^-]+\\)*-->" . font-lock-comment-face) ("[%&][^; \t]+;" . font-lock-reference-face) ("\\(<!\\(ATTLIST\\|ENTITY\\(\\s-+%\\|\\)\\|NOTATION\\)\\)\\s-+\\(\\S-+\\)[^>]+\\(>\\)" (1 font-lock-keyword-face) (4 font-lock-variable-name-face) (5 font-lock-keyword-face)) ("\\(<!DOCTYPE\\)\\s-+\\([^[]+\\)\\s-+\\(\\[\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-keyword-face)) ("\\(<!ELEMENT\\)\\s-+\\([^ \t()|]+\\)\\s-+[^>]+\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-variable-name-face) (3 font-lock-keyword-face)) ("\\(<!\\[\\)[^[]*\\(\\[\\)" (1 font-lock-keyword-face) (2 font-lock-keyword-face)) ("\\(<!SGML\\)\\s-+\\([^>]\\|>[^$]\\)+\\(>$\\)" (1 font-lock-keyword-face) (3 font-lock-keyword-face)) ("\\b\\(A\\(LL\\|N[DY]\\|PPINFO\\|TT\\(C\\(AP\\|HCAP\\|NT\\)\\|LIST\\|RIB\\|SPLEN\\)\\|VGRPCAP\\)\\|B\\(ASESET\\|B\\|SEQLEN\\)\\|C\\(APACITY\\|DATA\\|HARSET\\|O\\(M\\|N\\(CUR\\|REF\\|TROLS\\)\\)\\|RO\\|URRENT\\)\\|D\\(ATATAG\\|E\\(FAULT\\|LIM\\|SCSET\\)\\|OC\\(TYPE\\|UMENT\\)\\|S[CO]\\|T\\(AGLEN\\|D\\|EMPLEN\\|G[CO]\\)\\)\\|E\\(LEM\\(CAP\\|ENTS?\\)\\|MPTY\\(\\|NRM\\)\\|N\\(DTAG\\|T\\(C\\(AP\\|HCAP\\)\\|IT\\(IES\\|Y\\)\\|LVL\\)\\)\\|RO\\|TAGO\\|X\\(GRPCAP\\|NMCAP\\|PLICIT\\)\\)\\|F\\(EATURES\\|IXED\\|ORMAL\\|UNC\\(HAR\\|TION\\)\\)\\|G\\(ENERAL\\|RP\\([CO]\\|C\\(AP\\|NT\\)\\|GTCNT\\|LVL\\)\\)\\|HCRO\\|I\\(D\\(\\|CAP\\|LINK\\|REF\\(\\|CAP\\|S\\)\\)\\|GNORE\\|M\\(MEDNET\\|PL\\(I\\(CIT\\|ED\\)\\|YDEF\\)\\)\\|N\\(CLUDE\\|ITIAL\\|STANCE\\|TE\\(GRAL\\|RNAL\\)\\)\\)\\|KEEPRSRE\\|L\\(CNM\\(CHAR\\|STRT\\)\\|I\\(NK\\(\\|TYPE\\)\\|T\\(\\|A\\|LEN\\)\\)\\|K\\(NMCAP\\|SETCAP\\)\\|PD\\)\\|M\\([DS]\\|APCAP\\|D[CO]\\|IN\\(IMIZE\\|US\\)\\|S\\(C\\|ICHAR\\|OCHAR\\|SCHAR\\)\\)\\|N\\(AM\\(E\\(\\|C\\(ASE\\|HAR\\)\\|LEN\\|S\\(\\|TRT\\)\\)\\|ING\\)\\|DATA\\|E\\(STC\\|T\\(\\|ENABL\\)\\)\\|MTOKENS?\\|O\\(\\|ASSERT\\|N\\(E\\|SGML\\)\\|RMSEP\\|T\\(ATION\\|C\\(AP\\|HCAP\\)\\)\\)\\|U\\(MBERS?\\|TOKENS?\\)\\)\\|O\\(\\|MIT\\(NAME\\|TAG\\)\\|PT\\|R\\|THER\\)\\|P\\(CDATA\\|ERO\\|I\\(\\|[CO]\\|LEN\\)\\|LUS\\|OSTLINK\\|UBLIC\\)\\|QUANTITY\\|R\\([ES]\\|ANK\\|CDATA\\|E\\([FP]\\|FC\\|QUIRED\\|STORE\\)\\|NI\\)\\|S\\(COPE\\|DATA\\|E\\(EALSO\\|PCHAR\\|Q\\)\\|GMLREF\\|H\\(ORT\\(REF\\|TAG\\)\\|UNCHAR\\)\\|IMPLE\\|PACE\\|TA\\(GO\\|RTTAG\\)\\|UBDOC\\|WITCHES\\|Y\\(NTAX\\|STEM\\)\\)\\|T\\(A\\(B\\|G\\(C\\|L\\(EN\\|VL\\)\\)\\)\\|E\\(MP\\|XT\\)\\|OTALCAP\\|YPE\\)\\|U\\(CNM\\(CHAR\\|STRT\\)\\|N\\(CLOSED\\|USED\\)\\|RN\\|SE\\(LINK\\|MAP\\)\\)\\|V\\(AL\\(IDITY\\|UE\\)\\|I\\)\\|YES\\)\\b" (1 font-lock-type-face)) ("\\(ISO 8879\\(-1986\\|:1986\\(\\|(\\(ENR)\\|WWW)\\)\\)\\)\\)" (1 font-lock-type-face)) ("\\(-//\\|//\\)\\b" (1 font-lock-type-face)) ("\\(\\]?\\]\\)\\s-*\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-keyword-face)) ("\\('\\)[^']*\\('\\)" (1 font-lock-string-face) (2 font-lock-string-face)) ("\\(\"\\)[^\"]*\\(\"\\)" (1 font-lock-string-face) (2 font-lock-string-face)) ("[,()|&]" . font-lock-function-name-face) ("[+*?]" . font-lock-string-face)))

(defvar dtd-sys-decl-font-lock-keywords
  '(("--[^-]*\\(-[^-]+\\)*--" . font-lock-comment-face) ("[%&][^; \t]+;" . font-lock-reference-face) ("\\(<!SYSTEM\\)\\([^>]\\|>[^$]\\)+\\(>$\\)" (1 font-lock-keyword-face) (3 font-lock-keyword-face)) ("\\(+//\\(\\|IDN\\)\\|-//\\|//\\)\\b" (1 font-lock-type-face)) ("\\b\\(A\\(LL\\|N[DY]\\|SN1\\|TT\\(C\\(AP\\|HCAP\\|NT\\)\\|LIST\\|RIB\\|SPLEN\\)\\|VGRPCAP\\)\\|B\\(ASESET\\|B\\|SEQLEN\\)\\|C\\(APACITY\\|DATA\\|HA\\(NGES\\|RSET\\)\\|O\\(M\\|N\\(CUR\\|REF\\|TROLS\\)\\)\\|RO\\|URRENT\\)\\|D\\(ATATAG\\|E\\(FAULT\\|LIM\\(\\|LEN\\)\\|SCSET\\)\\|OC\\(TYPE\\|UMENT\\)\\|S[CO]\\|T\\(AGLEN\\|D\\|EMPLEN\\|G[CO]\\)\\)\\|E\\(LEM\\(CAP\\|ENTS?\\)\\|MPTY\\(\\|NRM\\)\\|N\\(DTAG\\|T\\(C\\(AP\\|HCAP\\)\\|IT\\(IES\\|Y\\)\\|LVL\\)\\)\\|RO\\|TAGO\\|X\\(CLUDE\\|GRPCAP\\|NMCAP\\|PLICIT\\)\\)\\|F\\(EATURES\\|IXED\\|ORMAL\\|UNC\\(HAR\\|TION\\)\\)\\|G\\(ENERAL\\|RP\\([CO]\\|C\\(AP\\|NT\\)\\|GTCNT\\|LVL\\)\\)\\|HCRO\\|I\\(D\\(\\|CAP\\|LINK\\|REF\\(\\|CAP\\|S\\)\\)\\|GNORE\\|M\\(MEDNET\\|PL\\(I\\(CIT\\|ED\\)\\|YDEF\\)\\)\\|N\\(CLUDE\\|ITIAL\\|STANCE\\|TE\\(GRAL\\|RNAL\\)\\)\\)\\|KEEPRSRE\\|L\\(CNM\\(CHAR\\|STRT\\)\\|I\\(NK\\(\\|TYPE\\)\\|T\\(\\|A\\|LEN\\)\\)\\|K\\(NMCAP\\|SETCAP\\)\\|PD\\)\\|M\\([DS]\\|APCAP\\|D[CO]\\|IN\\(IMIZE\\|US\\)\\|ODEL\\|S\\(C\\|ICHAR\\|OCHAR\\|SCHAR\\)\\)\\|N\\(AM\\(E\\(\\|C\\(ASE\\|HAR\\)\\|LEN\\|S\\(\\|TRT\\)\\)\\|ING\\)\\|DATA\\|E\\(STC\\|T\\(\\|ENABL\\)\\)\\|MTOKENS?\\|O\\(\\|ASSERT\\|N\\(E\\|SGML\\)\\|RMSEP\\|T\\(ATION\\|C\\(AP\\|HCAP\\)\\)\\)\\|U\\(MBERS?\\|TOKENS?\\)\\)\\|O\\(\\|MIT\\(NAME\\|TAG\\)\\|PT\\|R\\|THER\\)\\|P\\(ACK\\|CDATA\\|ERO\\|I\\(\\|[CO]\\|LEN\\)\\|LUS\\|OSTLINK\\|UBLIC\\)\\|QUANTITY\\|R\\([ES]\\|ANK\\|CDATA\\|E\\([FP]\\|FC\\|QUIRED\\|STORE\\)\\|NI\\)\\|S\\(COPE\\|D\\(ATA\\|IF\\)\\|E\\(EALSO\\|PCHAR\\|Q\\(\\|UENCE\\)\\)\\|GML\\(\\|REF\\)\\|H\\(ORT\\(REF\\|TAG\\)\\|UNCHAR\\)\\|IMPLE\\|PACE\\|R\\(CNT\\|LEN\\)\\|TA\\(GO\\|RTTAG\\)\\|UBDOC\\|WITC\\(ES\\|HES\\)\\|Y\\(NTAX\\|STEM\\)\\)\\|T\\(A\\(B\\|G\\(C\\|L\\(EN\\|VL\\)\\)\\)\\|E\\(MP\\|XT\\)\\|OTALCAP\\|YPE\\)\\|U\\(CNM\\(CHAR\\|STRT\\)\\|N\\(CLOSED\\|PACK\\|USED\\)\\|RN\\|SE\\(LINK\\|MAP\\)\\)\\|V\\(AL\\(ID\\(ATE\\|ITY\\)\\|UE\\)\\|I\\)\\|YES\\)\\b" (1 font-lock-type-face)) ("\\(ISO 8879:1986\\(\\|(\\(ENR)\\|WWW)\\)\\)\\)" (1 font-lock-type-face)) ("\\(\\]?\\]\\)\\s-*\\(>\\)" (1 font-lock-keyword-face) (2 font-lock-keyword-face)) ("\\('\\)[^']*\\('\\)" (1 font-lock-string-face) (2 font-lock-string-face)) ("\\(\"\\)[^\"]*\\(\"\\)" (1 font-lock-string-face) (2 font-lock-string-face)) ("[,()|&]" . font-lock-function-name-face) ("[+*?]" . font-lock-string-face)))

(provide 'tdtd-font)
