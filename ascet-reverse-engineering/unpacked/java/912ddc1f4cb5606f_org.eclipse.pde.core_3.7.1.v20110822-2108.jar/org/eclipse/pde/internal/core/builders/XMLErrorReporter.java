/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filebuffers.FileBuffers
 *  org.eclipse.core.filebuffers.ITextFileBufferManager
 *  org.eclipse.core.filebuffers.LocationKind
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.FindReplaceDocumentAdapter
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 */
package org.eclipse.pde.internal.core.builders;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Stack;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.filebuffers.FileBuffers;
import org.eclipse.core.filebuffers.ITextFileBufferManager;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.FindReplaceDocumentAdapter;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.builders.PDEMarkerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.Text;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

public class XMLErrorReporter
extends DefaultHandler {
    public static final char F_ATT_PREFIX = '@';
    public static final char F_ATT_VALUE_PREFIX = '!';
    public static final char F_CHILD_SEP = '>';
    protected IFile fFile;
    protected IProject fProject;
    private int fErrorCount;
    private PDEMarkerFactory fMarkerFactory;
    private Document fXMLDocument;
    private IDocument fTextDocument;
    private Stack fElementStack;
    private Element fRootElement;
    private Locator fLocator;
    private int fHighestOffset;
    private HashMap fOffsetTable;
    private FindReplaceDocumentAdapter fFindReplaceAdapter;
    private double fSchemaVersion = 2.1;

    public XMLErrorReporter(IFile file) {
        ITextFileBufferManager manager = FileBuffers.getTextFileBufferManager();
        try {
            this.fFile = file;
            this.fProject = file.getProject();
            manager.connect(file.getFullPath(), LocationKind.NORMALIZE, null);
            this.fTextDocument = manager.getTextFileBuffer(file.getFullPath(), LocationKind.NORMALIZE).getDocument();
            manager.disconnect(file.getFullPath(), LocationKind.NORMALIZE, null);
            this.fFindReplaceAdapter = new FindReplaceDocumentAdapter(this.fTextDocument);
            this.fOffsetTable = new HashMap();
            this.fElementStack = new Stack();
            this.removeFileMarkers();
        }
        catch (CoreException e) {
            PDECore.log(e);
        }
    }

    public IFile getFile() {
        return this.fFile;
    }

    private IMarker addMarker(String message, int lineNumber, int severity, int fixId, String category) {
        try {
            IMarker marker = this.getMarkerFactory().createMarker(this.fFile, fixId, category);
            marker.setAttribute("message", (Object)message);
            marker.setAttribute("severity", severity);
            if (lineNumber == -1) {
                lineNumber = 1;
            }
            marker.setAttribute("lineNumber", lineNumber);
            if (severity == 2) {
                ++this.fErrorCount;
            }
            return marker;
        }
        catch (CoreException e) {
            PDECore.logException(e);
            return null;
        }
    }

    private PDEMarkerFactory getMarkerFactory() {
        if (this.fMarkerFactory == null) {
            this.fMarkerFactory = new PDEMarkerFactory();
        }
        return this.fMarkerFactory;
    }

    private void addMarker(SAXParseException e, int severity) {
        this.addMarker(e.getMessage(), e.getLineNumber(), severity, -1, "");
    }

    public void error(SAXParseException exception) throws SAXException {
        this.addMarker(exception, 2);
        this.generateErrorElementHierarchy();
    }

    public void fatalError(SAXParseException exception) throws SAXException {
        this.addMarker(exception, 2);
        this.generateErrorElementHierarchy();
    }

    public int getErrorCount() {
        return this.fErrorCount;
    }

    private void removeFileMarkers() {
        try {
            this.fFile.deleteMarkers("org.eclipse.core.resources.problemmarker", false, 0);
            this.fFile.deleteMarkers("org.eclipse.pde.core.problem", false, 0);
        }
        catch (CoreException e) {
            PDECore.logException(e);
        }
    }

    public void report(String message, int line, int severity, int fixId, Element element, String attrName, String category) {
        IMarker marker = this.report(message, line, severity, fixId, category);
        if (marker == null) {
            return;
        }
        try {
            marker.setAttribute("xmlTree.locationPath", (Object)this.generateLocationPath(element, attrName));
        }
        catch (CoreException coreException) {}
    }

    private String generateLocationPath(Node node, String attrName) {
        if (node == null) {
            return new String();
        }
        int childIndex = 0;
        Node previousSibling = node.getPreviousSibling();
        while (previousSibling != null) {
            ++childIndex;
            previousSibling = previousSibling.getPreviousSibling();
        }
        StringBuffer sb = new StringBuffer();
        Node parent = node.getParentNode();
        if (parent != null && !(parent instanceof Document)) {
            sb.append(this.generateLocationPath(parent, null));
            sb.append('>');
        }
        this.composeNodeString(node, childIndex, attrName, sb);
        return sb.toString();
    }

    private String composeNodeString(Node node, int index, String attrName, StringBuffer sb) {
        sb.append('(');
        sb.append(index);
        sb.append(')');
        sb.append(node.getNodeName());
        if (attrName != null) {
            sb.append('@');
            sb.append(attrName);
        }
        return sb.toString();
    }

    public IMarker report(String message, int line, int severity, int fixId, String category) {
        if (severity == 0) {
            return this.addMarker(message, line, 2, fixId, category);
        }
        if (severity == 1) {
            return this.addMarker(message, line, 1, fixId, category);
        }
        return null;
    }

    public IMarker report(String message, int line, int severity, String category) {
        return this.report(message, line, severity, -1, category);
    }

    public void warning(SAXParseException exception) throws SAXException {
        this.addMarker(exception, 1);
    }

    public void startDocument() throws SAXException {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        try {
            this.fXMLDocument = factory.newDocumentBuilder().newDocument();
        }
        catch (ParserConfigurationException parserConfigurationException) {}
    }

    public void endDocument() throws SAXException {
        this.fXMLDocument.appendChild(this.fRootElement);
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        Element element = this.fXMLDocument.createElement(qName);
        int i = 0;
        while (i < attributes.getLength()) {
            element.setAttribute(attributes.getQName(i), attributes.getValue(i));
            ++i;
        }
        if (this.fRootElement == null) {
            this.fRootElement = element;
        } else {
            ((Element)this.fElementStack.peek()).appendChild(element);
        }
        this.fElementStack.push(element);
        try {
            if (this.fTextDocument != null) {
                this.fOffsetTable.put(element, new ElementData(this.getStartOffset(qName)));
            }
        }
        catch (BadLocationException badLocationException) {}
    }

    public void endElement(String uri, String localName, String qName) throws SAXException {
        this.fElementStack.pop();
    }

    private void generateErrorElementHierarchy() {
        while (!this.fElementStack.isEmpty()) {
            ElementData data = (ElementData)this.fOffsetTable.get(this.fElementStack.pop());
            if (data == null) continue;
            data.fErrorNode = true;
        }
    }

    public void characters(char[] characters, int start, int length) throws SAXException {
        StringBuffer buff = new StringBuffer();
        int i = 0;
        while (i < length) {
            buff.append(characters[start + i]);
            ++i;
        }
        Text text = this.fXMLDocument.createTextNode(buff.toString());
        if (this.fRootElement == null) {
            this.fXMLDocument.appendChild(text);
        } else {
            ((Element)this.fElementStack.peek()).appendChild(text);
        }
    }

    public void setDocumentLocator(Locator locator) {
        this.fLocator = locator;
    }

    private int getStartOffset(String elementName) throws BadLocationException {
        int line = this.fLocator.getLineNumber();
        int col = this.fLocator.getColumnNumber();
        if (col < 0) {
            col = this.fTextDocument.getLineLength(line);
        }
        String text = this.fTextDocument.get(this.fHighestOffset + 1, this.fTextDocument.getLineOffset(line) - this.fHighestOffset - 1);
        ArrayList<Position> commentPositions = new ArrayList<Position>();
        int idx = 0;
        while (idx < text.length()) {
            int end;
            if ((idx = text.indexOf("<!--", idx)) == -1 || (end = text.indexOf("-->", idx)) == -1) break;
            commentPositions.add(new Position(idx, end - idx));
            idx = end + 1;
        }
        idx = 0;
        while (idx < text.length()) {
            idx = text.indexOf("<" + elementName, idx);
            if (idx == -1) break;
            boolean valid = true;
            int i = 0;
            while (i < commentPositions.size()) {
                Position pos = (Position)commentPositions.get(i);
                if (pos.includes(idx)) {
                    valid = false;
                    break;
                }
                ++i;
            }
            if (valid) break;
            ++idx;
        }
        if (idx > -1) {
            this.fHighestOffset += idx + 1;
        }
        return this.fHighestOffset;
    }

    private int getAttributeOffset(String name, String value, int offset) throws BadLocationException {
        IRegion nameRegion = this.fFindReplaceAdapter.find(offset, String.valueOf(name) + "=\"" + this.getWritableString(value), true, false, false, false);
        if (nameRegion != null) {
            return nameRegion.getOffset();
        }
        return -1;
    }

    private String getWritableString(String source) {
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

    protected String getTextContent(Element element) {
        ElementData data = (ElementData)this.fOffsetTable.get(element);
        try {
            IRegion nameRegion = this.fFindReplaceAdapter.find(data.offset, "</" + element.getNodeName() + ">", true, true, false, false);
            int offset = data.offset + element.getNodeName().length() + 2;
            if (nameRegion != null) {
                return this.fTextDocument.get(offset, nameRegion.getOffset() - offset).trim();
            }
        }
        catch (BadLocationException badLocationException) {}
        return null;
    }

    protected int getLine(Element element) {
        ElementData data = (ElementData)this.fOffsetTable.get(element);
        try {
            return data == null ? 1 : this.fTextDocument.getLineOfOffset(data.offset) + 1;
        }
        catch (Exception exception) {
            return 1;
        }
    }

    protected int getLine(Element element, String attName) {
        ElementData data = (ElementData)this.fOffsetTable.get(element);
        try {
            int offset = this.getAttributeOffset(attName, element.getAttribute(attName), data.offset);
            if (offset != -1) {
                return this.fTextDocument.getLineOfOffset(offset) + 1;
            }
        }
        catch (BadLocationException badLocationException) {}
        return this.getLine(element);
    }

    public void validateContent(IProgressMonitor monitor) {
    }

    public Element getDocumentRoot() {
        if (this.fRootElement != null) {
            this.fRootElement.normalize();
        }
        return this.fRootElement;
    }

    public void processingInstruction(String target, String data) throws SAXException {
        if ("eclipse".equals(target)) {
            this.fSchemaVersion = data.length() > 10 && data.substring(0, 9).equals("version=\"") && data.charAt(data.length() - 1) == '\"' ? Double.parseDouble(TargetPlatformHelper.getSchemaVersionForTargetVersion(data.substring(9, data.length() - 1))) : Double.parseDouble(TargetPlatformHelper.getSchemaVersion());
        }
    }

    protected double getSchemaVersion() {
        return this.fSchemaVersion;
    }

    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        int x = this.fTextDocument.get().indexOf("!DOCTYPE");
        if (x > 0) {
            try {
                int line = this.fTextDocument.getLineOfOffset(x) + 1;
                this.report(PDECoreMessages.XMLErrorReporter_ExternalEntityResolution, line, 1, "");
            }
            catch (BadLocationException badLocationException) {}
        }
        return new InputSource(new StringReader(""));
    }

    class ElementData {
        int offset;
        boolean fErrorNode;

        public ElementData(int offset) {
            this.offset = offset;
        }
    }
}

