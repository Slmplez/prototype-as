/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.internal.p2.persistence;

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import java.util.Stack;
import org.eclipse.equinox.internal.p2.persistence.XMLConstants;
import org.eclipse.equinox.p2.metadata.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLWriter
implements XMLConstants {
    private Stack<String> elements;
    private boolean open;
    private String indent;
    private PrintWriter pw;

    public XMLWriter(OutputStream output, ProcessingInstruction[] piElements) throws UnsupportedEncodingException {
        this.pw = new PrintWriter(new OutputStreamWriter(output, "UTF8"), false);
        this.println("<?xml version='1.0' encoding='UTF-8'?>");
        this.elements = new Stack();
        this.open = false;
        this.indent = "  ";
        if (piElements != null) {
            int i = 0;
            while (i < piElements.length) {
                this.println(piElements[i].toString());
                ++i;
            }
        }
    }

    public void start(String name) {
        if (this.open) {
            this.println('>');
        }
        this.indent();
        this.print('<');
        this.print(name);
        this.elements.push(name);
        this.open = true;
    }

    public void end(String name) {
        if (this.elements.empty()) {
            throw new EndWithoutStartError();
        }
        int index = this.elements.search(name);
        if (index == -1) {
            throw new EndWithoutStartError(name);
        }
        int i = 0;
        while (i < index) {
            this.end();
            ++i;
        }
    }

    public void end() {
        if (this.elements.empty()) {
            throw new EndWithoutStartError();
        }
        String name = this.elements.pop();
        if (this.open) {
            this.println("/>");
        } else {
            this.printlnIndented(new StringBuffer("</").append(name).append('>').toString(), false);
        }
        this.open = false;
    }

    /*
     * Unable to fully structure code
     */
    public static String escape(String txt) {
        buffer = null;
        i = 0;
        while (i < txt.length()) {
            block15: {
                c = txt.charAt(i);
                switch (c) {
                    case '<': {
                        replace = "&lt;";
                        break;
                    }
                    case '>': {
                        replace = "&gt;";
                        break;
                    }
                    case '\"': {
                        replace = "&quot;";
                        break;
                    }
                    case '\'': {
                        replace = "&apos;";
                        break;
                    }
                    case '&': {
                        replace = "&amp;";
                        break;
                    }
                    case '\t': {
                        replace = "&#x9;";
                        break;
                    }
                    case '\n': {
                        replace = "&#xA;";
                        break;
                    }
                    case '\r': {
                        replace = "&#xD;";
                        break;
                    }
                    default: {
                        if ((c < ' ' || c > '\ud7ff') && (c < '\ue000' || c > '\ufffd')) ** GOTO lbl36
                        if (buffer != null) {
                            buffer.append(c);
                        }
                        break block15;
lbl36:
                        // 1 sources

                        v0 = replace = Character.isWhitespace(c) != false ? " " : null;
                    }
                }
                if (buffer == null) {
                    buffer = new StringBuffer(txt.length() + 16);
                    buffer.append(txt.substring(0, i));
                }
                if (replace != null) {
                    buffer.append(replace);
                }
            }
            ++i;
        }
        if (buffer == null) {
            return txt;
        }
        return buffer.toString();
    }

    public void attribute(String name, boolean value, boolean defaultValue) {
        if (value != defaultValue) {
            this.attribute(name, value);
        }
    }

    public void attribute(String name, boolean value) {
        this.attribute(name, Boolean.toString(value));
    }

    public void attribute(String name, int value) {
        this.attribute(name, Integer.toString(value));
    }

    public void attributeOptional(String name, String value) {
        if (value != null && value.length() > 0) {
            this.attribute(name, value);
        }
    }

    public void attribute(String name, Object value) {
        if (!this.open) {
            throw new AttributeAfterNestedContentError();
        }
        if (value == null) {
            return;
        }
        this.print(' ');
        this.print(name);
        this.print("='");
        this.print(XMLWriter.escape(value.toString()));
        this.print('\'');
    }

    public void cdata(String data) {
        this.cdata(data, true);
    }

    public void cdata(String data, boolean escape) {
        if (this.open) {
            this.println('>');
            this.open = false;
        }
        if (data != null) {
            this.printlnIndented(data, escape);
        }
    }

    public void flush() {
        this.pw.flush();
    }

    public void writeProperties(Map<String, String> properties) {
        this.writeProperties("properties", properties);
    }

    public void writeProperties(String propertiesElement, Map<String, String> properties) {
        if (properties != null && properties.size() > 0) {
            this.start(propertiesElement);
            this.attribute("size", properties.size());
            for (Map.Entry<String, String> entry : properties.entrySet()) {
                this.writeProperty(entry.getKey(), entry.getValue());
            }
            this.end(propertiesElement);
        }
    }

    public void writeProperty(String name, String value) {
        this.start("property");
        this.attribute("name", name);
        this.attribute("value", value);
        this.end();
    }

    protected static String attributeImage(String name, String value) {
        if (value == null) {
            return "";
        }
        return new StringBuffer(String.valueOf(name)).append("='").append(XMLWriter.escape(value)).append('\'').toString();
    }

    private void println(char c) {
        this.pw.println(c);
    }

    private void println(String s) {
        this.pw.println(s);
    }

    private void println() {
        this.pw.println();
    }

    private void print(char c) {
        this.pw.print(c);
    }

    private void print(String s) {
        this.pw.print(s);
    }

    private void printlnIndented(String s, boolean escape) {
        if (s.length() == 0) {
            this.println();
        } else {
            this.indent();
            this.println(escape ? XMLWriter.escape(s) : s);
        }
    }

    private void indent() {
        int i = this.elements.size();
        while (i > 0) {
            this.print(this.indent);
            --i;
        }
    }

    public static class AttributeAfterNestedContentError
    extends Error {
        private static final long serialVersionUID = 1L;
    }

    public static class EndWithoutStartError
    extends Error {
        private static final long serialVersionUID = 1L;
        private String name;

        public EndWithoutStartError() {
        }

        public EndWithoutStartError(String name) {
            this.name = name;
        }

        public String getName() {
            return this.name;
        }
    }

    public static class ProcessingInstruction {
        private String target;
        private String[] data;
        public static final String XML_UTF8 = "<?xml version='1.0' encoding='UTF-8'?>";

        public ProcessingInstruction(String target, String[] attrs, String[] values) {
            this.target = target;
            this.data = new String[attrs.length];
            int i = 0;
            while (i < attrs.length) {
                this.data[i] = XMLWriter.attributeImage(attrs[i], values[i]);
                ++i;
            }
        }

        public static ProcessingInstruction makeTargetVersionInstruction(String target, Version version) {
            return new ProcessingInstruction(target, new String[]{"version"}, new String[]{version.toString()});
        }

        public String toString() {
            StringBuffer sb = new StringBuffer("<?");
            sb.append(this.target).append(' ');
            int i = 0;
            while (i < this.data.length) {
                sb.append(this.data[i]);
                if (i < this.data.length - 1) {
                    sb.append(' ');
                }
                ++i;
            }
            sb.append("?>");
            return sb.toString();
        }
    }
}

