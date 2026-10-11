/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.opti;

import java.util.ArrayList;
import org.apache.xerces.impl.xs.opti.AttrImpl;
import org.apache.xerces.impl.xs.opti.DefaultDocument;
import org.apache.xerces.impl.xs.opti.ElementImpl;
import org.apache.xerces.impl.xs.opti.NodeImpl;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLString;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class SchemaDOM
extends DefaultDocument {
    static final int relationsRowResizeFactor = 15;
    static final int relationsColResizeFactor = 10;
    NodeImpl[][] relations;
    ElementImpl parent;
    int currLoc;
    int nextFreeLoc;
    boolean hidden;
    boolean inCDATA;
    StringBuffer fAnnotationBuffer = null;

    public SchemaDOM() {
        this.reset();
    }

    public ElementImpl startElement(QName qName, XMLAttributes xMLAttributes, int n, int n2, int n3) {
        ElementImpl elementImpl = new ElementImpl(n, n2, n3);
        this.processElement(qName, xMLAttributes, elementImpl);
        this.parent = elementImpl;
        return elementImpl;
    }

    public ElementImpl emptyElement(QName qName, XMLAttributes xMLAttributes, int n, int n2, int n3) {
        ElementImpl elementImpl = new ElementImpl(n, n2, n3);
        this.processElement(qName, xMLAttributes, elementImpl);
        return elementImpl;
    }

    public ElementImpl startElement(QName qName, XMLAttributes xMLAttributes, int n, int n2) {
        return this.startElement(qName, xMLAttributes, n, n2, -1);
    }

    public ElementImpl emptyElement(QName qName, XMLAttributes xMLAttributes, int n, int n2) {
        return this.emptyElement(qName, xMLAttributes, n, n2, -1);
    }

    private void processElement(QName qName, XMLAttributes xMLAttributes, ElementImpl elementImpl) {
        elementImpl.prefix = qName.prefix;
        elementImpl.localpart = qName.localpart;
        elementImpl.rawname = qName.rawname;
        elementImpl.uri = qName.uri;
        elementImpl.schemaDOM = this;
        Attr[] attrArray = new Attr[xMLAttributes.getLength()];
        int n = 0;
        while (n < xMLAttributes.getLength()) {
            attrArray[n] = new AttrImpl(null, xMLAttributes.getPrefix(n), xMLAttributes.getLocalName(n), xMLAttributes.getQName(n), xMLAttributes.getURI(n), xMLAttributes.getValue(n));
            ++n;
        }
        elementImpl.attrs = attrArray;
        if (this.nextFreeLoc == this.relations.length) {
            this.resizeRelations();
        }
        if (this.relations[this.currLoc][0] != this.parent) {
            this.relations[this.nextFreeLoc][0] = this.parent;
            this.currLoc = this.nextFreeLoc++;
        }
        boolean bl = false;
        int n2 = 1;
        n2 = 1;
        while (n2 < this.relations[this.currLoc].length) {
            if (this.relations[this.currLoc][n2] == null) {
                bl = true;
                break;
            }
            ++n2;
        }
        if (!bl) {
            this.resizeRelations(this.currLoc);
        }
        this.relations[this.currLoc][n2] = elementImpl;
        this.parent.parentRow = this.currLoc;
        elementImpl.row = this.currLoc;
        elementImpl.col = n2;
    }

    public void endElement() {
        this.currLoc = this.parent.row;
        this.parent = (ElementImpl)this.relations[this.currLoc][0];
    }

    void comment(XMLString xMLString) {
        this.fAnnotationBuffer.append("<!--");
        if (xMLString.length > 0) {
            this.fAnnotationBuffer.append(xMLString.ch, xMLString.offset, xMLString.length);
        }
        this.fAnnotationBuffer.append("-->");
    }

    void processingInstruction(String string, XMLString xMLString) {
        this.fAnnotationBuffer.append("<?").append(string);
        if (xMLString.length > 0) {
            this.fAnnotationBuffer.append(' ').append(xMLString.ch, xMLString.offset, xMLString.length);
        }
        this.fAnnotationBuffer.append("?>");
    }

    void characters(XMLString xMLString) {
        if (!this.inCDATA) {
            int n = xMLString.offset;
            while (n < xMLString.offset + xMLString.length) {
                char c = xMLString.ch[n];
                if (c == '&') {
                    this.fAnnotationBuffer.append("&amp;");
                } else if (c == '<') {
                    this.fAnnotationBuffer.append("&lt;");
                } else if (c == '>') {
                    this.fAnnotationBuffer.append("&gt;");
                } else if (c == '\r') {
                    this.fAnnotationBuffer.append("&#xD;");
                } else {
                    this.fAnnotationBuffer.append(c);
                }
                ++n;
            }
        } else {
            this.fAnnotationBuffer.append(xMLString.ch, xMLString.offset, xMLString.length);
        }
    }

    void endAnnotation(QName qName, ElementImpl elementImpl) {
        this.fAnnotationBuffer.append("\n</").append(qName.rawname).append(">");
        elementImpl.fAnnotation = this.fAnnotationBuffer.toString();
        this.fAnnotationBuffer = null;
    }

    void endAnnotationElement(QName qName) {
        this.fAnnotationBuffer.append("</").append(qName.rawname).append(">");
    }

    void endSyntheticAnnotationElement(QName qName, boolean bl) {
        if (bl) {
            this.fAnnotationBuffer.append("\n</").append(qName.rawname).append(">");
            this.parent.fSyntheticAnnotation = this.fAnnotationBuffer.toString();
            this.fAnnotationBuffer = null;
        } else {
            this.fAnnotationBuffer.append("</").append(qName.rawname).append(">");
        }
    }

    void startAnnotationCDATA() {
        this.inCDATA = true;
        this.fAnnotationBuffer.append("<![CDATA[");
    }

    void endAnnotationCDATA() {
        this.fAnnotationBuffer.append("]]>");
        this.inCDATA = false;
    }

    private void resizeRelations() {
        NodeImpl[][] nodeImplArrayArray = new NodeImpl[this.relations.length + 15][];
        System.arraycopy(this.relations, 0, nodeImplArrayArray, 0, this.relations.length);
        int n = this.relations.length;
        while (n < nodeImplArrayArray.length) {
            nodeImplArrayArray[n] = new NodeImpl[10];
            ++n;
        }
        this.relations = nodeImplArrayArray;
    }

    private void resizeRelations(int n) {
        NodeImpl[] nodeImplArray = new NodeImpl[this.relations[n].length + 10];
        System.arraycopy(this.relations[n], 0, nodeImplArray, 0, this.relations[n].length);
        this.relations[n] = nodeImplArray;
    }

    public void reset() {
        if (this.relations != null) {
            int n = 0;
            while (n < this.relations.length) {
                int n2 = 0;
                while (n2 < this.relations[n].length) {
                    this.relations[n][n2] = null;
                    ++n2;
                }
                ++n;
            }
        }
        this.relations = new NodeImpl[15][];
        this.parent = new ElementImpl(0, 0, 0);
        this.parent.rawname = "DOCUMENT_NODE";
        this.currLoc = 0;
        this.nextFreeLoc = 1;
        this.inCDATA = false;
        int n = 0;
        while (n < 15) {
            this.relations[n] = new NodeImpl[10];
            ++n;
        }
        this.relations[this.currLoc][0] = this.parent;
    }

    public void printDOM() {
    }

    public static void traverse(Node node, int n) {
        Object object;
        SchemaDOM.indent(n);
        System.out.print("<" + node.getNodeName());
        if (node.hasAttributes()) {
            object = node.getAttributes();
            int n2 = 0;
            while (n2 < object.getLength()) {
                System.out.print("  " + ((Attr)object.item(n2)).getName() + "=\"" + ((Attr)object.item(n2)).getValue() + "\"");
                ++n2;
            }
        }
        if (node.hasChildNodes()) {
            System.out.println(">");
            n += 4;
            object = node.getFirstChild();
            while (object != null) {
                SchemaDOM.traverse((Node)object, n);
                object = object.getNextSibling();
            }
            SchemaDOM.indent(n -= 4);
            System.out.println("</" + node.getNodeName() + ">");
        } else {
            System.out.println("/>");
        }
    }

    public static void indent(int n) {
        int n2 = 0;
        while (n2 < n) {
            System.out.print(' ');
            ++n2;
        }
    }

    public Element getDocumentElement() {
        return (ElementImpl)this.relations[0][1];
    }

    void startAnnotation(QName qName, XMLAttributes xMLAttributes, NamespaceContext namespaceContext) {
        String string;
        String string2;
        Object object;
        if (this.fAnnotationBuffer == null) {
            this.fAnnotationBuffer = new StringBuffer(256);
        }
        this.fAnnotationBuffer.append("<").append(qName.rawname).append(" ");
        ArrayList<String> arrayList = new ArrayList<String>();
        int n = 0;
        while (n < xMLAttributes.getLength()) {
            object = xMLAttributes.getValue(n);
            string2 = xMLAttributes.getPrefix(n);
            string = xMLAttributes.getQName(n);
            if (string2 == XMLSymbols.PREFIX_XMLNS || string == XMLSymbols.PREFIX_XMLNS) {
                arrayList.add(string2 == XMLSymbols.PREFIX_XMLNS ? xMLAttributes.getLocalName(n) : XMLSymbols.EMPTY_STRING);
            }
            this.fAnnotationBuffer.append(string).append("=\"").append(SchemaDOM.processAttValue((String)object)).append("\" ");
            ++n;
        }
        object = namespaceContext.getAllPrefixes();
        while (object.hasMoreElements()) {
            string2 = (String)object.nextElement();
            string = namespaceContext.getURI(string2);
            if (string == null) {
                string = XMLSymbols.EMPTY_STRING;
            }
            if (arrayList.contains(string2)) continue;
            if (string2 == XMLSymbols.EMPTY_STRING) {
                this.fAnnotationBuffer.append("xmlns").append("=\"").append(SchemaDOM.processAttValue(string)).append("\" ");
                continue;
            }
            this.fAnnotationBuffer.append("xmlns:").append(string2).append("=\"").append(SchemaDOM.processAttValue(string)).append("\" ");
        }
        this.fAnnotationBuffer.append(">\n");
    }

    void startAnnotationElement(QName qName, XMLAttributes xMLAttributes) {
        this.fAnnotationBuffer.append("<").append(qName.rawname);
        int n = 0;
        while (n < xMLAttributes.getLength()) {
            String string = xMLAttributes.getValue(n);
            this.fAnnotationBuffer.append(" ").append(xMLAttributes.getQName(n)).append("=\"").append(SchemaDOM.processAttValue(string)).append("\"");
            ++n;
        }
        this.fAnnotationBuffer.append(">");
    }

    private static String processAttValue(String string) {
        int n = string.length();
        int n2 = 0;
        while (n2 < n) {
            char c = string.charAt(n2);
            if (c == '\"' || c == '<' || c == '&' || c == '\t' || c == '\n' || c == '\r') {
                return SchemaDOM.escapeAttValue(string, n2);
            }
            ++n2;
        }
        return string;
    }

    private static String escapeAttValue(String string, int n) {
        int n2 = string.length();
        StringBuffer stringBuffer = new StringBuffer(n2);
        stringBuffer.append(string.substring(0, n));
        int n3 = n;
        while (n3 < n2) {
            char c = string.charAt(n3);
            if (c == '\"') {
                stringBuffer.append("&quot;");
            } else if (c == '<') {
                stringBuffer.append("&lt;");
            } else if (c == '&') {
                stringBuffer.append("&amp;");
            } else if (c == '\t') {
                stringBuffer.append("&#x9;");
            } else if (c == '\n') {
                stringBuffer.append("&#xA;");
            } else if (c == '\r') {
                stringBuffer.append("&#xD;");
            } else {
                stringBuffer.append(c);
            }
            ++n3;
        }
        return stringBuffer.toString();
    }
}

