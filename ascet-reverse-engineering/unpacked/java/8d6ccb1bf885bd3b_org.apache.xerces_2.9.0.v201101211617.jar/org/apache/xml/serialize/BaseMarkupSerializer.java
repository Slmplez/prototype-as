/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xml.serialize;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.xerces.dom.DOMErrorImpl;
import org.apache.xerces.dom.DOMLocatorImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.util.XMLChar;
import org.apache.xml.serialize.DOMSerializer;
import org.apache.xml.serialize.ElementState;
import org.apache.xml.serialize.EncodingInfo;
import org.apache.xml.serialize.IndentPrinter;
import org.apache.xml.serialize.OutputFormat;
import org.apache.xml.serialize.Printer;
import org.apache.xml.serialize.Serializer;
import org.w3c.dom.DOMError;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.ls.LSException;
import org.w3c.dom.ls.LSSerializerFilter;
import org.xml.sax.AttributeList;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;

public abstract class BaseMarkupSerializer
implements ContentHandler,
DocumentHandler,
LexicalHandler,
DTDHandler,
DeclHandler,
DOMSerializer,
Serializer {
    protected short features = (short)-1;
    protected DOMErrorHandler fDOMErrorHandler;
    protected final DOMErrorImpl fDOMError = new DOMErrorImpl();
    protected LSSerializerFilter fDOMFilter;
    protected EncodingInfo _encodingInfo;
    private ElementState[] _elementStates;
    private int _elementStateCount;
    private Vector _preRoot;
    protected boolean _started;
    private boolean _prepared;
    protected Hashtable _prefixes;
    protected String _docTypePublicId;
    protected String _docTypeSystemId;
    protected OutputFormat _format;
    protected Printer _printer;
    protected boolean _indenting;
    protected final StringBuffer fStrBuffer = new StringBuffer(40);
    private Writer _writer;
    private OutputStream _output;
    protected Node fCurrentNode = null;
    static /* synthetic */ Class class$java$lang$String;

    protected BaseMarkupSerializer(OutputFormat outputFormat) {
        this._elementStates = new ElementState[10];
        int n = 0;
        while (n < this._elementStates.length) {
            this._elementStates[n] = new ElementState();
            ++n;
        }
        this._format = outputFormat;
    }

    public DocumentHandler asDocumentHandler() throws IOException {
        this.prepare();
        return this;
    }

    public ContentHandler asContentHandler() throws IOException {
        this.prepare();
        return this;
    }

    public DOMSerializer asDOMSerializer() throws IOException {
        this.prepare();
        return this;
    }

    public void setOutputByteStream(OutputStream outputStream) {
        if (outputStream == null) {
            String string = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ArgumentIsNull", new Object[]{"output"});
            throw new NullPointerException(string);
        }
        this._output = outputStream;
        this._writer = null;
        this.reset();
    }

    public void setOutputCharStream(Writer writer) {
        if (writer == null) {
            String string = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ArgumentIsNull", new Object[]{"writer"});
            throw new NullPointerException(string);
        }
        this._writer = writer;
        this._output = null;
        this.reset();
    }

    public void setOutputFormat(OutputFormat outputFormat) {
        if (outputFormat == null) {
            String string = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ArgumentIsNull", new Object[]{"format"});
            throw new NullPointerException(string);
        }
        this._format = outputFormat;
        this.reset();
    }

    public boolean reset() {
        if (this._elementStateCount > 1) {
            String string = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ResetInMiddle", null);
            throw new IllegalStateException(string);
        }
        this._prepared = false;
        this.fCurrentNode = null;
        this.fStrBuffer.setLength(0);
        return true;
    }

    protected void prepare() throws IOException {
        if (this._prepared) {
            return;
        }
        if (this._writer == null && this._output == null) {
            String string = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null);
            throw new IOException(string);
        }
        this._encodingInfo = this._format.getEncodingInfo();
        if (this._output != null) {
            this._writer = this._encodingInfo.getWriter(this._output);
        }
        if (this._format.getIndenting()) {
            this._indenting = true;
            this._printer = new IndentPrinter(this._writer, this._format);
        } else {
            this._indenting = false;
            this._printer = new Printer(this._writer, this._format);
        }
        this._elementStateCount = 0;
        ElementState elementState = this._elementStates[0];
        elementState.namespaceURI = null;
        elementState.localName = null;
        elementState.rawName = null;
        elementState.preserveSpace = this._format.getPreserveSpace();
        elementState.empty = true;
        elementState.afterElement = false;
        elementState.afterComment = false;
        elementState.inCData = false;
        elementState.doCData = false;
        elementState.prefixes = null;
        this._docTypePublicId = this._format.getDoctypePublic();
        this._docTypeSystemId = this._format.getDoctypeSystem();
        this._started = false;
        this._prepared = true;
    }

    public void serialize(Element element) throws IOException {
        this.reset();
        this.prepare();
        this.serializeNode(element);
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }

    public void serialize(DocumentFragment documentFragment) throws IOException {
        this.reset();
        this.prepare();
        this.serializeNode(documentFragment);
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }

    public void serialize(Document document) throws IOException {
        this.reset();
        this.prepare();
        this.serializeNode(document);
        this.serializePreRoot();
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }

    public void startDocument() throws SAXException {
        try {
            this.prepare();
        }
        catch (IOException iOException) {
            throw new SAXException(iOException.toString());
        }
    }

    public void characters(char[] cArray, int n, int n2) throws SAXException {
        try {
            ElementState elementState = this.content();
            if (elementState.inCData || elementState.doCData) {
                if (!elementState.inCData) {
                    this._printer.printText("<![CDATA[");
                    elementState.inCData = true;
                }
                int n3 = this._printer.getNextIndent();
                this._printer.setNextIndent(0);
                int n4 = n + n2;
                int n5 = n;
                while (n5 < n4) {
                    char c = cArray[n5];
                    if (c == ']' && n5 + 2 < n4 && cArray[n5 + 1] == ']' && cArray[n5 + 2] == '>') {
                        this._printer.printText("]]]]><![CDATA[>");
                        n5 += 2;
                    } else if (!XMLChar.isValid(c)) {
                        if (++n5 < n4) {
                            this.surrogates(c, cArray[n5], true);
                        } else {
                            this.fatalError("The character '" + c + "' is an invalid XML character");
                        }
                    } else if (c >= ' ' && this._encodingInfo.isPrintable(c) && c != '\u00f7' || c == '\n' || c == '\r' || c == '\t') {
                        this._printer.printText(c);
                    } else {
                        this._printer.printText("]]>&#x");
                        this._printer.printText(Integer.toHexString(c));
                        this._printer.printText(";<![CDATA[");
                    }
                    ++n5;
                }
                this._printer.setNextIndent(n3);
            } else if (elementState.preserveSpace) {
                int n6 = this._printer.getNextIndent();
                this._printer.setNextIndent(0);
                this.printText(cArray, n, n2, true, elementState.unescaped);
                this._printer.setNextIndent(n6);
            } else {
                this.printText(cArray, n, n2, false, elementState.unescaped);
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void ignorableWhitespace(char[] cArray, int n, int n2) throws SAXException {
        try {
            this.content();
            if (this._indenting) {
                this._printer.setThisIndent(0);
                int n3 = n;
                while (n2-- > 0) {
                    this._printer.printText(cArray[n3]);
                    ++n3;
                }
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public final void processingInstruction(String string, String string2) throws SAXException {
        try {
            this.processingInstructionIO(string, string2);
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void processingInstructionIO(String string, String string2) throws IOException {
        ElementState elementState = this.content();
        int n = string.indexOf("?>");
        if (n >= 0) {
            this.fStrBuffer.append("<?").append(string.substring(0, n));
        } else {
            this.fStrBuffer.append("<?").append(string);
        }
        if (string2 != null) {
            this.fStrBuffer.append(' ');
            n = string2.indexOf("?>");
            if (n >= 0) {
                this.fStrBuffer.append(string2.substring(0, n));
            } else {
                this.fStrBuffer.append(string2);
            }
        }
        this.fStrBuffer.append("?>");
        if (this.isDocumentState()) {
            if (this._preRoot == null) {
                this._preRoot = new Vector();
            }
            this._preRoot.addElement(this.fStrBuffer.toString());
        } else {
            this._printer.indent();
            this.printText(this.fStrBuffer.toString(), true, true);
            this._printer.unindent();
            if (this._indenting) {
                elementState.afterElement = true;
            }
        }
        this.fStrBuffer.setLength(0);
    }

    public void comment(char[] cArray, int n, int n2) throws SAXException {
        try {
            this.comment(new String(cArray, n, n2));
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void comment(String string) throws IOException {
        if (this._format.getOmitComments()) {
            return;
        }
        ElementState elementState = this.content();
        int n = string.indexOf("-->");
        if (n >= 0) {
            this.fStrBuffer.append("<!--").append(string.substring(0, n)).append("-->");
        } else {
            this.fStrBuffer.append("<!--").append(string).append("-->");
        }
        if (this.isDocumentState()) {
            if (this._preRoot == null) {
                this._preRoot = new Vector();
            }
            this._preRoot.addElement(this.fStrBuffer.toString());
        } else {
            if (this._indenting && !elementState.preserveSpace) {
                this._printer.breakLine();
            }
            this._printer.indent();
            this.printText(this.fStrBuffer.toString(), true, true);
            this._printer.unindent();
            if (this._indenting) {
                elementState.afterElement = true;
            }
        }
        this.fStrBuffer.setLength(0);
        elementState.afterComment = true;
        elementState.afterElement = false;
    }

    public void startCDATA() {
        ElementState elementState = this.getElementState();
        elementState.doCData = true;
    }

    public void endCDATA() {
        ElementState elementState = this.getElementState();
        elementState.doCData = false;
    }

    public void startNonEscaping() {
        ElementState elementState = this.getElementState();
        elementState.unescaped = true;
    }

    public void endNonEscaping() {
        ElementState elementState = this.getElementState();
        elementState.unescaped = false;
    }

    public void startPreserving() {
        ElementState elementState = this.getElementState();
        elementState.preserveSpace = true;
    }

    public void endPreserving() {
        ElementState elementState = this.getElementState();
        elementState.preserveSpace = false;
    }

    public void endDocument() throws SAXException {
        try {
            this.serializePreRoot();
            this._printer.flush();
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void startEntity(String string) {
    }

    public void endEntity(String string) {
    }

    public void setDocumentLocator(Locator locator) {
    }

    public void skippedEntity(String string) throws SAXException {
        try {
            this.endCDATA();
            this.content();
            this._printer.printText('&');
            this._printer.printText(string);
            this._printer.printText(';');
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void startPrefixMapping(String string, String string2) throws SAXException {
        if (this._prefixes == null) {
            this._prefixes = new Hashtable();
        }
        this._prefixes.put(string2, string == null ? "" : string);
    }

    public void endPrefixMapping(String string) throws SAXException {
    }

    public final void startDTD(String string, String string2, String string3) throws SAXException {
        try {
            this._printer.enterDTD();
            this._docTypePublicId = string2;
            this._docTypeSystemId = string3;
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void endDTD() {
    }

    public void elementDecl(String string, String string2) throws SAXException {
        try {
            this._printer.enterDTD();
            this._printer.printText("<!ELEMENT ");
            this._printer.printText(string);
            this._printer.printText(' ');
            this._printer.printText(string2);
            this._printer.printText('>');
            if (this._indenting) {
                this._printer.breakLine();
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void attributeDecl(String string, String string2, String string3, String string4, String string5) throws SAXException {
        try {
            this._printer.enterDTD();
            this._printer.printText("<!ATTLIST ");
            this._printer.printText(string);
            this._printer.printText(' ');
            this._printer.printText(string2);
            this._printer.printText(' ');
            this._printer.printText(string3);
            if (string4 != null) {
                this._printer.printText(' ');
                this._printer.printText(string4);
            }
            if (string5 != null) {
                this._printer.printText(" \"");
                this.printEscaped(string5);
                this._printer.printText('\"');
            }
            this._printer.printText('>');
            if (this._indenting) {
                this._printer.breakLine();
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void internalEntityDecl(String string, String string2) throws SAXException {
        try {
            this._printer.enterDTD();
            this._printer.printText("<!ENTITY ");
            this._printer.printText(string);
            this._printer.printText(" \"");
            this.printEscaped(string2);
            this._printer.printText("\">");
            if (this._indenting) {
                this._printer.breakLine();
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void externalEntityDecl(String string, String string2, String string3) throws SAXException {
        try {
            this._printer.enterDTD();
            this.unparsedEntityDecl(string, string2, string3, null);
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void unparsedEntityDecl(String string, String string2, String string3, String string4) throws SAXException {
        try {
            this._printer.enterDTD();
            if (string2 == null) {
                this._printer.printText("<!ENTITY ");
                this._printer.printText(string);
                this._printer.printText(" SYSTEM ");
                this.printDoctypeURL(string3);
            } else {
                this._printer.printText("<!ENTITY ");
                this._printer.printText(string);
                this._printer.printText(" PUBLIC ");
                this.printDoctypeURL(string2);
                this._printer.printText(' ');
                this.printDoctypeURL(string3);
            }
            if (string4 != null) {
                this._printer.printText(" NDATA ");
                this._printer.printText(string4);
            }
            this._printer.printText('>');
            if (this._indenting) {
                this._printer.breakLine();
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    public void notationDecl(String string, String string2, String string3) throws SAXException {
        try {
            this._printer.enterDTD();
            if (string2 != null) {
                this._printer.printText("<!NOTATION ");
                this._printer.printText(string);
                this._printer.printText(" PUBLIC ");
                this.printDoctypeURL(string2);
                if (string3 != null) {
                    this._printer.printText(' ');
                    this.printDoctypeURL(string3);
                }
            } else {
                this._printer.printText("<!NOTATION ");
                this._printer.printText(string);
                this._printer.printText(" SYSTEM ");
                this.printDoctypeURL(string3);
            }
            this._printer.printText('>');
            if (this._indenting) {
                this._printer.breakLine();
            }
        }
        catch (IOException iOException) {
            throw new SAXException(iOException);
        }
    }

    protected void serializeNode(Node node) throws IOException {
        this.fCurrentNode = node;
        block3 : switch (node.getNodeType()) {
            case 3: {
                String string = node.getNodeValue();
                if (string == null) break;
                if (this.fDOMFilter != null && (this.fDOMFilter.getWhatToShow() & 4) != 0) {
                    short s = this.fDOMFilter.acceptNode(node);
                    switch (s) {
                        case 2: 
                        case 3: {
                            break block3;
                        }
                    }
                    this.characters(string);
                    break;
                }
                if (this._indenting && !this.getElementState().preserveSpace && string.replace('\n', ' ').trim().length() == 0) break;
                this.characters(string);
                break;
            }
            case 4: {
                String string = node.getNodeValue();
                if ((this.features & 8) != 0) {
                    if (string == null) break;
                    if (this.fDOMFilter != null && (this.fDOMFilter.getWhatToShow() & 8) != 0) {
                        short s = this.fDOMFilter.acceptNode(node);
                        switch (s) {
                            case 2: 
                            case 3: {
                                return;
                            }
                        }
                    }
                    this.startCDATA();
                    this.characters(string);
                    this.endCDATA();
                    break;
                }
                this.characters(string);
                break;
            }
            case 8: {
                String string;
                if (this._format.getOmitComments() || (string = node.getNodeValue()) == null) break;
                if (this.fDOMFilter != null && (this.fDOMFilter.getWhatToShow() & 0x80) != 0) {
                    short s = this.fDOMFilter.acceptNode(node);
                    switch (s) {
                        case 2: 
                        case 3: {
                            return;
                        }
                    }
                }
                this.comment(string);
                break;
            }
            case 5: {
                this.endCDATA();
                this.content();
                if ((this.features & 4) != 0 || node.getFirstChild() == null) {
                    if (this.fDOMFilter != null && (this.fDOMFilter.getWhatToShow() & 0x10) != 0) {
                        short s = this.fDOMFilter.acceptNode(node);
                        switch (s) {
                            case 2: {
                                return;
                            }
                            case 3: {
                                Node node2 = node.getFirstChild();
                                while (node2 != null) {
                                    this.serializeNode(node2);
                                    node2 = node2.getNextSibling();
                                }
                                return;
                            }
                        }
                    }
                    this.checkUnboundNamespacePrefixedNode(node);
                    this._printer.printText("&");
                    this._printer.printText(node.getNodeName());
                    this._printer.printText(";");
                    break;
                }
                Node node3 = node.getFirstChild();
                while (node3 != null) {
                    this.serializeNode(node3);
                    node3 = node3.getNextSibling();
                }
                break;
            }
            case 7: {
                if (this.fDOMFilter != null && (this.fDOMFilter.getWhatToShow() & 0x40) != 0) {
                    short s = this.fDOMFilter.acceptNode(node);
                    switch (s) {
                        case 2: 
                        case 3: {
                            return;
                        }
                    }
                }
                this.processingInstructionIO(node.getNodeName(), node.getNodeValue());
                break;
            }
            case 1: {
                if (this.fDOMFilter != null && (this.fDOMFilter.getWhatToShow() & 1) != 0) {
                    short s = this.fDOMFilter.acceptNode(node);
                    switch (s) {
                        case 2: {
                            return;
                        }
                        case 3: {
                            Node node4 = node.getFirstChild();
                            while (node4 != null) {
                                this.serializeNode(node4);
                                node4 = node4.getNextSibling();
                            }
                            return;
                        }
                    }
                }
                this.serializeElement((Element)node);
                break;
            }
            case 9: {
                Node node5 = ((Document)node).getDoctype();
                if (node5 != null) {
                    try {
                        this._printer.enterDTD();
                        this._docTypePublicId = node5.getPublicId();
                        this._docTypeSystemId = node5.getSystemId();
                        String string = node5.getInternalSubset();
                        if (string != null && string.length() > 0) {
                            this._printer.printText(string);
                        }
                        this.endDTD();
                    }
                    catch (NoSuchMethodError noSuchMethodError) {
                        Method method;
                        Class<?> clazz = node5.getClass();
                        String string = null;
                        String string2 = null;
                        try {
                            method = clazz.getMethod("getPublicId", null);
                            if (method.getReturnType().equals(class$java$lang$String == null ? (class$java$lang$String = BaseMarkupSerializer.class$("java.lang.String")) : class$java$lang$String)) {
                                string = (String)method.invoke(node5, null);
                            }
                        }
                        catch (Exception exception) {
                            // empty catch block
                        }
                        try {
                            method = clazz.getMethod("getSystemId", null);
                            if (method.getReturnType().equals(class$java$lang$String == null ? (class$java$lang$String = BaseMarkupSerializer.class$("java.lang.String")) : class$java$lang$String)) {
                                string2 = (String)method.invoke(node5, null);
                            }
                        }
                        catch (Exception exception) {
                            // empty catch block
                        }
                        this._printer.enterDTD();
                        this._docTypePublicId = string;
                        this._docTypeSystemId = string2;
                        this.endDTD();
                    }
                }
            }
            case 11: {
                Node node5 = node.getFirstChild();
                while (node5 != null) {
                    this.serializeNode(node5);
                    node5 = node5.getNextSibling();
                }
                break;
            }
        }
    }

    protected ElementState content() throws IOException {
        ElementState elementState = this.getElementState();
        if (!this.isDocumentState()) {
            if (elementState.inCData && !elementState.doCData) {
                this._printer.printText("]]>");
                elementState.inCData = false;
            }
            if (elementState.empty) {
                this._printer.printText('>');
                elementState.empty = false;
            }
            elementState.afterElement = false;
            elementState.afterComment = false;
        }
        return elementState;
    }

    protected void characters(String string) throws IOException {
        ElementState elementState = this.content();
        if (elementState.inCData || elementState.doCData) {
            if (!elementState.inCData) {
                this._printer.printText("<![CDATA[");
                elementState.inCData = true;
            }
            int n = this._printer.getNextIndent();
            this._printer.setNextIndent(0);
            this.printCDATAText(string);
            this._printer.setNextIndent(n);
        } else if (elementState.preserveSpace) {
            int n = this._printer.getNextIndent();
            this._printer.setNextIndent(0);
            this.printText(string, true, elementState.unescaped);
            this._printer.setNextIndent(n);
        } else {
            this.printText(string, false, elementState.unescaped);
        }
    }

    protected abstract String getEntityRef(int var1);

    protected abstract void serializeElement(Element var1) throws IOException;

    protected void serializePreRoot() throws IOException {
        if (this._preRoot != null) {
            int n = 0;
            while (n < this._preRoot.size()) {
                this.printText((String)this._preRoot.elementAt(n), true, true);
                if (this._indenting) {
                    this._printer.breakLine();
                }
                ++n;
            }
            this._preRoot.removeAllElements();
        }
    }

    protected void printCDATAText(String string) throws IOException {
        int n = string.length();
        int n2 = 0;
        while (n2 < n) {
            char c = string.charAt(n2);
            if (c == ']' && n2 + 2 < n && string.charAt(n2 + 1) == ']' && string.charAt(n2 + 2) == '>') {
                if (this.fDOMErrorHandler != null) {
                    String string2;
                    if ((this.features & 0x10) == 0) {
                        string2 = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "EndingCDATA", null);
                        if ((this.features & 2) != 0) {
                            this.modifyDOMError(string2, (short)3, "wf-invalid-character", this.fCurrentNode);
                            this.fDOMErrorHandler.handleError(this.fDOMError);
                            throw new LSException(82, string2);
                        }
                        this.modifyDOMError(string2, (short)2, "cdata-section-not-splitted", this.fCurrentNode);
                        if (!this.fDOMErrorHandler.handleError(this.fDOMError)) {
                            throw new LSException(82, string2);
                        }
                    } else {
                        string2 = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "SplittingCDATA", null);
                        this.modifyDOMError(string2, (short)1, null, this.fCurrentNode);
                        this.fDOMErrorHandler.handleError(this.fDOMError);
                    }
                }
                this._printer.printText("]]]]><![CDATA[>");
                n2 += 2;
            } else if (!XMLChar.isValid(c)) {
                if (++n2 < n) {
                    this.surrogates(c, string.charAt(n2), true);
                } else {
                    this.fatalError("The character '" + c + "' is an invalid XML character");
                }
            } else if (c >= ' ' && this._encodingInfo.isPrintable(c) && c != '\u00f7' || c == '\n' || c == '\r' || c == '\t') {
                this._printer.printText(c);
            } else {
                this._printer.printText("]]>&#x");
                this._printer.printText(Integer.toHexString(c));
                this._printer.printText(";<![CDATA[");
            }
            ++n2;
        }
    }

    protected void surrogates(int n, int n2, boolean bl) throws IOException {
        if (XMLChar.isHighSurrogate(n)) {
            if (!XMLChar.isLowSurrogate(n2)) {
                this.fatalError("The character '" + (char)n2 + "' is an invalid XML character");
            } else {
                int n3 = XMLChar.supplemental((char)n, (char)n2);
                if (!XMLChar.isValid(n3)) {
                    this.fatalError("The character '" + (char)n3 + "' is an invalid XML character");
                } else if (bl && this.content().inCData) {
                    this._printer.printText("]]>&#x");
                    this._printer.printText(Integer.toHexString(n3));
                    this._printer.printText(";<![CDATA[");
                } else {
                    this.printHex(n3);
                }
            }
        } else {
            this.fatalError("The character '" + (char)n + "' is an invalid XML character");
        }
    }

    /*
     * Unable to fully structure code
     */
    protected void printText(char[] var1_1, int var2_2, int var3_3, boolean var4_4, boolean var5_5) throws IOException {
        block5: {
            if (!var4_4) ** GOTO lbl20
            while (var3_3-- > 0) {
                var6_6 = var1_1[var2_2];
                ++var2_2;
                if (var6_6 == '\n' || var6_6 == '\r' || var5_5) {
                    this._printer.printText(var6_6);
                    continue;
                }
                this.printEscaped(var6_6);
            }
            break block5;
lbl-1000:
            // 1 sources

            {
                var6_7 = var1_1[var2_2];
                ++var2_2;
                if (var6_7 == ' ' || var6_7 == '\f' || var6_7 == '\t' || var6_7 == '\n' || var6_7 == '\r') {
                    this._printer.printSpace();
                    continue;
                }
                if (var5_5) {
                    this._printer.printText(var6_7);
                    continue;
                }
                this.printEscaped(var6_7);
lbl20:
                // 4 sources

                ** while (var3_3-- > 0)
            }
        }
    }

    protected void printText(String string, boolean bl, boolean bl2) throws IOException {
        if (bl) {
            int n = 0;
            while (n < string.length()) {
                char c = string.charAt(n);
                if (c == '\n' || c == '\r' || bl2) {
                    this._printer.printText(c);
                } else {
                    this.printEscaped(c);
                }
                ++n;
            }
        } else {
            int n = 0;
            while (n < string.length()) {
                char c = string.charAt(n);
                if (c == ' ' || c == '\f' || c == '\t' || c == '\n' || c == '\r') {
                    this._printer.printSpace();
                } else if (bl2) {
                    this._printer.printText(c);
                } else {
                    this.printEscaped(c);
                }
                ++n;
            }
        }
    }

    protected void printDoctypeURL(String string) throws IOException {
        this._printer.printText('\"');
        int n = 0;
        while (n < string.length()) {
            if (string.charAt(n) == '\"' || string.charAt(n) < ' ' || string.charAt(n) > '\u007f') {
                this._printer.printText('%');
                this._printer.printText(Integer.toHexString(string.charAt(n)));
            } else {
                this._printer.printText(string.charAt(n));
            }
            ++n;
        }
        this._printer.printText('\"');
    }

    protected void printEscaped(int n) throws IOException {
        String string = this.getEntityRef(n);
        if (string != null) {
            this._printer.printText('&');
            this._printer.printText(string);
            this._printer.printText(';');
        } else if (n >= 32 && this._encodingInfo.isPrintable((char)n) && n != 247 || n == 10 || n == 13 || n == 9) {
            if (n < 65536) {
                this._printer.printText((char)n);
            } else {
                this._printer.printText((char)((n - 65536 >> 10) + 55296));
                this._printer.printText((char)((n - 65536 & 0x3FF) + 56320));
            }
        } else {
            this.printHex(n);
        }
    }

    final void printHex(int n) throws IOException {
        this._printer.printText("&#x");
        this._printer.printText(Integer.toHexString(n));
        this._printer.printText(';');
    }

    protected void printEscaped(String string) throws IOException {
        int n = 0;
        while (n < string.length()) {
            char c;
            int n2 = string.charAt(n);
            if ((n2 & 0xFC00) == 55296 && n + 1 < string.length() && ((c = string.charAt(n + 1)) & 0xFC00) == 56320) {
                n2 = 65536 + (n2 - 55296 << 10) + c - 56320;
                ++n;
            }
            this.printEscaped(n2);
            ++n;
        }
    }

    protected ElementState getElementState() {
        return this._elementStates[this._elementStateCount];
    }

    protected ElementState enterElementState(String string, String string2, String string3, boolean bl) {
        if (this._elementStateCount + 1 == this._elementStates.length) {
            ElementState[] elementStateArray = new ElementState[this._elementStates.length + 10];
            int n = 0;
            while (n < this._elementStates.length) {
                elementStateArray[n] = this._elementStates[n];
                ++n;
            }
            int n2 = this._elementStates.length;
            while (n2 < elementStateArray.length) {
                elementStateArray[n2] = new ElementState();
                ++n2;
            }
            this._elementStates = elementStateArray;
        }
        ++this._elementStateCount;
        ElementState elementState = this._elementStates[this._elementStateCount];
        elementState.namespaceURI = string;
        elementState.localName = string2;
        elementState.rawName = string3;
        elementState.preserveSpace = bl;
        elementState.empty = true;
        elementState.afterElement = false;
        elementState.afterComment = false;
        elementState.inCData = false;
        elementState.doCData = false;
        elementState.unescaped = false;
        elementState.prefixes = this._prefixes;
        this._prefixes = null;
        return elementState;
    }

    protected ElementState leaveElementState() {
        if (this._elementStateCount > 0) {
            this._prefixes = null;
            --this._elementStateCount;
            return this._elementStates[this._elementStateCount];
        }
        String string = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "Internal", null);
        throw new IllegalStateException(string);
    }

    protected boolean isDocumentState() {
        return this._elementStateCount == 0;
    }

    final void clearDocumentState() {
        this._elementStateCount = 0;
    }

    protected String getPrefix(String string) {
        String string2;
        if (this._prefixes != null && (string2 = (String)this._prefixes.get(string)) != null) {
            return string2;
        }
        if (this._elementStateCount == 0) {
            return null;
        }
        int n = this._elementStateCount;
        while (n > 0) {
            if (this._elementStates[n].prefixes != null && (string2 = (String)this._elementStates[n].prefixes.get(string)) != null) {
                return string2;
            }
            --n;
        }
        return null;
    }

    protected DOMError modifyDOMError(String string, short s, String string2, Node node) {
        this.fDOMError.reset();
        this.fDOMError.fMessage = string;
        this.fDOMError.fType = string2;
        this.fDOMError.fSeverity = s;
        this.fDOMError.fLocator = new DOMLocatorImpl(-1, -1, -1, node, null);
        return this.fDOMError;
    }

    protected void fatalError(String string) throws IOException {
        if (this.fDOMErrorHandler == null) {
            throw new IOException(string);
        }
        this.modifyDOMError(string, (short)3, null, this.fCurrentNode);
        this.fDOMErrorHandler.handleError(this.fDOMError);
    }

    protected void checkUnboundNamespacePrefixedNode(Node node) throws IOException {
    }

    public abstract void endElement(String var1, String var2, String var3) throws SAXException;

    public abstract void startElement(String var1, String var2, String var3, Attributes var4) throws SAXException;

    public abstract void endElement(String var1) throws SAXException;

    public abstract void startElement(String var1, AttributeList var2) throws SAXException;

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
    }
}

