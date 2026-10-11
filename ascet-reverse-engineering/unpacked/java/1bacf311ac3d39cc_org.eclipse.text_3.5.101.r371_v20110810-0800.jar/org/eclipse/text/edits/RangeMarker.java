/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.text.edits;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditVisitor;

public final class RangeMarker
extends TextEdit {
    public RangeMarker(int offset, int length) {
        super(offset, length);
    }

    private RangeMarker(RangeMarker other) {
        super(other);
    }

    protected TextEdit doCopy() {
        return new RangeMarker(this);
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

    boolean deleteChildren() {
        return false;
    }
}

