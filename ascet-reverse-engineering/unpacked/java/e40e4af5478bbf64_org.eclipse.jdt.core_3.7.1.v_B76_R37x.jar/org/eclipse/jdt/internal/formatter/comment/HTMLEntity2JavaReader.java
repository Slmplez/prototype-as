/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter.comment;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.formatter.comment.SubstitutionTextReader;

public class HTMLEntity2JavaReader
extends SubstitutionTextReader {
    private static final Map fgEntityLookup = new HashMap(7);

    static {
        fgEntityLookup.put("lt", "<");
        fgEntityLookup.put("gt", ">");
        fgEntityLookup.put("nbsp", " ");
        fgEntityLookup.put("amp", "&");
        fgEntityLookup.put("circ", "^");
        fgEntityLookup.put("tilde", "~");
        fgEntityLookup.put("quot", "\"");
    }

    public HTMLEntity2JavaReader(Reader reader) {
        super(reader);
        this.setSkipWhitespace(false);
    }

    protected String computeSubstitution(int c) throws IOException {
        if (c == 38) {
            return this.processEntity();
        }
        return null;
    }

    protected String entity2Text(String symbol) {
        if (symbol.length() > 1 && symbol.charAt(0) == '#') {
            try {
                int ch = symbol.charAt(1) == 'x' ? Integer.parseInt(symbol.substring(2), 16) : Integer.parseInt(symbol.substring(1), 10);
                return String.valueOf((char)ch);
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
        while (ScannerHelper.isLetterOrDigit((char)ch) || ch == 35) {
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

