/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRepairableDocumentExtension;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextMessages;
import org.eclipse.jface.text.TextUtilities;

public class FindReplaceDocumentAdapter
implements CharSequence {
    private static final FindReplaceOperationCode FIND_FIRST = new FindReplaceOperationCode();
    private static final FindReplaceOperationCode FIND_NEXT = new FindReplaceOperationCode();
    private static final FindReplaceOperationCode REPLACE = new FindReplaceOperationCode();
    private static final FindReplaceOperationCode REPLACE_FIND_NEXT = new FindReplaceOperationCode();
    private static final int RC_MIXED = 0;
    private static final int RC_UPPER = 1;
    private static final int RC_LOWER = 2;
    private static final int RC_FIRSTUPPER = 3;
    private IDocument fDocument;
    private FindReplaceOperationCode fFindReplaceState = null;
    private Matcher fFindReplaceMatcher;
    private int fFindReplaceMatchOffset;
    private int fRetainCaseMode;

    public FindReplaceDocumentAdapter(IDocument document) {
        Assert.isNotNull((Object)document);
        this.fDocument = document;
    }

    public IRegion find(int startOffset, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord, boolean regExSearch) throws BadLocationException {
        Assert.isTrue((!regExSearch || !wholeWord ? 1 : 0) != 0);
        if (startOffset == -1 && forwardSearch) {
            startOffset = 0;
        }
        if (startOffset == -1 && !forwardSearch) {
            startOffset = this.length() - 1;
        }
        return this.findReplace(FIND_FIRST, startOffset, findString, null, forwardSearch, caseSensitive, wholeWord, regExSearch);
    }

    private IRegion findReplace(FindReplaceOperationCode operationCode, int startOffset, String findString, String replaceText, boolean forwardSearch, boolean caseSensitive, boolean wholeWord, boolean regExSearch) throws BadLocationException {
        Assert.isTrue((!regExSearch || !wholeWord ? 1 : 0) != 0);
        if ((operationCode == REPLACE || operationCode == REPLACE_FIND_NEXT) && this.fFindReplaceState != FIND_FIRST && this.fFindReplaceState != FIND_NEXT) {
            throw new IllegalStateException("illegal findReplace state: cannot replace without preceding find");
        }
        if (operationCode == FIND_FIRST) {
            if (findString == null || findString.length() == 0) {
                return null;
            }
            if (startOffset < 0 || startOffset >= this.length()) {
                throw new BadLocationException();
            }
            int patternFlags = 0;
            if (regExSearch) {
                patternFlags |= 8;
                findString = this.substituteLinebreak(findString);
            }
            if (!caseSensitive) {
                patternFlags |= 0x42;
            }
            if (wholeWord) {
                findString = "\\b" + findString + "\\b";
            }
            if (!regExSearch && !wholeWord) {
                findString = this.asRegPattern(findString);
            }
            this.fFindReplaceMatchOffset = startOffset;
            if (this.fFindReplaceMatcher == null || !this.fFindReplaceMatcher.pattern().pattern().equals(findString) || this.fFindReplaceMatcher.pattern().flags() != patternFlags) {
                Pattern pattern = Pattern.compile(findString, patternFlags);
                this.fFindReplaceMatcher = pattern.matcher(this);
            }
        }
        this.fFindReplaceState = operationCode;
        if (operationCode == REPLACE || operationCode == REPLACE_FIND_NEXT) {
            if (regExSearch) {
                Pattern pattern = this.fFindReplaceMatcher.pattern();
                String prevMatch = this.fFindReplaceMatcher.group();
                try {
                    replaceText = this.interpretReplaceEscapes(replaceText, prevMatch);
                    Matcher replaceTextMatcher = pattern.matcher(prevMatch);
                    replaceText = replaceTextMatcher.replaceFirst(replaceText);
                }
                catch (IndexOutOfBoundsException ex) {
                    throw new PatternSyntaxException(ex.getLocalizedMessage(), replaceText, -1);
                }
            }
            int offset = this.fFindReplaceMatcher.start();
            int length = this.fFindReplaceMatcher.group().length();
            if (this.fDocument instanceof IRepairableDocumentExtension && ((IRepairableDocumentExtension)((Object)this.fDocument)).isLineInformationRepairNeeded(offset, length, replaceText)) {
                String message = TextMessages.getString("FindReplaceDocumentAdapter.incompatibleLineDelimiter");
                throw new PatternSyntaxException(message, replaceText, offset);
            }
            this.fDocument.replace(offset, length, replaceText);
            if (operationCode == REPLACE) {
                return new Region(offset, replaceText.length());
            }
        }
        if (operationCode != REPLACE) {
            boolean found;
            block23: {
                if (!forwardSearch) break block23;
                found = false;
                found = operationCode == FIND_FIRST ? this.fFindReplaceMatcher.find(startOffset) : this.fFindReplaceMatcher.find();
                if (operationCode == REPLACE_FIND_NEXT) {
                    this.fFindReplaceState = FIND_NEXT;
                }
                if (found && this.fFindReplaceMatcher.group().length() > 0) {
                    return new Region(this.fFindReplaceMatcher.start(), this.fFindReplaceMatcher.group().length());
                }
                return null;
            }
            try {
                found = this.fFindReplaceMatcher.find(0);
                int index = -1;
                int length = -1;
                while (found && this.fFindReplaceMatcher.start() + this.fFindReplaceMatcher.group().length() <= this.fFindReplaceMatchOffset + 1) {
                    index = this.fFindReplaceMatcher.start();
                    length = this.fFindReplaceMatcher.group().length();
                    found = this.fFindReplaceMatcher.find(index + 1);
                }
                this.fFindReplaceMatchOffset = index;
                if (index > -1) {
                    this.fFindReplaceMatcher.find(index);
                    return new Region(index, length);
                }
                return null;
            }
            catch (StackOverflowError stackOverflowError) {
                String message = TextMessages.getString("FindReplaceDocumentAdapter.patternTooComplex");
                throw new PatternSyntaxException(message, findString, -1);
            }
        }
        return null;
    }

    private String substituteLinebreak(String findString) throws PatternSyntaxException {
        int length = findString.length();
        StringBuffer buf = new StringBuffer(length);
        int inCharGroup = 0;
        int inBraces = 0;
        boolean inQuote = false;
        int i = 0;
        while (i < length) {
            char ch = findString.charAt(i);
            switch (ch) {
                case '[': {
                    buf.append(ch);
                    if (inQuote) break;
                    ++inCharGroup;
                    break;
                }
                case ']': {
                    buf.append(ch);
                    if (inQuote) break;
                    --inCharGroup;
                    break;
                }
                case '{': {
                    buf.append(ch);
                    if (inQuote || inCharGroup != 0) break;
                    ++inBraces;
                    break;
                }
                case '}': {
                    buf.append(ch);
                    if (inQuote || inCharGroup != 0) break;
                    --inBraces;
                    break;
                }
                case '\\': {
                    if (i + 1 < length) {
                        char ch1 = findString.charAt(i + 1);
                        if (inQuote) {
                            if (ch1 == 'E') {
                                inQuote = false;
                            }
                            buf.append(ch).append(ch1);
                            ++i;
                            break;
                        }
                        if (ch1 == 'R') {
                            if (inCharGroup > 0 || inBraces > 0) {
                                String msg = TextMessages.getString("FindReplaceDocumentAdapter.illegalLinebreak");
                                throw new PatternSyntaxException(msg, findString, i);
                            }
                            buf.append("(?>\\r\\n?|\\n)");
                            ++i;
                            break;
                        }
                        if (ch1 == 'Q') {
                            inQuote = true;
                        }
                        buf.append(ch).append(ch1);
                        ++i;
                        break;
                    }
                    buf.append(ch);
                    break;
                }
                default: {
                    buf.append(ch);
                }
            }
            ++i;
        }
        return buf.toString();
    }

    private void interpretRetainCase(StringBuffer buf, char ch) {
        if (this.fRetainCaseMode == 1) {
            buf.append(Character.toUpperCase(ch));
        } else if (this.fRetainCaseMode == 2) {
            buf.append(Character.toLowerCase(ch));
        } else if (this.fRetainCaseMode == 3) {
            buf.append(Character.toUpperCase(ch));
            this.fRetainCaseMode = 0;
        } else {
            buf.append(ch);
        }
    }

    private String interpretReplaceEscapes(String replaceText, String foundText) {
        int length = replaceText.length();
        boolean inEscape = false;
        StringBuffer buf = new StringBuffer(length);
        this.fRetainCaseMode = 0;
        int i = 0;
        while (i < length) {
            char ch = replaceText.charAt(i);
            if (inEscape) {
                i = this.interpretReplaceEscape(ch, i, buf, replaceText, foundText);
                inEscape = false;
            } else if (ch == '\\') {
                inEscape = true;
            } else if (ch == '$') {
                buf.append(ch);
                if (i + 2 < length) {
                    char ch1 = replaceText.charAt(i + 1);
                    char ch2 = replaceText.charAt(i + 2);
                    if (ch1 == '0' && '0' <= ch2 && ch2 <= '9') {
                        buf.append("0\\");
                        ++i;
                    }
                }
            } else {
                this.interpretRetainCase(buf, ch);
            }
            ++i;
        }
        if (inEscape) {
            buf.append('\\');
        }
        return buf.toString();
    }

    private int interpretReplaceEscape(char ch, int i, StringBuffer buf, String replaceText, String foundText) {
        int length = replaceText.length();
        switch (ch) {
            case 'r': {
                buf.append('\r');
                break;
            }
            case 'n': {
                buf.append('\n');
                break;
            }
            case 't': {
                buf.append('\t');
                break;
            }
            case 'f': {
                buf.append('\f');
                break;
            }
            case 'a': {
                buf.append('\u0007');
                break;
            }
            case 'e': {
                buf.append('\u001b');
                break;
            }
            case 'R': {
                buf.append(TextUtilities.getDefaultLineDelimiter(this.fDocument));
                break;
            }
            case '0': {
                char ch1;
                buf.append('$').append(ch);
                if (i + 1 >= length || '0' > (ch1 = replaceText.charAt(i + 1)) || ch1 > '9') break;
                buf.append('\\');
                break;
            }
            case '1': 
            case '2': 
            case '3': 
            case '4': 
            case '5': 
            case '6': 
            case '7': 
            case '8': 
            case '9': {
                buf.append('$').append(ch);
                break;
            }
            case 'c': {
                if (i + 1 < length) {
                    char ch1 = replaceText.charAt(i + 1);
                    this.interpretRetainCase(buf, (char)(ch1 ^ 0x40));
                    ++i;
                    break;
                }
                String msg = TextMessages.getFormattedString("FindReplaceDocumentAdapter.illegalControlEscape", "\\c");
                throw new PatternSyntaxException(msg, replaceText, i);
            }
            case 'x': {
                if (i + 2 < length) {
                    int parsedInt;
                    try {
                        parsedInt = Integer.parseInt(replaceText.substring(i + 1, i + 3), 16);
                        if (parsedInt < 0) {
                            throw new NumberFormatException();
                        }
                    }
                    catch (NumberFormatException numberFormatException) {
                        String msg = TextMessages.getFormattedString("FindReplaceDocumentAdapter.illegalHexEscape", replaceText.substring(i - 1, i + 3));
                        throw new PatternSyntaxException(msg, replaceText, i);
                    }
                    this.interpretRetainCase(buf, (char)parsedInt);
                    i += 2;
                    break;
                }
                String msg = TextMessages.getFormattedString("FindReplaceDocumentAdapter.illegalHexEscape", replaceText.substring(i - 1, length));
                throw new PatternSyntaxException(msg, replaceText, i);
            }
            case 'u': {
                if (i + 4 < length) {
                    int parsedInt;
                    try {
                        parsedInt = Integer.parseInt(replaceText.substring(i + 1, i + 5), 16);
                        if (parsedInt < 0) {
                            throw new NumberFormatException();
                        }
                    }
                    catch (NumberFormatException numberFormatException) {
                        String msg = TextMessages.getFormattedString("FindReplaceDocumentAdapter.illegalUnicodeEscape", replaceText.substring(i - 1, i + 5));
                        throw new PatternSyntaxException(msg, replaceText, i);
                    }
                    this.interpretRetainCase(buf, (char)parsedInt);
                    i += 4;
                    break;
                }
                String msg = TextMessages.getFormattedString("FindReplaceDocumentAdapter.illegalUnicodeEscape", replaceText.substring(i - 1, length));
                throw new PatternSyntaxException(msg, replaceText, i);
            }
            case 'C': {
                if (foundText.toUpperCase().equals(foundText)) {
                    this.fRetainCaseMode = 1;
                    break;
                }
                if (foundText.toLowerCase().equals(foundText)) {
                    this.fRetainCaseMode = 2;
                    break;
                }
                if (Character.isUpperCase(foundText.charAt(0))) {
                    this.fRetainCaseMode = 3;
                    break;
                }
                this.fRetainCaseMode = 0;
                break;
            }
            default: {
                buf.append('\\').append(ch);
            }
        }
        return i;
    }

    private String asRegPattern(String string) {
        StringBuffer out = new StringBuffer(string.length());
        boolean quoting = false;
        int i = 0;
        int length = string.length();
        while (i < length) {
            char ch = string.charAt(i);
            if (ch == '\\') {
                if (quoting) {
                    out.append("\\E");
                    quoting = false;
                }
                out.append("\\\\");
            } else {
                if (!quoting) {
                    out.append("\\Q");
                    quoting = true;
                }
                out.append(ch);
            }
            ++i;
        }
        if (quoting) {
            out.append("\\E");
        }
        return out.toString();
    }

    public IRegion replace(String text, boolean regExReplace) throws BadLocationException {
        return this.findReplace(REPLACE, -1, null, text, false, false, false, regExReplace);
    }

    public int length() {
        return this.fDocument.getLength();
    }

    public char charAt(int index) {
        try {
            return this.fDocument.getChar(index);
        }
        catch (BadLocationException badLocationException) {
            throw new IndexOutOfBoundsException();
        }
    }

    public CharSequence subSequence(int start, int end) {
        try {
            return this.fDocument.get(start, end - start);
        }
        catch (BadLocationException badLocationException) {
            throw new IndexOutOfBoundsException();
        }
    }

    public String toString() {
        return this.fDocument.get();
    }

    public static String escapeForRegExPattern(String string) {
        StringBuffer pattern = new StringBuffer(string.length() + 16);
        int length = string.length();
        int i = 0;
        while (i < length) {
            char ch = string.charAt(i);
            switch (ch) {
                case '$': 
                case '(': 
                case ')': 
                case '*': 
                case '+': 
                case '.': 
                case '?': 
                case '[': 
                case '\\': 
                case ']': 
                case '^': 
                case '{': 
                case '|': 
                case '}': {
                    pattern.append('\\').append(ch);
                    break;
                }
                case '\r': {
                    if (i + 1 < length && string.charAt(i + 1) == '\n') {
                        ++i;
                    }
                }
                case '\n': {
                    pattern.append("\\R");
                    break;
                }
                case '\t': {
                    pattern.append("\\t");
                    break;
                }
                case '\f': {
                    pattern.append("\\f");
                    break;
                }
                case '\u0007': {
                    pattern.append("\\a");
                    break;
                }
                case '\u001b': {
                    pattern.append("\\e");
                    break;
                }
                default: {
                    if (ch >= '\u0000' && ch < ' ') {
                        pattern.append("\\x");
                        pattern.append(Integer.toHexString(ch).toUpperCase());
                        break;
                    }
                    pattern.append(ch);
                }
            }
            ++i;
        }
        return pattern.toString();
    }

    private static class FindReplaceOperationCode {
        private FindReplaceOperationCode() {
        }
    }
}

