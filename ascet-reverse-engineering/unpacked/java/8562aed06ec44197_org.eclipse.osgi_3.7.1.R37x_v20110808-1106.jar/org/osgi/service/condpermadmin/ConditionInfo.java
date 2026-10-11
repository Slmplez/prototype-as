/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.condpermadmin;

import java.util.ArrayList;

public class ConditionInfo {
    private final String type;
    private final String[] args;

    public ConditionInfo(String type, String[] args) {
        this.type = type;
        String[] stringArray = this.args = args != null ? (String[])args.clone() : new String[]{};
        if (type == null) {
            throw new NullPointerException("type is null");
        }
    }

    public ConditionInfo(String encodedCondition) {
        if (encodedCondition == null) {
            throw new NullPointerException("missing encoded condition");
        }
        if (encodedCondition.length() == 0) {
            throw new IllegalArgumentException("empty encoded condition");
        }
        try {
            char[] encoded = encodedCondition.toCharArray();
            int length = encoded.length;
            int pos = 0;
            while (Character.isWhitespace(encoded[pos])) {
                ++pos;
            }
            if (encoded[pos] != '[') {
                throw new IllegalArgumentException("expecting open bracket");
            }
            ++pos;
            while (Character.isWhitespace(encoded[pos])) {
                ++pos;
            }
            int begin = pos;
            while (!Character.isWhitespace(encoded[pos]) && encoded[pos] != ']') {
                ++pos;
            }
            if (pos == begin || encoded[begin] == '\"') {
                throw new IllegalArgumentException("expecting type");
            }
            this.type = new String(encoded, begin, pos - begin);
            while (Character.isWhitespace(encoded[pos])) {
                ++pos;
            }
            ArrayList<String> argsList = new ArrayList<String>();
            while (encoded[pos] == '\"') {
                begin = ++pos;
                while (encoded[pos] != '\"') {
                    if (encoded[pos] == '\\') {
                        ++pos;
                    }
                    ++pos;
                }
                argsList.add(ConditionInfo.unescapeString(encoded, begin, pos));
                if (!Character.isWhitespace(encoded[++pos])) continue;
                while (Character.isWhitespace(encoded[pos])) {
                    ++pos;
                }
            }
            this.args = argsList.toArray(new String[argsList.size()]);
            char c = encoded[pos];
            ++pos;
            while (pos < length && Character.isWhitespace(encoded[pos])) {
                ++pos;
            }
            if (c != ']' || pos != length) {
                throw new IllegalArgumentException("expecting close bracket");
            }
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            throw new IllegalArgumentException("parsing terminated abruptly");
        }
    }

    public final String getEncoded() {
        StringBuffer output = new StringBuffer();
        output.append('[');
        output.append(this.type);
        int i = 0;
        while (i < this.args.length) {
            output.append(" \"");
            ConditionInfo.escapeString(this.args[i], output);
            output.append('\"');
            ++i;
        }
        output.append(']');
        return output.toString();
    }

    public String toString() {
        return this.getEncoded();
    }

    public final String getType() {
        return this.type;
    }

    public final String[] getArgs() {
        return (String[])this.args.clone();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConditionInfo)) {
            return false;
        }
        ConditionInfo other = (ConditionInfo)obj;
        if (!this.type.equals(other.type) || this.args.length != other.args.length) {
            return false;
        }
        int i = 0;
        while (i < this.args.length) {
            if (!this.args[i].equals(other.args[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public int hashCode() {
        int h = 527 + this.type.hashCode();
        int i = 0;
        while (i < this.args.length) {
            h = 31 * h + this.args[i].hashCode();
            ++i;
        }
        return h;
    }

    private static void escapeString(String str, StringBuffer output) {
        int len = str.length();
        int i = 0;
        while (i < len) {
            char c = str.charAt(i);
            switch (c) {
                case '\"': 
                case '\\': {
                    output.append('\\');
                    output.append(c);
                    break;
                }
                case '\r': {
                    output.append("\\r");
                    break;
                }
                case '\n': {
                    output.append("\\n");
                    break;
                }
                default: {
                    output.append(c);
                }
            }
            ++i;
        }
    }

    private static String unescapeString(char[] str, int begin, int end) {
        StringBuffer output = new StringBuffer(end - begin);
        int i = begin;
        while (i < end) {
            int c = str[i];
            if (c == 92 && ++i < end) {
                c = str[i];
                switch (c) {
                    case 34: 
                    case 92: {
                        break;
                    }
                    case 114: {
                        c = 13;
                        break;
                    }
                    case 110: {
                        c = 10;
                        break;
                    }
                    default: {
                        c = 92;
                        --i;
                    }
                }
            }
            output.append((char)c);
            ++i;
        }
        return output.toString();
    }
}

