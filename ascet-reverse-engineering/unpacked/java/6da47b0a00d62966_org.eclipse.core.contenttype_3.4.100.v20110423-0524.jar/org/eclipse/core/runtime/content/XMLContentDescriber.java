/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.runtime.content;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.internal.content.TextContentDescriber;
import org.eclipse.core.internal.content.Util;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.ITextContentDescriber;

public class XMLContentDescriber
extends TextContentDescriber
implements ITextContentDescriber {
    private static final QualifiedName[] SUPPORTED_OPTIONS = new QualifiedName[]{IContentDescription.CHARSET, IContentDescription.BYTE_ORDER_MARK};
    private static final String XML_PREFIX = "<?xml ";
    private static final String XML_DECL_END = "?>";
    private static final String BOM = "org.eclipse.core.runtime.content.XMLContentDescriber.bom";
    private static final String CHARSET = "org.eclipse.core.runtime.content.XMLContentDescriber.charset";
    private static final String FULL_XML_DECL = "org.eclipse.core.runtime.content.XMLContentDescriber.fullXMLDecl";
    private static final String RESULT = "org.eclipse.core.runtime.content.XMLContentDescriber.processed";

    public int describe(InputStream input, IContentDescription description) throws IOException {
        return this.describe2(input, description, new HashMap());
    }

    int describe2(InputStream input, IContentDescription description, Map properties) throws IOException {
        if (!this.isProcessed(properties)) {
            this.fillContentProperties(input, description, properties);
        }
        return this.internalDescribe(description, properties);
    }

    public int describe(Reader input, IContentDescription description) throws IOException {
        return this.describe2(input, description, new HashMap());
    }

    int describe2(Reader input, IContentDescription description, Map properties) throws IOException {
        if (!this.isProcessed(properties)) {
            this.fillContentProperties(this.readXMLDecl(input), description, properties);
        }
        return this.internalDescribe(description, properties);
    }

    private boolean isProcessed(Map properties) {
        Boolean result = (Boolean)properties.get(RESULT);
        return result != null;
    }

    private void fillContentProperties(InputStream input, IContentDescription description, Map properties) throws IOException {
        byte[] bom = Util.getByteOrderMark(input);
        String xmlDeclEncoding = "UTF-8";
        input.reset();
        if (bom != null) {
            if (bom == IContentDescription.BOM_UTF_16BE) {
                xmlDeclEncoding = "UTF-16BE";
            } else if (bom == IContentDescription.BOM_UTF_16LE) {
                xmlDeclEncoding = "UTF-16LE";
            }
            input.skip(bom.length);
            properties.put(BOM, bom);
        }
        this.fillContentProperties(this.readXMLDecl(input, xmlDeclEncoding), description, properties);
    }

    private void fillContentProperties(String line, IContentDescription description, Map properties) throws IOException {
        String charset;
        if (line != null && line.startsWith(XML_PREFIX)) {
            properties.put(FULL_XML_DECL, new Boolean(true));
        }
        if ((charset = this.getCharset(line)) != null) {
            properties.put(CHARSET, charset);
        }
        properties.put(RESULT, new Boolean(true));
    }

    private int internalDescribe(IContentDescription description, Map properties) {
        Boolean fullXMLDecl;
        byte[] bom;
        if (description != null && (bom = (byte[])properties.get(BOM)) != null && description.isRequested(IContentDescription.BYTE_ORDER_MARK)) {
            description.setProperty(IContentDescription.BYTE_ORDER_MARK, bom);
        }
        if ((fullXMLDecl = (Boolean)properties.get(FULL_XML_DECL)) == null || !fullXMLDecl.booleanValue()) {
            return 1;
        }
        if (description == null) {
            return 2;
        }
        String charset = (String)properties.get(CHARSET);
        if (description.isRequested(IContentDescription.CHARSET)) {
            if (charset != null && !this.isCharsetValid(charset)) {
                return 0;
            }
            if (this.isNonDefaultCharset(charset)) {
                description.setProperty(IContentDescription.CHARSET, charset);
            }
        }
        return 2;
    }

    private boolean isNonDefaultCharset(String charset) {
        if (charset == null) {
            return false;
        }
        return !charset.equalsIgnoreCase("utf8") && !charset.equalsIgnoreCase("utf-8");
    }

    private boolean isFullXMLDecl(String xmlDecl) {
        return xmlDecl.endsWith(XML_DECL_END);
    }

    private String readXMLDecl(InputStream input, String encoding) throws IOException {
        byte[] xmlDeclEndBytes = XML_DECL_END.getBytes(encoding);
        int xmlDeclSize = 100 * xmlDeclEndBytes.length / 2;
        byte[] xmlDecl = new byte[xmlDeclSize];
        int c = 0;
        int read = 0;
        int count = 0;
        while (read < xmlDecl.length && (c = input.read()) != -1) {
            count = c == xmlDeclEndBytes[count] ? ++count : 0;
            xmlDecl[read++] = (byte)c;
            if (count == xmlDeclEndBytes.length) break;
        }
        return new String(xmlDecl, 0, read, encoding);
    }

    private String readXMLDecl(Reader input) throws IOException {
        BufferedReader reader = new BufferedReader(input);
        String xmlDecl = new String();
        String line = null;
        while (xmlDecl.length() < 100 && (line = reader.readLine()) != null) {
            xmlDecl = String.valueOf(xmlDecl) + line;
            if (line.indexOf(XML_DECL_END) == -1) continue;
            return xmlDecl.substring(0, xmlDecl.indexOf(XML_DECL_END) + XML_DECL_END.length());
        }
        return xmlDecl;
    }

    private String getCharset(String firstLine) {
        int encodingPos = this.findEncodingPosition(firstLine);
        if (encodingPos == -1) {
            return null;
        }
        int quoteChar = 34;
        int firstQuote = firstLine.indexOf(34, encodingPos);
        int firstApostrophe = firstLine.indexOf(39, encodingPos);
        if (firstQuote == -1 || firstApostrophe != -1 && firstApostrophe < firstQuote) {
            quoteChar = 39;
            firstQuote = firstApostrophe;
        }
        if (firstQuote == -1 || firstLine.length() == firstQuote + 1) {
            return null;
        }
        int secondQuote = firstLine.indexOf(quoteChar, firstQuote + 1);
        if (secondQuote == -1) {
            return this.isFullXMLDecl(firstLine) ? firstLine.substring(firstQuote + 1, firstLine.lastIndexOf(XML_DECL_END)).trim() : null;
        }
        return firstLine.substring(firstQuote + 1, secondQuote);
    }

    private int findEncodingPosition(String line) {
        String encoding = "encoding";
        int fromIndex = 0;
        int position = 0;
        block0: while ((position = line.indexOf(encoding, fromIndex)) != -1) {
            boolean equals = false;
            int i = fromIndex = position + encoding.length();
            while (i < line.length()) {
                char c = line.charAt(i);
                if (c == '=' && !equals) {
                    equals = true;
                } else if (c != ' ' && c != '\t' && c != '\r' && c != '\n') {
                    if (c != '\"' && c != '\'' || !equals) continue block0;
                    return position;
                }
                ++i;
            }
        }
        return -1;
    }

    private boolean isCharsetValid(String charset) {
        if (charset.length() == 0) {
            return false;
        }
        char c = charset.charAt(0);
        if (!(c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z')) {
            return false;
        }
        int i = 1;
        while (i < charset.length()) {
            c = charset.charAt(i);
            if (!(c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z' || c >= '0' && c <= '9' || c == '-' || c == '_' || c == '.')) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public QualifiedName[] getSupportedOptions() {
        return SUPPORTED_OPTIONS;
    }
}

