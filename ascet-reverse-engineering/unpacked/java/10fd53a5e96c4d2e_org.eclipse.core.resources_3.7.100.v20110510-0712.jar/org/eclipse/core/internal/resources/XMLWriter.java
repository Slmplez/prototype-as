/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources;

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLWriter
extends PrintWriter {
    protected int tab = 0;
    protected static final String XML_VERSION = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";

    public XMLWriter(OutputStream output) throws UnsupportedEncodingException {
        super(new OutputStreamWriter(output, "UTF8"));
        this.println(XML_VERSION);
    }

    public void endTag(String name) {
        --this.tab;
        this.printTag(String.valueOf('/') + name, null);
    }

    public void printSimpleTag(String name, Object value) {
        if (value != null) {
            this.printTag(name, null, true, false);
            this.print(XMLWriter.getEscaped(String.valueOf(value)));
            this.printTag(String.valueOf('/') + name, null, false, true);
        }
    }

    public void printTabulation() {
        int i = 0;
        while (i < this.tab) {
            super.print('\t');
            ++i;
        }
    }

    public void printTag(String name, HashMap<String, Object> parameters) {
        this.printTag(name, parameters, true, true);
    }

    public void printTag(String name, HashMap<String, Object> parameters, boolean shouldTab, boolean newLine) {
        StringBuffer sb = new StringBuffer();
        sb.append("<");
        sb.append(name);
        if (parameters != null) {
            for (Map.Entry<String, Object> entry : parameters.entrySet()) {
                sb.append(" ");
                String key = entry.getKey();
                sb.append(key);
                sb.append("=\"");
                sb.append(XMLWriter.getEscaped(String.valueOf(entry.getValue())));
                sb.append("\"");
            }
        }
        sb.append(">");
        if (shouldTab) {
            this.printTabulation();
        }
        if (newLine) {
            this.println(sb.toString());
        } else {
            this.print(sb.toString());
        }
    }

    public void startTag(String name, HashMap<String, Object> parameters) {
        this.startTag(name, parameters, true);
    }

    public void startTag(String name, HashMap<String, Object> parameters, boolean newLine) {
        this.printTag(name, parameters, true, newLine);
        ++this.tab;
    }

    private static void appendEscapedChar(StringBuffer buffer, char c) {
        String replacement = XMLWriter.getReplacement(c);
        if (replacement != null) {
            buffer.append('&');
            buffer.append(replacement);
            buffer.append(';');
        } else {
            buffer.append(c);
        }
    }

    public static String getEscaped(String s) {
        StringBuffer result = new StringBuffer(s.length() + 10);
        int i = 0;
        while (i < s.length()) {
            XMLWriter.appendEscapedChar(result, s.charAt(i));
            ++i;
        }
        return result.toString();
    }

    private static String getReplacement(char c) {
        switch (c) {
            case '<': {
                return "lt";
            }
            case '>': {
                return "gt";
            }
            case '\"': {
                return "quot";
            }
            case '\'': {
                return "apos";
            }
            case '&': {
                return "amp";
            }
        }
        return null;
    }
}

