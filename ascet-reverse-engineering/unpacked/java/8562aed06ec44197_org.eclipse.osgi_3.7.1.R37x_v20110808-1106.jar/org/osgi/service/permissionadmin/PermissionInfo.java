/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.permissionadmin;

public class PermissionInfo {
    private final String type;
    private final String name;
    private final String actions;

    public PermissionInfo(String type, String name, String actions) {
        this.type = type;
        this.name = name;
        this.actions = actions;
        if (type == null) {
            throw new NullPointerException("type is null");
        }
        if (name == null && actions != null) {
            throw new IllegalArgumentException("name missing");
        }
    }

    public PermissionInfo(String encodedPermission) {
        if (encodedPermission == null) {
            throw new NullPointerException("missing encoded permission");
        }
        if (encodedPermission.length() == 0) {
            throw new IllegalArgumentException("empty encoded permission");
        }
        String parsedType = null;
        String parsedName = null;
        String parsedActions = null;
        try {
            char[] encoded = encodedPermission.toCharArray();
            int length = encoded.length;
            int pos = 0;
            while (Character.isWhitespace(encoded[pos])) {
                ++pos;
            }
            if (encoded[pos] != '(') {
                throw new IllegalArgumentException("expecting open parenthesis");
            }
            ++pos;
            while (Character.isWhitespace(encoded[pos])) {
                ++pos;
            }
            int begin = pos;
            while (!Character.isWhitespace(encoded[pos]) && encoded[pos] != ')') {
                ++pos;
            }
            if (pos == begin || encoded[begin] == '\"') {
                throw new IllegalArgumentException("expecting type");
            }
            parsedType = new String(encoded, begin, pos - begin);
            while (Character.isWhitespace(encoded[pos])) {
                ++pos;
            }
            if (encoded[pos] == '\"') {
                begin = ++pos;
                while (encoded[pos] != '\"') {
                    if (encoded[pos] == '\\') {
                        ++pos;
                    }
                    ++pos;
                }
                parsedName = PermissionInfo.unescapeString(encoded, begin, pos);
                if (Character.isWhitespace(encoded[++pos])) {
                    while (Character.isWhitespace(encoded[pos])) {
                        ++pos;
                    }
                    if (encoded[pos] == '\"') {
                        begin = ++pos;
                        while (encoded[pos] != '\"') {
                            if (encoded[pos] == '\\') {
                                ++pos;
                            }
                            ++pos;
                        }
                        parsedActions = PermissionInfo.unescapeString(encoded, begin, pos);
                        ++pos;
                        while (Character.isWhitespace(encoded[pos])) {
                            ++pos;
                        }
                    }
                }
            }
            char c = encoded[pos];
            ++pos;
            while (pos < length && Character.isWhitespace(encoded[pos])) {
                ++pos;
            }
            if (c != ')' || pos != length) {
                throw new IllegalArgumentException("expecting close parenthesis");
            }
        }
        catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
            throw new IllegalArgumentException("parsing terminated abruptly");
        }
        this.type = parsedType;
        this.name = parsedName;
        this.actions = parsedActions;
    }

    public final String getEncoded() {
        StringBuffer output = new StringBuffer(8 + this.type.length() + ((this.name == null ? 0 : this.name.length()) + (this.actions == null ? 0 : this.actions.length()) << 1));
        output.append('(');
        output.append(this.type);
        if (this.name != null) {
            output.append(" \"");
            PermissionInfo.escapeString(this.name, output);
            if (this.actions != null) {
                output.append("\" \"");
                PermissionInfo.escapeString(this.actions, output);
            }
            output.append('\"');
        }
        output.append(')');
        return output.toString();
    }

    public String toString() {
        return this.getEncoded();
    }

    public final String getType() {
        return this.type;
    }

    public final String getName() {
        return this.name;
    }

    public final String getActions() {
        return this.actions;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PermissionInfo)) {
            return false;
        }
        PermissionInfo other = (PermissionInfo)obj;
        if (!this.type.equals(other.type) || this.name == null ^ other.name == null || this.actions == null ^ other.actions == null) {
            return false;
        }
        if (this.name != null) {
            if (this.actions != null) {
                return this.name.equals(other.name) && this.actions.equals(other.actions);
            }
            return this.name.equals(other.name);
        }
        return true;
    }

    public int hashCode() {
        int h = 527 + this.type.hashCode();
        if (this.name != null) {
            h = 31 * h + this.name.hashCode();
            if (this.actions != null) {
                h = 31 * h + this.actions.hashCode();
            }
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

