/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.activation.MimeType;
import javax.activation.MimeTypeParseException;

public class MimeTypeParameterList {
    private final Map params = new HashMap();

    public MimeTypeParameterList() {
    }

    public MimeTypeParameterList(String parameterList) throws MimeTypeParseException {
        this.parse(parameterList);
    }

    protected void parse(String parameterList) throws MimeTypeParseException {
        if (parameterList == null) {
            throw new MimeTypeParseException("parameterList is null");
        }
        RFC2045Parser parser = new RFC2045Parser(parameterList);
        while (parser.hasMoreParams()) {
            String attribute = parser.expectAttribute();
            parser.expectEquals();
            String value = parser.expectValue();
            this.params.put(attribute.toLowerCase(), value);
        }
    }

    public int size() {
        return this.params.size();
    }

    public boolean isEmpty() {
        return this.params.isEmpty();
    }

    public String get(String name) {
        return (String)this.params.get(name.toLowerCase());
    }

    public void set(String name, String value) {
        this.params.put(name.toLowerCase(), value);
    }

    public void remove(String name) {
        this.params.remove(name.toLowerCase());
    }

    public Enumeration getNames() {
        return Collections.enumeration(this.params.keySet());
    }

    public String toString() {
        StringBuffer buf = new StringBuffer(this.params.size() << 4);
        Iterator i = this.params.entrySet().iterator();
        while (i.hasNext()) {
            Map.Entry entry = i.next();
            buf.append("; ").append(entry.getKey()).append('=');
            this.quote(buf, (String)entry.getValue());
        }
        return buf.toString();
    }

    private void quote(StringBuffer buf, String value) {
        int i;
        int length = value.length();
        boolean quote = false;
        for (i = 0; i < length; ++i) {
            if (!MimeType.isSpecial(value.charAt(i))) continue;
            quote = true;
            break;
        }
        if (quote) {
            buf.append('\"');
            for (i = 0; i < length; ++i) {
                char c = value.charAt(i);
                if (c == '\\' || c == '\"') {
                    buf.append('\\');
                }
                buf.append(c);
            }
            buf.append('\"');
        } else {
            buf.append(value);
        }
    }

    private static class RFC2045Parser {
        private final String text;
        private int index = 0;

        private RFC2045Parser(String text) {
            this.text = text;
        }

        private boolean hasMoreParams() throws MimeTypeParseException {
            char c;
            do {
                if (this.index != this.text.length()) continue;
                return false;
            } while (Character.isWhitespace(c = this.text.charAt(this.index++)));
            if (c != ';') {
                throw new MimeTypeParseException("Expected \";\" at " + (this.index - 1) + " in " + this.text);
            }
            return true;
        }

        private String expectAttribute() throws MimeTypeParseException {
            char c;
            do {
                if (this.index != this.text.length()) continue;
                throw new MimeTypeParseException("Expected attribute at " + (this.index - 1) + " in " + this.text);
            } while (Character.isWhitespace(c = this.text.charAt(this.index++)));
            int start = this.index - 1;
            while (this.index != this.text.length() && !MimeType.isSpecial(this.text.charAt(this.index))) {
                ++this.index;
            }
            return this.text.substring(start, this.index);
        }

        private void expectEquals() throws MimeTypeParseException {
            char c;
            do {
                if (this.index != this.text.length()) continue;
                throw new MimeTypeParseException("Expected \"=\" at " + (this.index - 1) + " in " + this.text);
            } while (Character.isWhitespace(c = this.text.charAt(this.index++)));
            if (c != '=') {
                throw new MimeTypeParseException("Expected \"=\" at " + (this.index - 1) + " in " + this.text);
            }
        }

        private String expectValue() throws MimeTypeParseException {
            char c;
            do {
                if (this.index != this.text.length()) continue;
                throw new MimeTypeParseException("Expected value at " + (this.index - 1) + " in " + this.text);
            } while (Character.isWhitespace(c = this.text.charAt(this.index++)));
            if (c == '\"') {
                StringBuffer buf = new StringBuffer();
                while (true) {
                    if (this.index == this.text.length()) {
                        throw new MimeTypeParseException("Expected closing quote at " + (this.index - 1) + " in " + this.text);
                    }
                    if ((c = this.text.charAt(this.index++)) == '\"') break;
                    if (c == '\\') {
                        if (this.index == this.text.length()) {
                            throw new MimeTypeParseException("Expected escaped char at " + (this.index - 1) + " in " + this.text);
                        }
                        c = this.text.charAt(this.index++);
                    }
                    buf.append(c);
                }
                return buf.toString();
            }
            int start = this.index - 1;
            while (this.index != this.text.length() && !MimeType.isSpecial(this.text.charAt(this.index))) {
                ++this.index;
            }
            return this.text.substring(start, this.index);
        }
    }
}

