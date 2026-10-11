/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.text.edits;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditVisitor;

public final class DeleteEdit
extends TextEdit {
    public DeleteEdit(int offset, int length) {
        super(offset, length);
    }

    private DeleteEdit(DeleteEdit other) {
        super(other);
    }

    protected TextEdit doCopy() {
        return new DeleteEdit(this);
    }

    protected void accept0(TextEditVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor);
        }
    }

    int performDocumentUpdating(IDocument document) throws BadLocationException {
        document.replace(this.getOffset(), this.getLength(), "");
        this.fDelta = -this.getLength();
        return this.fDelta;
    }

    boolean deleteChildren() {
        return true;
    }
}

