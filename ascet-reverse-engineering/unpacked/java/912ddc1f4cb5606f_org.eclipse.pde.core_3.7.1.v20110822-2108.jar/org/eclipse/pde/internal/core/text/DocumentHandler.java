/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.FindReplaceDocumentAdapter
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 */
package org.eclipse.pde.internal.core.text;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.Stack;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.FindReplaceDocumentAdapter;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

public abstract class DocumentHandler
extends DefaultHandler {
    protected Stack fDocumentNodeStack = new Stack();
    protected int fHighestOffset = 0;
    private Locator fLocator;
    private IDocumentElementNode fLastError;
    private boolean fReconciling;

    public DocumentHandler(boolean reconciling) {
        this.fReconciling = reconciling;
    }

    public void startDocument() throws SAXException {
        this.fDocumentNodeStack.clear();
        this.fHighestOffset = 0;
        this.fLastError = null;
    }

    protected IDocumentElementNode getLastParsedDocumentNode() {
        if (this.fDocumentNodeStack.isEmpty()) {
            return null;
        }
        return (IDocumentElementNode)this.fDocumentNodeStack.peek();
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        IDocumentElementNode parent = this.getLastParsedDocumentNode();
        IDocumentElementNode node = this.getDocumentNode(qName, parent);
        try {
            int nodeOffset = this.getStartOffset(qName);
            node.setOffset(nodeOffset);
            IDocument doc = this.getDocument();
            int line = doc.getLineOfOffset(nodeOffset);
            node.setLineIndent(node.getOffset() - doc.getLineOffset(line));
            int i = 0;
            while (i < attributes.getLength()) {
                String attValue;
                String attName = attributes.getQName(i);
                IDocumentAttributeNode attribute = this.getDocumentAttribute(attName, attValue = attributes.getValue(i), node);
                if (attribute != null) {
                    IRegion region = this.getAttributeRegion(attName, attValue, nodeOffset);
                    if (region == null) {
                        attValue = PDEXMLHelper.getWritableString(attValue);
                        region = this.getAttributeRegion(attName, attValue, nodeOffset);
                    }
                    if (region != null) {
                        attribute.setNameOffset(region.getOffset());
                        attribute.setNameLength(attName.length());
                        attribute.setValueOffset(region.getOffset() + region.getLength() - 1 - attValue.length());
                        attribute.setValueLength(attValue.length());
                    }
                    node.setXMLAttribute(attribute);
                }
                ++i;
            }
            this.removeOrphanAttributes(node);
        }
        catch (BadLocationException badLocationException) {}
        if (parent != null && node != null && node.getParentNode() == null) {
            if (this.fReconciling) {
                int position = 0;
                IDocumentElementNode[] children = parent.getChildNodes();
                while (position < children.length) {
                    if (children[position].getOffset() == -1) break;
                    ++position;
                }
                parent.addChildNode(node, position);
            } else {
                parent.addChildNode(node);
            }
        }
        this.fDocumentNodeStack.push(node);
    }

    protected abstract IDocumentElementNode getDocumentNode(String var1, IDocumentElementNode var2);

    protected abstract IDocumentAttributeNode getDocumentAttribute(String var1, String var2, IDocumentElementNode var3);

    protected abstract IDocumentTextNode getDocumentTextNode(String var1, IDocumentElementNode var2);

    private int getStartOffset(String elementName) throws BadLocationException {
        int endOffset;
        int line = this.fLocator.getLineNumber();
        int col = this.fLocator.getColumnNumber();
        IDocument doc = this.getDocument();
        if (col < 0) {
            col = doc.getLineLength(line);
        }
        if (line < doc.getNumberOfLines()) {
            endOffset = doc.getLineOffset(line);
        } else {
            line = doc.getNumberOfLines() - 1;
            IRegion lineInfo = doc.getLineInformation(line);
            endOffset = lineInfo.getOffset() + lineInfo.getLength();
        }
        String text = doc.get(this.fHighestOffset + 1, endOffset - this.fHighestOffset - 1);
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

    private int getElementLength(IDocumentElementNode node, int line, int column) throws BadLocationException {
        int start;
        int endIndex = node.getOffset();
        IDocument doc = this.getDocument();
        String lineText = doc.get(start = Math.max(doc.getLineOffset(line), node.getOffset()), (column = doc.getLineLength(line)) - start + doc.getLineOffset(line));
        int index = lineText.indexOf("</" + node.getXMLTagName() + ">");
        endIndex = index == -1 ? ((index = lineText.indexOf(">")) == -1 ? column : index + 1) : index + node.getXMLTagName().length() + 3;
        return start + endIndex - node.getOffset();
    }

    private IRegion getAttributeRegion(String name, String value, int offset) throws BadLocationException {
        FindReplaceDocumentAdapter fFindReplaceAdapter = new FindReplaceDocumentAdapter(this.getDocument());
        IRegion nameRegion = fFindReplaceAdapter.find(offset, "\\s" + name + "\\s*=\\s*[\"']", true, true, false, true);
        if (nameRegion != null) {
            nameRegion = new Region(nameRegion.getOffset() + 1, nameRegion.getLength() - 1);
            if (this.getDocument().get(nameRegion.getOffset() + nameRegion.getLength(), value.length()).equals(value)) {
                return new Region(nameRegion.getOffset(), nameRegion.getLength() + value.length() + 1);
            }
        }
        return null;
    }

    public void endElement(String uri, String localName, String qName) throws SAXException {
        if (this.fDocumentNodeStack.isEmpty()) {
            return;
        }
        IDocumentElementNode node = (IDocumentElementNode)this.fDocumentNodeStack.pop();
        try {
            node.setLength(this.getElementLength(node, this.fLocator.getLineNumber() - 1, this.fLocator.getColumnNumber()));
            this.setTextNodeOffset(node);
        }
        catch (BadLocationException badLocationException) {}
        this.removeOrphanElements(node);
    }

    /*
     * Unable to fully structure code
     */
    protected void setTextNodeOffset(IDocumentElementNode node) throws BadLocationException {
        block4: {
            textNode = node.getTextNode();
            if (textNode == null || textNode.getText() == null) break block4;
            if (textNode.getText().trim().length() == 0) {
                node.removeTextNode();
                return;
            }
            doc = this.getDocument();
            text = doc.get(node.getOffset(), node.getLength());
            relativeStartOffset = text.indexOf(62) + 1;
            relativeEndOffset = text.lastIndexOf(60) - 1;
            if (relativeStartOffset < 0 || relativeStartOffset >= text.length()) {
                return;
            }
            if (relativeEndOffset >= 0 && relativeEndOffset < text.length()) ** GOTO lbl15
            return;
lbl-1000:
            // 1 sources

            {
                ++relativeStartOffset;
lbl15:
                // 2 sources

                ** while (Character.isWhitespace((char)text.charAt((int)relativeStartOffset)))
            }
lbl16:
            // 2 sources

            while (Character.isWhitespace(text.charAt(relativeEndOffset))) {
                --relativeEndOffset;
            }
            textNode.setOffset(node.getOffset() + relativeStartOffset);
            textNode.setLength(relativeEndOffset - relativeStartOffset + 1);
            textNode.setText(textNode.getText().trim());
        }
    }

    public void fatalError(SAXParseException e) throws SAXException {
        this.generateErrorElementHierarchy();
    }

    private void generateErrorElementHierarchy() {
        while (!this.fDocumentNodeStack.isEmpty()) {
            IDocumentElementNode node = (IDocumentElementNode)this.fDocumentNodeStack.pop();
            node.setIsErrorNode(true);
            this.removeOrphanAttributes(node);
            this.removeOrphanElements(node);
            if (this.fLastError != null) continue;
            this.fLastError = node;
        }
    }

    public void error(SAXParseException e) throws SAXException {
        this.generateErrorElementHierarchy();
    }

    public void setDocumentLocator(Locator locator) {
        this.fLocator = locator;
    }

    protected abstract IDocument getDocument();

    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        return new InputSource(new StringReader(""));
    }

    public IDocumentElementNode getLastErrorNode() {
        return this.fLastError;
    }

    public void characters(char[] ch, int start, int length) throws SAXException {
        if (!this.fReconciling || this.fDocumentNodeStack.isEmpty()) {
            return;
        }
        IDocumentElementNode parent = (IDocumentElementNode)this.fDocumentNodeStack.peek();
        StringBuffer buffer = new StringBuffer();
        buffer.append(ch, start, length);
        this.getDocumentTextNode(buffer.toString(), parent);
    }

    private void removeOrphanAttributes(IDocumentElementNode node) {
        if (this.fReconciling) {
            IDocumentAttributeNode[] attrs = node.getNodeAttributes();
            int i = 0;
            while (i < attrs.length) {
                if (attrs[i].getNameOffset() == -1) {
                    node.removeDocumentAttribute(attrs[i]);
                }
                ++i;
            }
        }
    }

    private void removeOrphanElements(IDocumentElementNode node) {
        if (this.fReconciling) {
            IDocumentElementNode[] children = node.getChildNodes();
            int i = 0;
            while (i < children.length) {
                if (children[i].getOffset() == -1) {
                    node.removeChildNode(children[i]);
                }
                ++i;
            }
        }
    }

    protected boolean isReconciling() {
        return this.fReconciling;
    }
}

