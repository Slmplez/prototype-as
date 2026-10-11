/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.update;

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
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
        this.printTag(new StringBuffer(String.valueOf('/')).append(name).toString(), null);
    }

    public void printSimpleTag(String name, Object value) {
        if (value != null) {
            this.printTag(name, null, true, false);
            this.print(XMLWriter.getEscaped(String.valueOf(value)));
            this.printTag(new StringBuffer(String.valueOf('/')).append(name).toString(), null, false, true);
        }
    }

    public void printTabulation() {
        int i = 0;
        while (i < this.tab) {
            super.print('\t');
            ++i;
        }
    }

    public void printTag(String name, Map<String, String> parameters) {
        this.printTag(name, parameters, true, true);
    }

    public void printTag(String name, Map<String, String> parameters, boolean shouldTab, boolean newLine) {
        StringBuffer sb = new StringBuffer();
        sb.append("<");
        sb.append(name);
        if (parameters != null) {
            for (String key : parameters.keySet()) {
                sb.append(" ");
                sb.append(key);
                sb.append("=\"");
                sb.append(XMLWriter.getEscaped(String.valueOf(parameters.get(key))));
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

    public void startTag(String name, Map<String, String> parameters) {
        this.startTag(name, parameters, true);
    }

    public void startTag(String name, Map<String, String> parameters, boolean newLine) {
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

