/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public final class XMLMemento
implements IMemento {
    private Document factory;
    private Element element;

    public static XMLMemento createReadRoot(Reader reader) throws WorkbenchException {
        return XMLMemento.createReadRoot(reader, null);
    }

    public static XMLMemento createReadRoot(Reader reader, String baseDir) throws WorkbenchException {
        String errorMessage = null;
        Exception exception = null;
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder parser = factory.newDocumentBuilder();
            InputSource source = new InputSource(reader);
            if (baseDir != null) {
                source.setSystemId(baseDir);
            }
            parser.setErrorHandler(new ErrorHandler(){

                public void warning(SAXParseException exception) throws SAXException {
                }

                public void error(SAXParseException exception) throws SAXException {
                }

                public void fatalError(SAXParseException exception) throws SAXException {
                    throw exception;
                }
            });
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
            errorMessage = WorkbenchMessages.XMLMemento_parserConfigError;
        }
        catch (IOException e) {
            exception = e;
            errorMessage = WorkbenchMessages.XMLMemento_ioError;
        }
        catch (SAXException e) {
            exception = e;
            errorMessage = WorkbenchMessages.XMLMemento_formatError;
        }
        String problemText = null;
        if (exception != null) {
            problemText = exception.getMessage();
        }
        if (problemText == null || problemText.length() == 0) {
            problemText = errorMessage != null ? errorMessage : WorkbenchMessages.XMLMemento_noElement;
        }
        throw new WorkbenchException(problemText, exception);
    }

    public static XMLMemento createWriteRoot(String type) throws DOMException {
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

    public IMemento createChild(String type) throws DOMException {
        Element child = this.factory.createElement(type);
        this.element.appendChild(child);
        return new XMLMemento(this.factory, child);
    }

    public IMemento createChild(String type, String id) throws DOMException {
        Element child = this.factory.createElement(type);
        child.setAttribute("IMemento.internal.id", id == null ? "" : id);
        this.element.appendChild(child);
        return new XMLMemento(this.factory, child);
    }

    public IMemento copyChild(IMemento child) throws DOMException {
        Element childElement = ((XMLMemento)child).element;
        Element newElement = (Element)this.factory.importNode(childElement, true);
        this.element.appendChild(newElement);
        return new XMLMemento(this.factory, newElement);
    }

    public IMemento getChild(String type) {
        NodeList nodes = this.element.getChildNodes();
        int size = nodes.getLength();
        if (size == 0) {
            return null;
        }
        int nX = 0;
        while (nX < size) {
            Element element;
            Node node = nodes.item(nX);
            if (node instanceof Element && (element = (Element)node).getNodeName().equals(type)) {
                return new XMLMemento(this.factory, element);
            }
            ++nX;
        }
        return null;
    }

    public IMemento[] getChildren(String type) {
        NodeList nodes = this.element.getChildNodes();
        int size = nodes.getLength();
        if (size == 0) {
            return new IMemento[0];
        }
        ArrayList<Element> list = new ArrayList<Element>(size);
        int nX = 0;
        while (nX < size) {
            Element element;
            Node node = nodes.item(nX);
            if (node instanceof Element && (element = (Element)node).getNodeName().equals(type)) {
                list.add(element);
            }
            ++nX;
        }
        size = list.size();
        IMemento[] results = new IMemento[size];
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
            WorkbenchPlugin.log("Memento problem - Invalid float for key: " + key + " value: " + strValue, e);
            return null;
        }
    }

    public String getType() {
        return this.element.getNodeName();
    }

    public String getID() {
        return this.element.getAttribute("IMemento.internal.id");
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
            WorkbenchPlugin.log("Memento problem - invalid integer for key: " + key + " value: " + strValue, e);
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

    public String getTextData() throws DOMException {
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

    private void putElement(Element element, boolean copyText) throws DOMException {
        NamedNodeMap nodeMap = element.getAttributes();
        int size = nodeMap.getLength();
        int i = 0;
        while (i < size) {
            Attr attr = (Attr)nodeMap.item(i);
            this.putString(attr.getName(), attr.getValue());
            ++i;
        }
        NodeList nodes = element.getChildNodes();
        size = nodes.getLength();
        boolean needToCopyText = copyText;
        int i2 = 0;
        while (i2 < size) {
            Node node = nodes.item(i2);
            if (node instanceof Element) {
                XMLMemento child = (XMLMemento)this.createChild(node.getNodeName());
                child.putElement((Element)node, true);
            } else if (node instanceof Text && needToCopyText) {
                this.putTextData(((Text)node).getData());
                needToCopyText = false;
            }
            ++i2;
        }
    }

    public void putFloat(String key, float f) throws DOMException {
        this.element.setAttribute(key, String.valueOf(f));
    }

    public void putInteger(String key, int n) throws DOMException {
        this.element.setAttribute(key, String.valueOf(n));
    }

    public void putMemento(IMemento memento) throws DOMException {
        this.putElement(((XMLMemento)memento).element, false);
    }

    public void putString(String key, String value) throws DOMException {
        if (value == null) {
            return;
        }
        this.element.setAttribute(key, value);
    }

    public void putBoolean(String key, boolean value) throws DOMException {
        this.element.setAttribute(key, value ? "true" : "false");
    }

    public void putTextData(String data) throws DOMException {
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
                }
                this.endTag(element);
            }
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

