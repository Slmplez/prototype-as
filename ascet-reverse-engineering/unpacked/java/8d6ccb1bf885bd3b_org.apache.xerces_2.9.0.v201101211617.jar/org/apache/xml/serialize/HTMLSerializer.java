/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xml.serialize;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Locale;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xml.serialize.BaseMarkupSerializer;
import org.apache.xml.serialize.ElementState;
import org.apache.xml.serialize.HTMLdtd;
import org.apache.xml.serialize.OutputFormat;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.xml.sax.AttributeList;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

public class HTMLSerializer
extends BaseMarkupSerializer {
    private boolean _xhtml;
    public static final String XHTMLNamespace = "http://www.w3.org/1999/xhtml";
    private String fUserXHTMLNamespace = null;

    protected HTMLSerializer(boolean bl, OutputFormat outputFormat) {
        super(outputFormat);
        this._xhtml = bl;
    }

    public HTMLSerializer() {
        this(false, new OutputFormat("html", "ISO-8859-1", false));
    }

    public HTMLSerializer(OutputFormat outputFormat) {
        this(false, outputFormat != null ? outputFormat : new OutputFormat("html", "ISO-8859-1", false));
    }

    public HTMLSerializer(Writer writer, OutputFormat outputFormat) {
        this(false, outputFormat != null ? outputFormat : new OutputFormat("html", "ISO-8859-1", false));
        this.setOutputCharStream(writer);
    }

    public HTMLSerializer(OutputStream outputStream, OutputFormat outputFormat) {
        this(false, outputFormat != null ? outputFormat : new OutputFormat("html", "ISO-8859-1", false));
        this.setOutputByteStream(outputStream);
    }

    public void setOutputFormat(OutputFormat outputFormat) {
        super.setOutputFormat(outputFormat != null ? outputFormat : new OutputFormat("html", "ISO-8859-1", false));
    }

    public void setXHTMLNamespace(String string) {
        this.fUserXHTMLNamespace = string;
    }

    public void startElement(String string, String string2, String string3, Attributes attributes) throws SAXException {
        boolean bl = false;
        try {
            String string4;
            String string5;
            Object object;
            boolean bl2;
            if (this._printer == null) {
                throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
            }
            ElementState elementState = this.getElementState();
            if (this.isDocumentState()) {
                if (!this._started) {
                    this.startDocument(string2 == null || string2.length() == 0 ? string3 : string2);
                }
            } else {
                if (elementState.empty) {
                    this._printer.printText('>');
                }
                if (this._indenting && !elementState.preserveSpace && (elementState.empty || elementState.afterElement)) {
                    this._printer.breakLine();
                }
            }
            boolean bl3 = elementState.preserveSpace;
            boolean bl4 = bl2 = string != null && string.length() != 0;
            if (string3 == null || string3.length() == 0) {
                string3 = string2;
                if (bl2 && (object = this.getPrefix(string)) != null && ((String)object).length() != 0) {
                    string3 = (String)object + ":" + string2;
                }
                bl = true;
            }
            String string6 = !bl2 ? string3 : (string.equals(XHTMLNamespace) || this.fUserXHTMLNamespace != null && this.fUserXHTMLNamespace.equals(string) ? string2 : null);
            this._printer.printText('<');
            if (this._xhtml) {
                this._printer.printText(string3.toLowerCase(Locale.ENGLISH));
            } else {
                this._printer.printText(string3);
            }
            this._printer.indent();
            if (attributes != null) {
                int n = 0;
                while (n < attributes.getLength()) {
                    this._printer.printSpace();
                    string5 = attributes.getQName(n).toLowerCase(Locale.ENGLISH);
                    string4 = attributes.getValue(n);
                    if (this._xhtml || bl2) {
                        if (string4 == null) {
                            this._printer.printText(string5);
                            this._printer.printText("=\"\"");
                        } else {
                            this._printer.printText(string5);
                            this._printer.printText("=\"");
                            this.printEscaped(string4);
                            this._printer.printText('\"');
                        }
                    } else {
                        if (string4 == null) {
                            string4 = "";
                        }
                        if (!this._format.getPreserveEmptyAttributes() && string4.length() == 0) {
                            this._printer.printText(string5);
                        } else if (HTMLdtd.isURI(string3, string5)) {
                            this._printer.printText(string5);
                            this._printer.printText("=\"");
                            this._printer.printText(this.escapeURI(string4));
                            this._printer.printText('\"');
                        } else if (HTMLdtd.isBoolean(string3, string5)) {
                            this._printer.printText(string5);
                        } else {
                            this._printer.printText(string5);
                            this._printer.printText("=\"");
                            this.printEscaped(string4);
                            this._printer.printText('\"');
                        }
                    }
                    ++n;
                }
            }
            if (string6 != null && HTMLdtd.isPreserveSpace(string6)) {
                bl3 = true;
            }
            if (bl) {
                object = this._prefixes.keys();
                while (object.hasMoreElements()) {
                    this._printer.printSpace();
                    string4 = (String)object.nextElement();
                    string5 = (String)this._prefixes.get(string4);
                    if (string5.length() == 0) {
                        this._printer.printText("xmlns=\"");
                        this.printEscaped(string4);
                        this._printer.printText('\"');
                        continue;
                    }
                    this._printer.printText("xmlns:");
                    this._printer.printText(string5);
                    this._printer.printText("=\"");
                    this.printEscaped(string4);
                    this._printer.printText('\"');
                }
            }
            elementState = this.enterElementState(string, string2, string3, bl3);
            if (string6 != null && (string6.equalsIgnoreCase("A") || string6.equalsIgnoreCase("TD"))) {
                elementState.empty = false;
                this._printer.printText('>');
            }
            if (string6 != null && (string3.equalsIgnoreCase("SCRIPT") || string3.equalsIgnoreCase("STYLE"))) {
                if (this._xhtml) {
                    elementState.doCData = true;
                } else {
                    elementState.unescaped = true;
                }
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void endElement(String string, String string2, String string3) throws SAXException {
        try {
            this.endElementIO(string, string2, string3);
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void endElementIO(String string, String string2, String string3) throws IOException {
        this._printer.unindent();
        ElementState elementState = this.getElementState();
        String string4 = elementState.namespaceURI == null || elementState.namespaceURI.length() == 0 ? elementState.rawName : (elementState.namespaceURI.equals(XHTMLNamespace) || this.fUserXHTMLNamespace != null && this.fUserXHTMLNamespace.equals(elementState.namespaceURI) ? elementState.localName : null);
        if (this._xhtml) {
            if (elementState.empty) {
                this._printer.printText(" />");
            } else {
                if (elementState.inCData) {
                    this._printer.printText("]]>");
                }
                this._printer.printText("</");
                this._printer.printText(elementState.rawName.toLowerCase(Locale.ENGLISH));
                this._printer.printText('>');
            }
        } else {
            if (elementState.empty) {
                this._printer.printText('>');
            }
            if (string4 == null || !HTMLdtd.isOnlyOpening(string4)) {
                if (this._indenting && !elementState.preserveSpace && elementState.afterElement) {
                    this._printer.breakLine();
                }
                if (elementState.inCData) {
                    this._printer.printText("]]>");
                }
                this._printer.printText("</");
                this._printer.printText(elementState.rawName);
                this._printer.printText('>');
            }
        }
        elementState = this.leaveElementState();
        if (string4 == null || !string4.equalsIgnoreCase("A") && !string4.equalsIgnoreCase("TD")) {
            elementState.afterElement = true;
        }
        elementState.empty = false;
        if (this.isDocumentState()) {
            this._printer.flush();
        }
    }

    public void characters(char[] cArray, int n, int n2) throws SAXException {
        try {
            ElementState elementState = this.content();
            elementState.doCData = false;
            super.characters(cArray, n, n2);
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void startElement(String string, AttributeList attributeList) throws SAXException {
        try {
            if (this._printer == null) {
                throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
            }
            ElementState elementState = this.getElementState();
            if (this.isDocumentState()) {
                if (!this._started) {
                    this.startDocument(string);
                }
            } else {
                if (elementState.empty) {
                    this._printer.printText('>');
                }
                if (this._indenting && !elementState.preserveSpace && (elementState.empty || elementState.afterElement)) {
                    this._printer.breakLine();
                }
            }
            boolean bl = elementState.preserveSpace;
            this._printer.printText('<');
            if (this._xhtml) {
                this._printer.printText(string.toLowerCase(Locale.ENGLISH));
            } else {
                this._printer.printText(string);
            }
            this._printer.indent();
            if (attributeList != null) {
                int n = 0;
                while (n < attributeList.getLength()) {
                    this._printer.printSpace();
                    String string2 = attributeList.getName(n).toLowerCase(Locale.ENGLISH);
                    String string3 = attributeList.getValue(n);
                    if (this._xhtml) {
                        if (string3 == null) {
                            this._printer.printText(string2);
                            this._printer.printText("=\"\"");
                        } else {
                            this._printer.printText(string2);
                            this._printer.printText("=\"");
                            this.printEscaped(string3);
                            this._printer.printText('\"');
                        }
                    } else {
                        if (string3 == null) {
                            string3 = "";
                        }
                        if (!this._format.getPreserveEmptyAttributes() && string3.length() == 0) {
                            this._printer.printText(string2);
                        } else if (HTMLdtd.isURI(string, string2)) {
                            this._printer.printText(string2);
                            this._printer.printText("=\"");
                            this._printer.printText(this.escapeURI(string3));
                            this._printer.printText('\"');
                        } else if (HTMLdtd.isBoolean(string, string2)) {
                            this._printer.printText(string2);
                        } else {
                            this._printer.printText(string2);
                            this._printer.printText("=\"");
                            this.printEscaped(string3);
                            this._printer.printText('\"');
                        }
                    }
                    ++n;
                }
            }
            if (HTMLdtd.isPreserveSpace(string)) {
                bl = true;
            }
            elementState = this.enterElementState(null, null, string, bl);
            if (string.equalsIgnoreCase("A") || string.equalsIgnoreCase("TD")) {
                elementState.empty = false;
                this._printer.printText('>');
            }
            if (string.equalsIgnoreCase("SCRIPT") || string.equalsIgnoreCase("STYLE")) {
                if (this._xhtml) {
                    elementState.doCData = true;
                } else {
                    elementState.unescaped = true;
                }
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void endElement(String string) throws SAXException {
        this.endElement(null, null, string);
    }

    protected void startDocument(String string) throws IOException {
        this._printer.leaveDTD();
        if (!this._started) {
            if (this._docTypePublicId == null && this._docTypeSystemId == null) {
                if (this._xhtml) {
                    this._docTypePublicId = "-//W3C//DTD XHTML 1.0 Strict//EN";
                    this._docTypeSystemId = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd";
                } else {
                    this._docTypePublicId = "-//W3C//DTD HTML 4.01//EN";
                    this._docTypeSystemId = "http://www.w3.org/TR/html4/strict.dtd";
                }
            }
            if (!this._format.getOmitDocumentType()) {
                if (!(this._docTypePublicId == null || this._xhtml && this._docTypeSystemId == null)) {
                    if (this._xhtml) {
                        this._printer.printText("<!DOCTYPE html PUBLIC ");
                    } else {
                        this._printer.printText("<!DOCTYPE HTML PUBLIC ");
                    }
                    this.printDoctypeURL(this._docTypePublicId);
                    if (this._docTypeSystemId != null) {
                        if (this._indenting) {
                            this._printer.breakLine();
                            this._printer.printText("                      ");
                        } else {
                            this._printer.printText(' ');
                        }
                        this.printDoctypeURL(this._docTypeSystemId);
                    }
                    this._printer.printText('>');
                    this._printer.breakLine();
                } else if (this._docTypeSystemId != null) {
                    if (this._xhtml) {
                        this._printer.printText("<!DOCTYPE html SYSTEM ");
                    } else {
                        this._printer.printText("<!DOCTYPE HTML SYSTEM ");
                    }
                    this.printDoctypeURL(this._docTypeSystemId);
                    this._printer.printText('>');
                    this._printer.breakLine();
                }
            }
        }
        this._started = true;
        this.serializePreRoot();
    }

    protected void serializeElement(Element element) throws IOException {
        String string = element.getTagName();
        ElementState elementState = this.getElementState();
        if (this.isDocumentState()) {
            if (!this._started) {
                this.startDocument(string);
            }
        } else {
            if (elementState.empty) {
                this._printer.printText('>');
            }
            if (this._indenting && !elementState.preserveSpace && (elementState.empty || elementState.afterElement)) {
                this._printer.breakLine();
            }
        }
        boolean bl = elementState.preserveSpace;
        this._printer.printText('<');
        if (this._xhtml) {
            this._printer.printText(string.toLowerCase(Locale.ENGLISH));
        } else {
            this._printer.printText(string);
        }
        this._printer.indent();
        NamedNodeMap namedNodeMap = element.getAttributes();
        if (namedNodeMap != null) {
            int n = 0;
            while (n < namedNodeMap.getLength()) {
                Attr attr = (Attr)namedNodeMap.item(n);
                String string2 = attr.getName().toLowerCase(Locale.ENGLISH);
                String string3 = attr.getValue();
                if (attr.getSpecified()) {
                    this._printer.printSpace();
                    if (this._xhtml) {
                        if (string3 == null) {
                            this._printer.printText(string2);
                            this._printer.printText("=\"\"");
                        } else {
                            this._printer.printText(string2);
                            this._printer.printText("=\"");
                            this.printEscaped(string3);
                            this._printer.printText('\"');
                        }
                    } else {
                        if (string3 == null) {
                            string3 = "";
                        }
                        if (!this._format.getPreserveEmptyAttributes() && string3.length() == 0) {
                            this._printer.printText(string2);
                        } else if (HTMLdtd.isURI(string, string2)) {
                            this._printer.printText(string2);
                            this._printer.printText("=\"");
                            this._printer.printText(this.escapeURI(string3));
                            this._printer.printText('\"');
                        } else if (HTMLdtd.isBoolean(string, string2)) {
                            this._printer.printText(string2);
                        } else {
                            this._printer.printText(string2);
                            this._printer.printText("=\"");
                            this.printEscaped(string3);
                            this._printer.printText('\"');
                        }
                    }
                }
                ++n;
            }
        }
        if (HTMLdtd.isPreserveSpace(string)) {
            bl = true;
        }
        if (element.hasChildNodes() || !HTMLdtd.isEmptyTag(string)) {
            elementState = this.enterElementState(null, null, string, bl);
            if (string.equalsIgnoreCase("A") || string.equalsIgnoreCase("TD")) {
                elementState.empty = false;
                this._printer.printText('>');
            }
            if (string.equalsIgnoreCase("SCRIPT") || string.equalsIgnoreCase("STYLE")) {
                if (this._xhtml) {
                    elementState.doCData = true;
                } else {
                    elementState.unescaped = true;
                }
            }
            Node node = element.getFirstChild();
            while (node != null) {
                this.serializeNode(node);
                node = node.getNextSibling();
            }
            this.endElementIO(null, null, string);
        } else {
            this._printer.unindent();
            if (this._xhtml) {
                this._printer.printText(" />");
            } else {
                this._printer.printText('>');
            }
            elementState.afterElement = true;
            elementState.empty = false;
            if (this.isDocumentState()) {
                this._printer.flush();
            }
        }
    }

    protected void characters(String string) throws IOException {
        this.content();
        super.characters(string);
    }

    protected String getEntityRef(int n) {
        return HTMLdtd.fromChar(n);
    }

    protected String escapeURI(String string) {
        int n = string.indexOf("\"");
        if (n >= 0) {
            return string.substring(0, n);
        }
        return string;
    }
}

