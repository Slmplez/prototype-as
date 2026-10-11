/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.internal.launching;

import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class PListParser {
    private static final String PLIST_ELEMENT = "plist";
    private static final String KEY_ELEMENT = "key";
    private static final String DICT_ELEMENT = "dict";
    private static final String ARRAY_ELEMENT = "array";
    private static final String TRUE_ELEMENT = "true";
    private static final String FALSE_ELEMENT = "false";
    private static final String INT_ELEMENT = "integer";
    private static final String STRING_ELEMENT = "string";

    public Object parse(InputStream stream) throws CoreException {
        try {
            stream = new BufferedInputStream(stream);
            Object object = this.parseXML(stream);
            return object;
        }
        catch (FileNotFoundException e) {
            this.abort(e);
        }
        catch (SAXException e) {
            this.abort(e);
        }
        catch (ParserConfigurationException e) {
            this.abort(e);
        }
        catch (IOException e) {
            this.abort(e);
        }
        finally {
            if (stream != null) {
                try {
                    stream.close();
                }
                catch (IOException e) {
                    this.abort(e);
                }
            }
        }
        return null;
    }

    private Object parseXML(InputStream stream) throws CoreException, ParserConfigurationException, IOException, SAXException {
        Element root = null;
        DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        parser.setErrorHandler(new DefaultHandler());
        root = parser.parse(new InputSource(stream)).getDocumentElement();
        if (!root.getNodeName().equalsIgnoreCase(PLIST_ELEMENT)) {
            throw this.getInvalidFormatException();
        }
        NodeList list = root.getChildNodes();
        Node node = null;
        Element element = null;
        int i = 0;
        while (i < list.getLength()) {
            node = list.item(i);
            short nodeType = node.getNodeType();
            if (nodeType == 1) {
                element = (Element)node;
                return this.parseObject(element);
            }
            ++i;
        }
        return null;
    }

    private CoreException getInvalidFormatException() {
        return new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", "Invalid plist XML", null));
    }

    private Object parseObject(Element element) throws CoreException {
        String nodeName = element.getNodeName();
        if (nodeName.equalsIgnoreCase(ARRAY_ELEMENT)) {
            return this.parseArray(element);
        }
        if (nodeName.equalsIgnoreCase(DICT_ELEMENT)) {
            return this.parseDictionary(element);
        }
        if (nodeName.equalsIgnoreCase(KEY_ELEMENT)) {
            return this.getText(element);
        }
        if (nodeName.equalsIgnoreCase(TRUE_ELEMENT)) {
            return Boolean.TRUE;
        }
        if (nodeName.equalsIgnoreCase(FALSE_ELEMENT)) {
            return Boolean.FALSE;
        }
        if (nodeName.equalsIgnoreCase(INT_ELEMENT)) {
            try {
                return new Integer(Integer.parseInt(this.getText(element)));
            }
            catch (NumberFormatException e) {
                this.abort(e);
            }
        } else {
            if (nodeName.equalsIgnoreCase(STRING_ELEMENT)) {
                return this.getText(element);
            }
            if (nodeName.equalsIgnoreCase(KEY_ELEMENT)) {
                return this.getText(element);
            }
        }
        return null;
    }

    private Object[] parseArray(Element root) throws CoreException {
        ArrayList<Object> collection = new ArrayList<Object>();
        NodeList list = root.getChildNodes();
        Node node = null;
        Element element = null;
        int i = 0;
        while (i < list.getLength()) {
            Object obj;
            node = list.item(i);
            short nodeType = node.getNodeType();
            if (nodeType == 1 && (obj = this.parseObject(element = (Element)node)) != null) {
                collection.add(obj);
            }
            ++i;
        }
        return collection.toArray();
    }

    private Map parseDictionary(Element root) throws CoreException {
        HashMap<String, Object> dict = new HashMap<String, Object>();
        NodeList list = root.getChildNodes();
        Node node = null;
        Element element = null;
        String nodeName = null;
        String key = null;
        int i = 0;
        while (i < list.getLength()) {
            node = list.item(i);
            short nodeType = node.getNodeType();
            if (nodeType == 1) {
                element = (Element)node;
                nodeName = element.getNodeName();
                if (nodeName.equalsIgnoreCase(KEY_ELEMENT)) {
                    key = this.getText(element);
                } else {
                    dict.put(key, this.parseObject(element));
                }
            }
            ++i;
        }
        return dict;
    }

    private String getText(Element root) {
        NodeList list = root.getChildNodes();
        Node node = null;
        int i = 0;
        while (i < list.getLength()) {
            node = list.item(i);
            short nodeType = node.getNodeType();
            if (nodeType == 3) {
                return ((Text)node).getNodeValue();
            }
            ++i;
        }
        return null;
    }

    private void abort(Throwable t) throws CoreException {
        throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", "Exception occurred parsing property list", t));
    }
}

