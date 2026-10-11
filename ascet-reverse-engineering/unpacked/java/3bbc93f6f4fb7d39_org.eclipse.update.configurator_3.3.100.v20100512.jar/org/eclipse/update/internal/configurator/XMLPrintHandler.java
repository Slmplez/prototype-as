/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.update.internal.configurator;

import java.io.IOException;
import java.io.Writer;
import org.eclipse.update.internal.configurator.Messages;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XMLPrintHandler {
    public static final String XML_HEAD = "<?xml version=\"1.0\" encoding=\"";
    public static final String XML_HEAD_END_TAG = "?>";
    public static final String XML_DBL_QUOTES = "\"";
    public static final String XML_SPACE = " ";
    public static final String XML_BEGIN_TAG = "<";
    public static final String XML_END_TAG = ">";
    public static final String XML_EQUAL = "=";
    public static final String XML_SLASH = "/";

    public static void printBeginElement(Writer xmlWriter, String elementString) throws IOException {
        StringBuffer temp = new StringBuffer(XML_BEGIN_TAG);
        temp.append(elementString).append(XML_END_TAG).append("\n");
        xmlWriter.write(temp.toString());
    }

    public static void printEndElement(Writer xmlWriter, String elementString) throws IOException {
        StringBuffer temp = new StringBuffer(XML_BEGIN_TAG);
        temp.append(XML_SLASH).append(elementString).append(XML_END_TAG).append("\n");
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

    public static void printNode(Writer xmlWriter, Node node, String encoding) throws Exception {
        if (node == null) {
            return;
        }
        switch (node.getNodeType()) {
            case 9: {
                XMLPrintHandler.printHead(xmlWriter, encoding);
                XMLPrintHandler.printNode(xmlWriter, ((Document)node).getDocumentElement(), encoding);
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
                XMLPrintHandler.printBeginElement(xmlWriter, tempElementString.toString());
                NodeList childNodes = node.getChildNodes();
                if (childNodes != null) {
                    int length = childNodes.getLength();
                    int i = 0;
                    while (i < length) {
                        XMLPrintHandler.printNode(xmlWriter, childNodes.item(i), encoding);
                        ++i;
                    }
                }
                XMLPrintHandler.printEndElement(xmlWriter, node.getNodeName());
                break;
            }
            case 3: {
                xmlWriter.write(XMLPrintHandler.encode(node.getNodeValue()).toString());
                break;
            }
            default: {
                throw new UnsupportedOperationException(Messages.XMLPrintHandler_unsupportedNodeType);
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
}

