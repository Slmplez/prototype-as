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

public class Java2HTMLEntityReader
extends SubstitutionTextReader {
    private static final int BEGIN_LINE = 1;
    private static final Map fgEntityLookup = new HashMap(7);
    private int bits = 1;

    static {
        fgEntityLookup.put("<", "&lt;");
        fgEntityLookup.put(">", "&gt;");
        fgEntityLookup.put("&", "&amp;");
        fgEntityLookup.put("^", "&circ;");
        fgEntityLookup.put("~", "&tilde;");
        fgEntityLookup.put("\"", "&quot;");
    }

    public Java2HTMLEntityReader(Reader reader) {
        super(reader);
        this.setSkipWhitespace(false);
    }

    protected String computeSubstitution(int c) throws IOException {
        StringBuffer buf = new StringBuffer();
        while (c == 42) {
            this.bits &= 0xFFFFFFFE;
            c = this.nextChar();
            buf.append('*');
        }
        if (c == -1) {
            return buf.toString();
        }
        if (c == 47 && buf.length() > 0) {
            buf.setLength(buf.length() - 1);
            buf.append("&#42;/");
        } else if (c == 64 && (this.bits & 1) != 0) {
            buf.append("&#064;");
        } else {
            String entity = (String)fgEntityLookup.get(String.valueOf((char)c));
            if (entity != null) {
                buf.append(entity);
            } else {
                buf.append((char)c);
            }
        }
        if (c == 10 || c == 13) {
            this.bits |= 1;
        } else if (!ScannerHelper.isWhitespace((char)c)) {
            this.bits &= 0xFFFFFFFE;
        }
        return buf.toString();
    }
}

