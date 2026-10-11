/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.util;

import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.SAXException;

public class PDEXMLHelper {
    protected static SAXParserFactory fSAXFactory;
    protected static PDEXMLHelper fPinstance;
    protected static DocumentBuilderFactory fDOMFactory;
    protected static List fSAXParserQueue;
    protected static List fDOMParserQueue;
    protected static int fSAXPoolLimit;
    protected static int fDOMPoolLimit;
    protected static final int FMAXPOOLLIMIT = 1;

    protected PDEXMLHelper() throws FactoryConfigurationError {
        fSAXFactory = SAXParserFactory.newInstance();
        fDOMFactory = DocumentBuilderFactory.newInstance();
        fSAXParserQueue = Collections.synchronizedList(new LinkedList());
        fDOMParserQueue = Collections.synchronizedList(new LinkedList());
        fSAXPoolLimit = 1;
        fDOMPoolLimit = 1;
    }

    public synchronized SAXParser getDefaultSAXParser() throws ParserConfigurationException, SAXException {
        SoftReference reference;
        SAXParser parser = null;
        parser = fSAXParserQueue.isEmpty() ? fSAXFactory.newSAXParser() : ((reference = (SoftReference)fSAXParserQueue.remove(0)).get() != null ? (SAXParser)reference.get() : fSAXFactory.newSAXParser());
        return parser;
    }

    public synchronized DocumentBuilder getDefaultDOMParser() throws ParserConfigurationException {
        SoftReference reference;
        DocumentBuilder parser = null;
        parser = fDOMParserQueue.isEmpty() ? fDOMFactory.newDocumentBuilder() : ((reference = (SoftReference)fDOMParserQueue.remove(0)).get() != null ? (DocumentBuilder)reference.get() : fDOMFactory.newDocumentBuilder());
        return parser;
    }

    public static PDEXMLHelper Instance() throws FactoryConfigurationError {
        if (fPinstance == null) {
            fPinstance = new PDEXMLHelper();
        }
        return fPinstance;
    }

    public synchronized void recycleSAXParser(SAXParser parser) {
        if (fSAXParserQueue.size() < fSAXPoolLimit) {
            SoftReference<SAXParser> reference = new SoftReference<SAXParser>(parser);
            fSAXParserQueue.add(reference);
        }
    }

    public synchronized void recycleDOMParser(DocumentBuilder parser) {
        if (fDOMParserQueue.size() < fDOMPoolLimit) {
            SoftReference<DocumentBuilder> reference = new SoftReference<DocumentBuilder>(parser);
            fDOMParserQueue.add(reference);
        }
    }

    public static String getWritableString(String source) {
        if (source == null) {
            return "";
        }
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < source.length()) {
            char c = source.charAt(i);
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
        return buf.toString();
    }

    public static String getWritableAttributeString(String source) {
        if (source == null) {
            return "";
        }
        source = source.trim();
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < source.length()) {
            char character = source.charAt(i);
            switch (character) {
                case '&': {
                    buffer.append("&amp;");
                    break;
                }
                case '<': {
                    buffer.append("&lt;");
                    break;
                }
                case '>': {
                    buffer.append("&gt;");
                    break;
                }
                case '\'': {
                    buffer.append("&apos;");
                    break;
                }
                case '\"': {
                    buffer.append("&quot;");
                    break;
                }
                case '\r': {
                    buffer.append("&#x0D;");
                    break;
                }
                case '\n': {
                    buffer.append("&#x0A;");
                    break;
                }
                default: {
                    buffer.append(character);
                }
            }
            ++i;
        }
        return buffer.toString();
    }

    public static int getSAXPoolLimit() {
        return fSAXPoolLimit;
    }

    public static void setSAXPoolLimit(int poolLimit) {
        fSAXPoolLimit = poolLimit;
    }

    public static int getDOMPoolLimit() {
        return fDOMPoolLimit;
    }

    public static void setDOMPoolLimit(int poolLimit) {
        fDOMPoolLimit = poolLimit;
    }
}

