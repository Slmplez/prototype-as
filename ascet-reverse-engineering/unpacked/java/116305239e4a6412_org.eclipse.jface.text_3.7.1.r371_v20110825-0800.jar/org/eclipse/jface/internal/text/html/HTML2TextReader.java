/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyleRange
 */
package org.eclipse.jface.internal.text.html;

import java.io.IOException;
import java.io.PushbackReader;
import java.io.Reader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.jface.internal.text.html.HTMLMessages;
import org.eclipse.jface.internal.text.html.SubstitutionTextReader;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.swt.custom.StyleRange;

public class HTML2TextReader
extends SubstitutionTextReader {
    private static final String EMPTY_STRING = "";
    private static final Map fgEntityLookup;
    private static final Set fgTags;
    private int fCounter = 0;
    private TextPresentation fTextPresentation;
    private int fBold = 0;
    private int fStartOffset = -1;
    private boolean fInParagraph = false;
    private boolean fIsPreformattedText = false;
    private boolean fIgnore = false;
    private boolean fHeaderDetected = false;

    static {
        fgTags = new HashSet();
        fgTags.add("b");
        fgTags.add("br");
        fgTags.add("br/");
        fgTags.add("div");
        fgTags.add("h1");
        fgTags.add("h2");
        fgTags.add("h3");
        fgTags.add("h4");
        fgTags.add("h5");
        fgTags.add("p");
        fgTags.add("dl");
        fgTags.add("dt");
        fgTags.add("dd");
        fgTags.add("li");
        fgTags.add("ul");
        fgTags.add("pre");
        fgTags.add("head");
        fgEntityLookup = new HashMap(7);
        fgEntityLookup.put("lt", "<");
        fgEntityLookup.put("gt", ">");
        fgEntityLookup.put("nbsp", " ");
        fgEntityLookup.put("amp", "&");
        fgEntityLookup.put("circ", "^");
        fgEntityLookup.put("tilde", "~");
        fgEntityLookup.put("quot", "\"");
    }

    public HTML2TextReader(Reader reader, TextPresentation presentation) {
        super(new PushbackReader(reader));
        this.fTextPresentation = presentation;
    }

    public int read() throws IOException {
        int c = super.read();
        if (c != -1) {
            ++this.fCounter;
        }
        return c;
    }

    protected void startBold() {
        if (this.fBold == 0) {
            this.fStartOffset = this.fCounter;
        }
        ++this.fBold;
    }

    protected void startPreformattedText() {
        this.fIsPreformattedText = true;
        this.setSkipWhitespace(false);
    }

    protected void stopPreformattedText() {
        this.fIsPreformattedText = false;
        this.setSkipWhitespace(true);
    }

    protected void stopBold() {
        --this.fBold;
        if (this.fBold == 0) {
            if (this.fTextPresentation != null) {
                this.fTextPresentation.addStyleRange(new StyleRange(this.fStartOffset, this.fCounter - this.fStartOffset, null, null, 1));
            }
            this.fStartOffset = -1;
        }
    }

    protected String computeSubstitution(int c) throws IOException {
        if (c == 60) {
            return this.processHTMLTag();
        }
        if (this.fIgnore) {
            return EMPTY_STRING;
        }
        if (c == 38) {
            return this.processEntity();
        }
        if (this.fIsPreformattedText) {
            return this.processPreformattedText(c);
        }
        return null;
    }

    private String html2Text(String html) {
        if (html == null || html.length() == 0) {
            return EMPTY_STRING;
        }
        String tag = html = html.toLowerCase();
        if ('/' == tag.charAt(0)) {
            tag = tag.substring(1);
        }
        if (!fgTags.contains(tag)) {
            return EMPTY_STRING;
        }
        if ("pre".equals(html)) {
            this.startPreformattedText();
            return EMPTY_STRING;
        }
        if ("/pre".equals(html)) {
            this.stopPreformattedText();
            return EMPTY_STRING;
        }
        if (this.fIsPreformattedText) {
            return EMPTY_STRING;
        }
        if ("b".equals(html)) {
            this.startBold();
            return EMPTY_STRING;
        }
        if (html.length() > 1 && html.charAt(0) == 'h' && Character.isDigit(html.charAt(1)) || "dt".equals(html)) {
            this.startBold();
            return EMPTY_STRING;
        }
        if ("dl".equals(html)) {
            return LINE_DELIM;
        }
        if ("dd".equals(html)) {
            return "\t";
        }
        if ("li".equals(html)) {
            return String.valueOf(LINE_DELIM) + HTMLMessages.getString("HTML2TextReader.listItemPrefix");
        }
        if ("/b".equals(html)) {
            this.stopBold();
            return EMPTY_STRING;
        }
        if ("p".equals(html)) {
            this.fInParagraph = true;
            return LINE_DELIM;
        }
        if ("br".equals(html) || "br/".equals(html) || "div".equals(html)) {
            return LINE_DELIM;
        }
        if ("/p".equals(html)) {
            boolean inParagraph = this.fInParagraph;
            this.fInParagraph = false;
            return inParagraph ? EMPTY_STRING : LINE_DELIM;
        }
        if (html.startsWith("/h") && html.length() > 2 && Character.isDigit(html.charAt(2)) || "/dt".equals(html)) {
            this.stopBold();
            return LINE_DELIM;
        }
        if ("/dd".equals(html)) {
            return LINE_DELIM;
        }
        if ("head".equals(html) && !this.fHeaderDetected) {
            this.fHeaderDetected = true;
            this.fIgnore = true;
            return EMPTY_STRING;
        }
        if ("/head".equals(html) && this.fHeaderDetected && this.fIgnore) {
            this.fIgnore = false;
            return EMPTY_STRING;
        }
        return EMPTY_STRING;
    }

    private String processHTMLTag() throws IOException {
        StringBuffer buf = new StringBuffer();
        while (true) {
            int ch = this.nextChar();
            while (ch != -1 && ch != 62) {
                buf.append(Character.toLowerCase((char)ch));
                ch = this.nextChar();
                if (ch == 34) {
                    buf.append(Character.toLowerCase((char)ch));
                    ch = this.nextChar();
                    while (ch != -1 && ch != 34) {
                        buf.append(Character.toLowerCase((char)ch));
                        ch = this.nextChar();
                    }
                }
                if (ch != 60 || HTML2TextReader.isInComment(buf)) continue;
                this.unread(ch);
                return String.valueOf('<') + buf.toString();
            }
            if (ch == -1) {
                return null;
            }
            if (!HTML2TextReader.isInComment(buf) || HTML2TextReader.isCommentEnd(buf)) break;
            buf.append((char)ch);
        }
        return this.html2Text(buf.toString());
    }

    private static boolean isInComment(StringBuffer buf) {
        return buf.length() >= 3 && "!--".equals(buf.substring(0, 3));
    }

    private static boolean isCommentEnd(StringBuffer buf) {
        int tagLen = buf.length();
        return tagLen >= 5 && "--".equals(buf.substring(tagLen - 2));
    }

    private String processPreformattedText(int c) {
        if (c == 13 || c == 10) {
            ++this.fCounter;
        }
        return null;
    }

    private void unread(int ch) throws IOException {
        ((PushbackReader)this.getReader()).unread(ch);
    }

    protected String entity2Text(String symbol) {
        if (symbol.length() > 1 && symbol.charAt(0) == '#') {
            try {
                int ch = symbol.charAt(1) == 'x' ? Integer.parseInt(symbol.substring(2), 16) : Integer.parseInt(symbol.substring(1), 10);
                return EMPTY_STRING + (char)ch;
            }
            catch (NumberFormatException numberFormatException) {}
        } else {
            String str = (String)fgEntityLookup.get(symbol);
            if (str != null) {
                return str;
            }
        }
        return "&" + symbol;
    }

    private String processEntity() throws IOException {
        StringBuffer buf = new StringBuffer();
        int ch = this.nextChar();
        while (Character.isLetterOrDigit((char)ch) || ch == 35) {
            buf.append((char)ch);
            ch = this.nextChar();
        }
        if (ch == 59) {
            return this.entity2Text(buf.toString());
        }
        buf.insert(0, '&');
        if (ch != -1) {
            buf.append((char)ch);
        }
        return buf.toString();
    }
}

