/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.text.edits.DeleteEdit
 *  org.eclipse.text.edits.InsertEdit
 *  org.eclipse.text.edits.MoveSourceEdit
 *  org.eclipse.text.edits.MoveTargetEdit
 *  org.eclipse.text.edits.ReplaceEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.pde.internal.core.text.plugin;

import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.text.AbstractTextChangeListener;
import org.eclipse.pde.internal.core.text.IDocumentAttributeNode;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.IDocumentRange;
import org.eclipse.pde.internal.core.text.IDocumentTextNode;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MoveSourceEdit;
import org.eclipse.text.edits.MoveTargetEdit;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

public class XMLTextChangeListener
extends AbstractTextChangeListener {
    private ArrayList fOperationList = new ArrayList();
    private HashMap fReadableNames = null;

    public XMLTextChangeListener(IDocument document) {
        this(document, false);
    }

    public XMLTextChangeListener(IDocument document, boolean generateReadableNames) {
        super(document);
        if (generateReadableNames) {
            this.fReadableNames = new HashMap();
        }
    }

    public TextEdit[] getTextOperations() {
        if (this.fOperationList.size() == 0) {
            return new TextEdit[0];
        }
        return this.fOperationList.toArray(new TextEdit[this.fOperationList.size()]);
    }

    protected static void insert(TextEdit parent, TextEdit edit) {
        TextEdit child;
        if (!parent.hasChildren()) {
            parent.addChild(edit);
            if (edit instanceof MoveSourceEdit) {
                parent.addChild((TextEdit)((MoveSourceEdit)edit).getTargetEdit());
            }
            return;
        }
        TextEdit[] children = parent.getChildren();
        int i = 0;
        while (i < children.length) {
            child = children[i];
            if (XMLTextChangeListener.covers(child, edit)) {
                XMLTextChangeListener.insert(child, edit);
                return;
            }
            ++i;
        }
        i = children.length - 1;
        while (i >= 0) {
            child = children[i];
            if (XMLTextChangeListener.covers(edit, child)) {
                parent.removeChild(i);
                edit.addChild(child);
            }
            --i;
        }
        parent.addChild(edit);
        if (edit instanceof MoveSourceEdit) {
            parent.addChild((TextEdit)((MoveSourceEdit)edit).getTargetEdit());
        }
    }

    protected static boolean covers(TextEdit thisEdit, TextEdit otherEdit) {
        if (thisEdit.getLength() == 0) {
            return false;
        }
        int thisOffset = thisEdit.getOffset();
        int thisEnd = thisEdit.getExclusiveEnd();
        if (otherEdit.getLength() == 0) {
            int otherOffset = otherEdit.getOffset();
            return thisOffset < otherOffset && otherOffset < thisEnd;
        }
        int otherOffset = otherEdit.getOffset();
        int otherEnd = otherEdit.getExclusiveEnd();
        return thisOffset <= otherOffset && otherEnd <= thisEnd;
    }

    protected void deleteNode(IDocumentElementNode node) {
        Object op;
        TextEdit old = (TextEdit)this.fOperationTable.get(node);
        if (old != null) {
            op = this.fOperationTable.remove(node);
            this.fOperationList.remove(op);
            if (this.fReadableNames != null) {
                this.fReadableNames.remove(op);
            }
        }
        if (node.getOffset() > -1) {
            op = this.getDeleteNodeOperation(node);
            this.fOperationTable.put(node, op);
            this.fOperationList.add(op);
            if (this.fReadableNames != null) {
                this.fReadableNames.put(op, NLS.bind((String)PDECoreMessages.XMLTextChangeListener_editNames_removeNode, (Object)node.getXMLTagName()));
            }
        } else if (old == null) {
            this.insertNode(node);
        }
    }

    protected void insertNode(IDocumentElementNode node) {
        InsertEdit op = null;
        if ((node = this.getHighestNodeToBeWritten(node)).getParentNode() == null) {
            if (node.isRoot()) {
                op = new InsertEdit(0, node.write(true));
            }
        } else if (node.getOffset() > -1) {
            op = new ReplaceEdit(node.getOffset(), node.getLength(), node.write(false));
        } else {
            op = this.insertAfterSibling(node);
            if (op == null) {
                op = this.insertAsFirstChild(node);
            }
        }
        this.fOperationTable.put(node, op);
        this.fOperationList.add(op);
        if (this.fReadableNames != null) {
            this.fReadableNames.put(op, NLS.bind((String)PDECoreMessages.XMLTextChangeListener_editNames_insertNode, (Object)node.getXMLTagName()));
        }
    }

    private InsertEdit insertAfterSibling(IDocumentElementNode node) {
        for (IDocumentElementNode sibling = node.getPreviousSibling(); sibling != null; sibling = sibling.getPreviousSibling()) {
            if (sibling.getOffset() <= -1) continue;
            node.setLineIndent(sibling.getLineIndent());
            return new InsertEdit(sibling.getOffset() + sibling.getLength(), String.valueOf(this.fSep) + node.write(true));
        }
        return null;
    }

    private InsertEdit insertAsFirstChild(IDocumentElementNode node) {
        int offset = node.getParentNode().getOffset();
        int length = this.getNextPosition(this.fDocument, offset, '>');
        node.setLineIndent(node.getParentNode().getLineIndent() + 3);
        return new InsertEdit(offset + length + 1, String.valueOf(this.fSep) + node.write(true));
    }

    protected void modifyNode(IDocumentElementNode node, IModelChangedEvent event) {
        IDocumentElementNode node2;
        IDocumentElementNode oldNode = (IDocumentElementNode)event.getOldValue();
        IDocumentElementNode newNode = (IDocumentElementNode)event.getNewValue();
        IDocumentElementNode node1 = oldNode.getPreviousSibling() == null || oldNode.equals(newNode.getPreviousSibling()) ? oldNode : newNode;
        IDocumentElementNode iDocumentElementNode = node2 = node1.equals(oldNode) ? newNode : oldNode;
        if (node1.getOffset() < 0 && node2.getOffset() < 0) {
            TextEdit op = (TextEdit)this.fOperationTable.get(node1);
            if (op == null) {
                this.insertNode(node);
            }
        } else if (node1.getOffset() > -1 && node2.getOffset() > -1) {
            IRegion region = this.getMoveRegion(node1);
            MoveSourceEdit source = new MoveSourceEdit(region.getOffset(), region.getLength());
            region = this.getMoveRegion(node2);
            source.setTargetEdit(new MoveTargetEdit(region.getOffset()));
            this.fOperationTable.put(node, source);
            this.fOperationList.add(source);
            if (this.fReadableNames != null) {
                this.fReadableNames.put(source, NLS.bind((String)PDECoreMessages.XMLTextChangeListener_editNames_modifyNode, (Object)node.getXMLTagName()));
            }
        } else {
            this.insertNode(node1.getOffset() < 0 ? node1 : node2);
        }
    }

    private IRegion getMoveRegion(IDocumentElementNode node) {
        int offset = node.getOffset();
        int length = node.getLength();
        int i = 1;
        try {
            while (true) {
                char ch;
                if (!Character.isWhitespace(ch = this.fDocument.get(offset - i, 1).toCharArray()[0])) {
                    --i;
                    break;
                }
                ++i;
            }
        }
        catch (BadLocationException badLocationException) {}
        return new Region(offset - i, length + i);
    }

    protected void addAttributeOperation(IDocumentAttributeNode attr, IModelChangedEvent event) {
        int offset = attr.getValueOffset();
        Object newValue = event.getNewValue();
        IDocumentRange changedObject = attr;
        String name = null;
        ReplaceEdit op = null;
        if (offset > -1) {
            if (newValue == null || newValue.toString().length() == 0) {
                int length = attr.getValueOffset() + attr.getValueLength() + 1 - attr.getNameOffset();
                op = this.getAttributeDeleteEditOperation(attr.getNameOffset(), length);
                if (this.fReadableNames != null) {
                    name = NLS.bind((String)PDECoreMessages.XMLTextChangeListener_editNames_removeAttribute, (Object[])new String[]{attr.getAttributeName(), attr.getEnclosingElement().getXMLTagName()});
                }
            } else {
                op = new ReplaceEdit(offset, attr.getValueLength(), this.getWritableString(event.getNewValue().toString()));
                if (this.fReadableNames != null) {
                    name = NLS.bind((String)PDECoreMessages.XMLTextChangeListener_editNames_modifyAttribute, (Object[])new String[]{attr.getAttributeName(), attr.getEnclosingElement().getXMLTagName()});
                }
            }
        }
        if (op == null) {
            IDocumentElementNode node = attr.getEnclosingElement();
            if (node.getOffset() > -1) {
                changedObject = node;
                int len = this.getNextPosition(this.fDocument, node.getOffset(), '>');
                op = new ReplaceEdit(node.getOffset(), len + 1, node.writeShallow(this.shouldTerminateElement(this.fDocument, node.getOffset() + len)));
                if (this.fReadableNames != null) {
                    name = NLS.bind((String)PDECoreMessages.XMLTextChangeListener_editNames_addAttribute, (Object[])new String[]{attr.getAttributeName(), attr.getEnclosingElement().getXMLTagName()});
                }
            } else {
                this.insertNode(node);
                return;
            }
        }
        this.fOperationTable.put(changedObject, op);
        this.fOperationList.add(op);
        if (this.fReadableNames != null && name != null) {
            this.fReadableNames.put(op, name);
        }
    }

    protected void addElementContentOperation(IDocumentTextNode textNode) {
        ReplaceEdit op = null;
        IDocumentRange changedObject = textNode;
        if (textNode.getOffset() > -1) {
            String newText = this.getWritableString(textNode.getText());
            op = new ReplaceEdit(textNode.getOffset(), textNode.getLength(), newText);
        } else {
            IDocumentElementNode parent = textNode.getEnclosingElement();
            if (parent.getOffset() > -1) {
                try {
                    String endChars = this.fDocument.get(parent.getOffset() + parent.getLength() - 2, 2);
                    if ("/>".equals(endChars)) {
                        this.insertNode(parent);
                        return;
                    }
                }
                catch (BadLocationException badLocationException) {}
                changedObject = parent;
                StringBuffer buffer = new StringBuffer(this.fSep);
                int i = 0;
                while (i < parent.getLineIndent()) {
                    buffer.append(" ");
                    ++i;
                }
                buffer.append("   " + this.getWritableString(textNode.getText()));
                int offset = parent.getOffset();
                int length = this.getNextPosition(this.fDocument, offset, '>');
                op = new InsertEdit(offset + length + 1, buffer.toString());
            } else {
                this.insertNode(parent);
                return;
            }
        }
        this.fOperationTable.put(changedObject, op);
        this.fOperationList.add(op);
        if (this.fReadableNames != null) {
            this.fReadableNames.put(op, NLS.bind((String)PDECoreMessages.XMLTextChangeListener_editNames_addContent, (Object)textNode.getEnclosingElement().getXMLTagName()));
        }
    }

    private boolean shouldTerminateElement(IDocument doc, int offset) {
        try {
            return doc.get(offset - 1, 1).toCharArray()[0] == '/';
        }
        catch (BadLocationException badLocationException) {
            return false;
        }
    }

    private int getNextPosition(IDocument doc, int offset, char ch) {
        int i = 0;
        try {
            i = 0;
            while (i + offset < doc.getLength()) {
                if (ch != doc.get(offset + i, 1).toCharArray()[0]) {
                    ++i;
                    continue;
                }
                break;
            }
        }
        catch (BadLocationException badLocationException) {}
        return i;
    }

    private DeleteEdit getAttributeDeleteEditOperation(int offset, int length) {
        try {
            char ch;
            while (Character.isWhitespace(ch = this.fDocument.get(offset + length, 1).toCharArray()[0])) {
                ++length;
            }
        }
        catch (BadLocationException badLocationException) {}
        return new DeleteEdit(offset, length);
    }

    private DeleteEdit getDeleteNodeOperation(IDocumentElementNode node) {
        int offset = node.getOffset();
        int length = node.getLength();
        try {
            int extraLength;
            int startOffset;
            int startLineOffset;
            int startLine;
            block5: {
                startLine = this.fDocument.getLineOfOffset(offset);
                startLineOffset = this.fDocument.getLineOffset(startLine);
                startOffset = offset - 1;
                while (startOffset >= startLineOffset) {
                    if (!Character.isWhitespace(this.fDocument.getChar(startOffset))) break;
                    --startOffset;
                }
                ++startOffset;
                int endLine = this.fDocument.getLineOfOffset(offset + length);
                int endLineDelimLength = this.fDocument.getLineDelimiter(endLine).length();
                extraLength = length;
                do {
                    if (Character.isWhitespace(this.fDocument.getChar(offset + ++extraLength))) continue;
                    --extraLength;
                    break block5;
                } while (this.fDocument.getLineOfOffset(offset + extraLength) <= endLine);
                extraLength -= endLineDelimLength;
            }
            if (startOffset == startLineOffset) {
                startOffset -= this.fDocument.getLineDelimiter(startLine).length();
            }
            length = extraLength + (offset - startOffset);
            offset = startOffset;
        }
        catch (BadLocationException badLocationException) {}
        return new DeleteEdit(offset, length);
    }

    protected void printDeletionRange(int offset, int length) {
        try {
            String string = this.fDocument.get(offset, length);
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i < string.length()) {
                char c = string.charAt(i);
                if (c == '\n') {
                    buffer.append("\\n");
                } else if (c == '\r') {
                    buffer.append("\\r");
                } else if (c == '\t') {
                    buffer.append("\\t");
                } else if (c == ' ') {
                    buffer.append('*');
                } else {
                    buffer.append(c);
                }
                ++i;
            }
            System.out.println(buffer.toString());
        }
        catch (BadLocationException badLocationException) {}
    }

    private IDocumentElementNode getHighestNodeToBeWritten(IDocumentElementNode node) {
        IDocumentElementNode parent = node.getParentNode();
        if (parent == null) {
            return node;
        }
        if (parent.getOffset() > -1) {
            try {
                String endChars = this.fDocument.get(parent.getOffset() + parent.getLength() - 2, 2);
                return "/>".equals(endChars) ? parent : node;
            }
            catch (BadLocationException badLocationException) {
                return node;
            }
        }
        return this.getHighestNodeToBeWritten(parent);
    }

    private String getWritableString(String source) {
        return PDEXMLHelper.getWritableString(source);
    }

    public void modelChanged(IModelChangedEvent event) {
        Object[] objects = event.getChangedObjects();
        if (objects == null) {
            return;
        }
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof IDocumentElementNode) {
                IDocumentElementNode node = (IDocumentElementNode)objects[i];
                Object op = this.fOperationTable.remove(node);
                this.fOperationList.remove(op);
                if (this.fReadableNames != null) {
                    this.fReadableNames.remove(op);
                }
                switch (event.getChangeType()) {
                    case 2: {
                        this.deleteNode(node);
                        break;
                    }
                    case 1: {
                        this.insertNode(node);
                        break;
                    }
                    case 3: {
                        IDocumentAttributeNode attr = node.getDocumentAttribute(event.getChangedProperty());
                        if (attr != null) {
                            this.addAttributeOperation(attr, event);
                            break;
                        }
                        if (event.getOldValue() instanceof IDocumentTextNode) {
                            this.addElementContentOperation((IDocumentTextNode)event.getOldValue());
                            break;
                        }
                        if (!(event.getOldValue() instanceof IDocumentElementNode) || !(event.getNewValue() instanceof IDocumentElementNode)) break;
                        this.modifyNode(node, event);
                    }
                }
            }
            ++i;
        }
    }

    public String getReadableName(TextEdit edit) {
        if (this.fReadableNames != null && this.fReadableNames.containsKey(edit)) {
            return (String)this.fReadableNames.get(edit);
        }
        return null;
    }
}

