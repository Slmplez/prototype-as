/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.util.ArrayList;
import java.util.List;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Tokenizer {
    protected char[] value;
    protected int max;
    protected int cursor;

    public Tokenizer(String value) {
        this.value = value.toCharArray();
        this.max = this.value.length;
        this.cursor = 0;
    }

    private void skipWhiteSpace() {
        char[] val = this.value;
        int cur = this.cursor;
        while (cur < this.max) {
            char c = val[cur];
            if (c != ' ' && c != '\t' && c != '\n' && c != '\r') break;
            ++cur;
        }
        this.cursor = cur;
    }

    public String getToken(String terminals) {
        int cur;
        this.skipWhiteSpace();
        char[] val = this.value;
        int begin = cur = this.cursor;
        while (cur < this.max) {
            char c = val[cur];
            if (terminals.indexOf(c) != -1) break;
            ++cur;
        }
        this.cursor = cur;
        int count = cur - begin;
        if (count > 0) {
            this.skipWhiteSpace();
            while (count > 0 && (val[begin + count - 1] == ' ' || val[begin + count - 1] == '\t')) {
                --count;
            }
            return new String(val, begin, count);
        }
        return null;
    }

    public String getEscapedToken(String terminals) {
        char[] val = this.value;
        int cur = this.cursor;
        if (cur >= this.max) {
            return null;
        }
        StringBuffer sb = new StringBuffer();
        while (cur < this.max) {
            char c = val[cur];
            if (c == '\\') {
                if (++cur == this.max) break;
                c = val[cur];
            } else if (terminals.indexOf(c) != -1) break;
            sb.append(c);
            ++cur;
        }
        this.cursor = cur;
        return sb.toString();
    }

    public List<String> getEscapedTokens(String terminals) {
        ArrayList<String> result = new ArrayList<String>();
        String token = this.getEscapedToken(terminals);
        while (token != null) {
            result.add(token);
            this.getChar();
            token = this.getEscapedToken(terminals);
        }
        return result;
    }

    public String getString(String terminals, String preserveEscapes) {
        this.skipWhiteSpace();
        char[] val = this.value;
        int cur = this.cursor;
        if (cur < this.max) {
            if (val[cur] == '\"') {
                StringBuffer sb = new StringBuffer();
                char c = '\u0000';
                int begin = ++cur;
                while (cur < this.max) {
                    c = val[cur];
                    if (c == '\\') {
                        if (++cur == this.max) break;
                        c = val[cur];
                        if (preserveEscapes != null && preserveEscapes.indexOf(c) != -1) {
                            sb.append('\\');
                        }
                    } else if (c == '\"') break;
                    sb.append(c);
                    ++cur;
                }
                int count = cur - begin;
                if (c == '\"') {
                    ++cur;
                }
                this.cursor = cur;
                if (count > 0) {
                    this.skipWhiteSpace();
                    return sb.toString();
                }
            } else {
                return this.getToken(terminals);
            }
        }
        return null;
    }

    public String getString(String terminals) {
        return this.getString(terminals, null);
    }

    public char getChar() {
        int cur = this.cursor;
        if (cur < this.max) {
            this.cursor = cur + 1;
            return this.value[cur];
        }
        return '\u0000';
    }

    public boolean hasMoreTokens() {
        return this.cursor < this.max;
    }
}

