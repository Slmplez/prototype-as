/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.text.edits;

import java.util.ArrayList;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditMessages;
import org.eclipse.text.edits.TextEditProcessor;
import org.eclipse.text.edits.TextEditVisitor;

public final class UndoEdit
extends TextEdit {
    UndoEdit() {
        super(0, Integer.MAX_VALUE);
    }

    private UndoEdit(UndoEdit other) {
        super(other);
    }

    void internalAdd(TextEdit child) throws MalformedTreeException {
        throw new MalformedTreeException(null, this, TextEditMessages.getString("UndoEdit.no_children"));
    }

    void aboutToBeAdded(TextEdit parent) {
        throw new MalformedTreeException(parent, this, TextEditMessages.getString("UndoEdit.can_not_be_added"));
    }

    UndoEdit dispatchPerformEdits(TextEditProcessor processor) throws BadLocationException {
        return processor.executeUndo();
    }

    void dispatchCheckIntegrity(TextEditProcessor processor) throws MalformedTreeException {
        processor.checkIntegrityUndo();
    }

    protected TextEdit doCopy() {
        return new UndoEdit(this);
    }

    protected void accept0(TextEditVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor);
        }
    }

    int performDocumentUpdating(IDocument document) throws BadLocationException {
        this.fDelta = 0;
        return this.fDelta;
    }

    void add(ReplaceEdit edit) {
        ArrayList<ReplaceEdit> children = this.internalGetChildren();
        if (children == null) {
            children = new ArrayList<ReplaceEdit>(2);
            this.internalSetChildren(children);
        }
        children.add(edit);
    }

    void defineRegion(int offset, int length) {
        this.internalSetOffset(offset);
        this.internalSetLength(length);
    }

    boolean deleteChildren() {
        return false;
    }
}

