/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.internal.core;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.debug.core.DebugPlugin;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public final class XMLMemento {
    private Document factory;
    private Element element;

    public static XMLMemento createReadRoot(Reader reader) throws Exception {
        return XMLMemento.createReadRoot(reader, null);
    }

    public static XMLMemento createReadRoot(Reader reader, String baseDir) throws Exception {
        String errorMessage = null;
        Exception exception = null;
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder parser = factory.newDocumentBuilder();
            InputSource source = new InputSource(reader);
            if (baseDir != null) {
                source.setSystemId(baseDir);
            }
            Document document = parser.parse(source);
            NodeList list = document.getChildNodes();
            int i = 0;
            while (i < list.getLength()) {
                Node node = list.item(i);
                if (node instanceof Element) {
                    return new XMLMemento(document, (Element)node);
                }
                ++i;
            }
        }
        catch (ParserConfigurationException e) {
            exception = e;
        }
        catch (IOException e) {
            exception = e;
        }
        catch (SAXException e) {
            exception = e;
        }
        String problemText = null;
        if (exception != null) {
            problemText = exception.getMessage();
        }
        if (problemText == null || problemText.length() == 0) {
            problemText = errorMessage != null ? errorMessage : "ERROR";
        }
        throw new Exception(problemText, exception);
    }

    public static XMLMemento createWriteRoot(String type) {
        try {
            Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
            Element element = document.createElement(type);
            document.appendChild(element);
            return new XMLMemento(document, element);
        }
        catch (ParserConfigurationException e) {
            throw new Error(e.getMessage());
        }
    }

    public XMLMemento(Document document, Element element) {
        this.factory = document;
        this.element = element;
    }

    public XMLMemento createChild(String type) {
        Element child = this.factory.createElement(type);
        this.element.appendChild(child);
        return new XMLMemento(this.factory, child);
    }

    public XMLMemento createChild(String type, String id) {
        Element child = this.factory.createElement(type);
        child.setAttribute("id", id == null ? "" : id);
        this.element.appendChild(child);
        return new XMLMemento(this.factory, child);
    }

    public XMLMemento copyChild(XMLMemento child) {
        Element childElement = child.element;
        Element newElement = (Element)this.factory.importNode(childElement, true);
        this.element.appendChild(newElement);
        return new XMLMemento(this.factory, newElement);
    }

    public XMLMemento getChild(String type) {
        NodeList nodes = this.element.getChildNodes();
        int size = nodes.getLength();
        if (size == 0) {
            return null;
        }
        int nX = 0;
        while (nX < size) {
            Element element1;
            Node node = nodes.item(nX);
            if (node instanceof Element && (element1 = (Element)node).getNodeName().equals(type)) {
                return new XMLMemento(this.factory, element1);
            }
            ++nX;
        }
        return null;
    }

    public XMLMemento[] getChildren(String type) {
        NodeList nodes = this.element.getChildNodes();
        int size = nodes.getLength();
        if (size == 0) {
            return new XMLMemento[0];
        }
        ArrayList<Element> list = new ArrayList<Element>(size);
        int nX = 0;
        while (nX < size) {
            Element element1;
            Node node = nodes.item(nX);
            if (node instanceof Element && (element1 = (Element)node).getNodeName().equals(type)) {
                list.add(element1);
            }
            ++nX;
        }
        size = list.size();
        XMLMemento[] results = new XMLMemento[size];
        int x = 0;
        while (x < size) {
            results[x] = new XMLMemento(this.factory, (Element)list.get(x));
            ++x;
        }
        return results;
    }

    public Float getFloat(String key) {
        Attr attr = this.element.getAttributeNode(key);
        if (attr == null) {
            return null;
        }
        String strValue = attr.getValue();
        try {
            return new Float(strValue);
        }
        catch (NumberFormatException e) {
            DebugPlugin.logMessage("Memento problem - Invalid float for key: " + key + " value: " + strValue, e);
            return null;
        }
    }

    public String getType() {
        return this.element.getNodeName();
    }

    public String getID() {
        return this.element.getAttribute("id");
    }

    public Integer getInteger(String key) {
        Attr attr = this.element.getAttributeNode(key);
        if (attr == null) {
            return null;
        }
        String strValue = attr.getValue();
        try {
            return new Integer(strValue);
        }
        catch (NumberFormatException e) {
            DebugPlugin.logMessage("Memento problem - invalid integer for key: " + key + " value: " + strValue, e);
            return null;
        }
    }

    public String getString(String key) {
        Attr attr = this.element.getAttributeNode(key);
        if (attr == null) {
            return null;
        }
        return attr.getValue();
    }

    public Boolean getBoolean(String key) {
        Attr attr = this.element.getAttributeNode(key);
        if (attr == null) {
            return null;
        }
        return Boolean.valueOf(attr.getValue());
    }

    public String getTextData() {
        Text textNode = this.getTextNode();
        if (textNode != null) {
            return textNode.getData();
        }
        return null;
    }

    public String[] getAttributeKeys() {
        NamedNodeMap map = this.element.getAttributes();
        int size = map.getLength();
        String[] attributes = new String[size];
        int i = 0;
        while (i < size) {
            Node node = map.item(i);
            attributes[i] = node.getNodeName();
            ++i;
        }
        return attributes;
    }

    private Text getTextNode() {
        NodeList nodes = this.element.getChildNodes();
        int size = nodes.getLength();
        if (size == 0) {
            return null;
        }
        int nX = 0;
        while (nX < size) {
            Node node = nodes.item(nX);
            if (node instanceof Text) {
                return (Text)node;
            }
            ++nX;
        }
        return null;
    }

    private void putElement(Element element1, boolean copyText) {
        NamedNodeMap nodeMap = element1.getAttributes();
        int size = nodeMap.getLength();
        int i = 0;
        while (i < size) {
            Attr attr = (Attr)nodeMap.item(i);
            this.putString(attr.getName(), attr.getValue());
            ++i;
        }
        NodeList nodes = element1.getChildNodes();
        size = nodes.getLength();
        boolean needToCopyText = copyText;
        int i2 = 0;
        while (i2 < size) {
            Node node = nodes.item(i2);
            if (node instanceof Element) {
                XMLMemento child = this.createChild(node.getNodeName());
                child.putElement((Element)node, true);
            } else if (node instanceof Text && needToCopyText) {
                this.putTextData(((Text)node).getData());
                needToCopyText = false;
            }
            ++i2;
        }
    }

    public void putFloat(String key, float f) {
        this.element.setAttribute(key, String.valueOf(f));
    }

    public void putInteger(String key, int n) {
        this.element.setAttribute(key, String.valueOf(n));
    }

    public void putMemento(XMLMemento memento) {
        this.putElement(memento.element, false);
    }

    public void putString(String key, String value) {
        if (value == null) {
            return;
        }
        this.element.setAttribute(key, value);
    }

    public void putBoolean(String key, boolean value) {
        this.element.setAttribute(key, value ? "true" : "false");
    }

    public void putTextData(String data) {
        Text textNode = this.getTextNode();
        if (textNode == null) {
            textNode = this.factory.createTextNode(data);
            this.element.insertBefore(textNode, this.element.getFirstChild());
        } else {
            textNode.setData(data);
        }
    }

    public void save(Writer writer) throws IOException {
        DOMWriter out = new DOMWriter(writer);
        try {
            out.print(this.element);
        }
        finally {
            out.close();
        }
    }

    private static final class DOMWriter
    extends PrintWriter {
        private static final String XML_VERSION = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";

        public DOMWriter(Writer output) {
            super(output);
            this.println(XML_VERSION);
        }

        public void print(Element element) {
            boolean hasChildren = element.hasChildNodes();
            this.startTag(element, hasChildren);
            if (hasChildren) {
                boolean prevWasText = false;
                NodeList children = element.getChildNodes();
                int i = 0;
                while (i < children.getLength()) {
                    Node node = children.item(i);
                    if (node instanceof Element) {
                        if (!prevWasText) {
                            this.println();
                            this.printTabulation();
                        }
                        this.print((Element)children.item(i));
                        prevWasText = false;
                    } else if (node instanceof Text) {
                        this.print(DOMWriter.getEscaped(node.getNodeValue()));
                        prevWasText = true;
                    }
                    ++i;
                }
                if (!prevWasText) {
                    this.println();
                    this.printTabulation();
                }
                this.endTag(element);
            }
        }

        private void printTabulation() {
        }

        private void startTag(Element element, boolean hasChildren) {
            StringBuffer sb = new StringBuffer();
            sb.append("<");
            sb.append(element.getTagName());
            NamedNodeMap attributes = element.getAttributes();
            int i = 0;
            while (i < attributes.getLength()) {
                Attr attribute = (Attr)attributes.item(i);
                sb.append(" ");
                sb.append(attribute.getName());
                sb.append("=\"");
                sb.append(DOMWriter.getEscaped(String.valueOf(attribute.getValue())));
                sb.append("\"");
                ++i;
            }
            sb.append(hasChildren ? ">" : "/>");
            this.print(sb.toString());
        }

        private void endTag(Element element) {
            StringBuffer sb = new StringBuffer();
            sb.append("</");
            sb.append(element.getNodeName());
            sb.append(">");
            this.print(sb.toString());
        }

        private static void appendEscapedChar(StringBuffer buffer, char c) {
            String replacement = DOMWriter.getReplacement(c);
            if (replacement != null) {
                buffer.append('&');
                buffer.append(replacement);
                buffer.append(';');
            } else if (c == '\t' || c == '\n' || c == '\r' || c >= ' ') {
                buffer.append(c);
            }
        }

        private static String getEscaped(String s) {
            StringBuffer result = new StringBuffer(s.length() + 10);
            int i = 0;
            while (i < s.length()) {
                DOMWriter.appendEscapedChar(result, s.charAt(i));
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
                case '\r': {
                    return "#x0D";
                }
                case '\n': {
                    return "#x0A";
                }
                case '\t': {
                    return "#x09";
                }
            }
            return null;
        }
    }
}

