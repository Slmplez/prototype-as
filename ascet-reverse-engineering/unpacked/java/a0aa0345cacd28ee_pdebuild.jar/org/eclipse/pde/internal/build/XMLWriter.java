/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.build;

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Map;

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
        if (value == null) {
            return;
        }
        this.printTag(name, null, true, false, false);
        this.print(XMLWriter.getEscaped(String.valueOf(value)));
        this.printTag(String.valueOf('/') + name, null, false, true, false);
    }

    public void printTabulation() {
        int i = 0;
        while (i < this.tab) {
            super.print('\t');
            ++i;
        }
    }

    public void printTag(String name, Map parameters) {
        this.printTag(name, parameters, true, true, false);
    }

    public void printTag(String name, Map parameters, boolean shouldTab, boolean newLine, boolean close) {
        StringBuffer sb = new StringBuffer();
        sb.append("<");
        sb.append(name);
        if (parameters != null) {
            Enumeration enumeration = Collections.enumeration(parameters.keySet());
            while (enumeration.hasMoreElements()) {
                sb.append(" ");
                String key = (String)enumeration.nextElement();
                if (parameters.get(key) == null) continue;
                sb.append(key);
                sb.append("=\"");
                sb.append(XMLWriter.getEscaped(String.valueOf(parameters.get(key))));
                sb.append("\"");
            }
        }
        if (close) {
            sb.append("/>");
        } else {
            sb.append(">");
        }
        if (shouldTab) {
            this.printTabulation();
        }
        if (newLine) {
            this.println(sb.toString());
        } else {
            this.print(sb.toString());
        }
    }

    public void startTag(String name, Map parameters) {
        this.startTag(name, parameters, true);
    }

    public void startTag(String name, Map parameters, boolean newLine) {
        this.printTag(name, parameters, true, newLine, false);
        ++this.tab;
    }

    private static void appendEscapedChar(StringBuffer buffer, char c) {
        buffer.append(XMLWriter.getReplacement(c));
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
                return "&lt;";
            }
            case '>': {
                return "&gt;";
            }
            case '\"': {
                return "&quot;";
            }
            case '\'': {
                return "&apos;";
            }
            case '&': {
                return "&amp;";
            }
        }
        return String.valueOf(c);
    }

    public void printlnEscaped(String s) {
        if (s != null) {
            this.println(XMLWriter.getEscaped(s));
        } else {
            this.println();
        }
    }
}

