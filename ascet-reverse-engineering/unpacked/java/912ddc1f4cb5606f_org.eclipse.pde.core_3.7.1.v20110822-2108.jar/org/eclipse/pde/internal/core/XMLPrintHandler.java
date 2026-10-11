/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XMLPrintHandler {
    public static final String XML_COMMENT_END_TAG = "-->";
    public static final String XML_COMMENT_BEGIN_TAG = "<!--";
    public static final String XML_HEAD = "<?xml version=\"1.0\" encoding=\"";
    public static final String XML_HEAD_END_TAG = "?>";
    public static final String XML_DBL_QUOTES = "\"";
    public static final String XML_SPACE = " ";
    public static final String XML_BEGIN_TAG = "<";
    public static final String XML_END_TAG = ">";
    public static final String XML_EQUAL = "=";
    public static final String XML_SLASH = "/";
    public static final String XML_INDENT = "   ";

    public static String generateIndent(int level) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < level) {
            buffer.append(XML_INDENT);
            ++i;
        }
        return buffer.toString();
    }

    public static void printBeginElement(Writer xmlWriter, String elementString, String indent, boolean terminate) throws IOException {
        StringBuffer temp = new StringBuffer(indent);
        temp.append(XML_BEGIN_TAG);
        temp.append(elementString);
        if (terminate) {
            temp.append(XML_SLASH);
        }
        temp.append(XML_END_TAG);
        temp.append("\n");
        xmlWriter.write(temp.toString());
    }

    public static void printEndElement(Writer xmlWriter, String elementString, String indent) throws IOException {
        StringBuffer temp = new StringBuffer(indent);
        temp.append(XML_BEGIN_TAG);
        temp.append(XML_SLASH).append(elementString).append(XML_END_TAG).append("\n");
        xmlWriter.write(temp.toString());
    }

    public static void printText(Writer xmlWriter, String text, String indent) throws IOException {
        StringBuffer temp = new StringBuffer(indent);
        temp.append(XMLPrintHandler.encode(text).toString());
        temp.append("\n");
        xmlWriter.write(temp.toString());
    }

    public static void printComment(Writer xmlWriter, String comment, String indent) throws IOException {
        StringBuffer temp = new StringBuffer("\n");
        temp.append(indent);
        temp.append(XML_COMMENT_BEGIN_TAG);
        temp.append(XMLPrintHandler.encode(comment).toString()).append(XML_COMMENT_END_TAG).append("\n\n");
        xmlWriter.write(temp.toString());
    }

    public static void printHead(Writer xmlWriter, String encoding) throws IOException {
        StringBuffer temp = new StringBuffer(XML_HEAD);
        temp.append(encoding).append(XML_DBL_QUOTES).append(XML_HEAD_END_TAG).append("\n");
        xmlWriter.write(temp.toString());
    }

    public static String wrapAttributeForPrint(String attribute, String value) throws IOException {
        StringBuffer temp = new StringBuffer(XML_SPACE);
        temp.append(attribute).append(XML_EQUAL).append(XML_DBL_QUOTES).append(XMLPrintHandler.encode(value).toString()).append(XML_DBL_QUOTES);
        return temp.toString();
    }

    public static String wrapAttribute(String attribute, String value) {
        StringBuffer buffer = new StringBuffer(XML_SPACE);
        buffer.append(attribute);
        buffer.append(XML_EQUAL);
        buffer.append(XML_DBL_QUOTES);
        buffer.append(value);
        buffer.append(XML_DBL_QUOTES);
        return buffer.toString();
    }

    public static void printNode(Writer xmlWriter, Node node, String encoding, String indent) throws IOException {
        if (node == null) {
            return;
        }
        switch (node.getNodeType()) {
            case 9: {
                XMLPrintHandler.printHead(xmlWriter, encoding);
                XMLPrintHandler.printNode(xmlWriter, ((Document)node).getDocumentElement(), encoding, indent);
                break;
            }
            case 1: {
                StringBuffer tempElementString = new StringBuffer(node.getNodeName());
                NamedNodeMap attributeList = node.getAttributes();
                if (attributeList != null) {
                    int i = 0;
                    while (i < attributeList.getLength()) {
                        Node attribute = attributeList.item(i);
                        tempElementString.append(XMLPrintHandler.wrapAttributeForPrint(attribute.getNodeName(), attribute.getNodeValue()));
                        ++i;
                    }
                }
                NodeList childNodes = node.getChildNodes();
                int length = childNodes.getLength();
                XMLPrintHandler.printBeginElement(xmlWriter, tempElementString.toString(), indent, length == 0);
                int i = 0;
                while (i < length) {
                    XMLPrintHandler.printNode(xmlWriter, childNodes.item(i), encoding, String.valueOf(indent) + "\t");
                    ++i;
                }
                if (length <= 0) break;
                XMLPrintHandler.printEndElement(xmlWriter, node.getNodeName(), indent);
                break;
            }
            case 3: {
                xmlWriter.write(XMLPrintHandler.encode(node.getNodeValue()).toString());
                break;
            }
            default: {
                throw new UnsupportedOperationException("Unsupported XML Node Type.");
            }
        }
    }

    public static StringBuffer encode(String value) {
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < value.length()) {
            char c = value.charAt(i);
            switch (c) {
                case '&': {
                    buf.append("&amp;");
                    break;
                }
                case '<': {
                    buf.append("&lt;");
                    break;
                }
                case '>': {
                    buf.append("&gt;");
                    break;
                }
                case '\'': {
                    buf.append("&apos;");
                    break;
                }
                case '\"': {
                    buf.append("&quot;");
                    break;
                }
                default: {
                    buf.append(c);
                }
            }
            ++i;
        }
        return buf;
    }

    public static void writeFile(Document doc, File file) throws IOException {
        Writer writer = null;
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(file);
            writer = new OutputStreamWriter((OutputStream)out, "UTF-8");
            XMLPrintHandler.printNode(writer, doc, "UTF-8", "");
        }
        catch (Throwable throwable) {
            try {
                if (writer != null) {
                    writer.close();
                }
            }
            catch (IOException iOException) {}
            try {
                if (out != null) {
                    ((OutputStream)out).close();
                }
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            if (writer != null) {
                writer.close();
            }
        }
        catch (IOException iOException) {}
        try {
            if (out != null) {
                ((OutputStream)out).close();
            }
        }
        catch (IOException iOException) {}
    }
}

