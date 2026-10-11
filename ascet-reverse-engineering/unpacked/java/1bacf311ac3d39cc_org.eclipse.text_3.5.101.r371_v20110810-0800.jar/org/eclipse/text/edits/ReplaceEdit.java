/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditVisitor;

public final class ReplaceEdit
extends TextEdit {
    private String fText;

    public ReplaceEdit(int offset, int length, String text) {
        super(offset, length);
        Assert.isNotNull((Object)text);
        this.fText = text;
    }

    private ReplaceEdit(ReplaceEdit other) {
        super(other);
        this.fText = other.fText;
    }

    public String getText() {
        return this.fText;
    }

    protected TextEdit doCopy() {
        return new ReplaceEdit(this);
    }

    protected void accept0(TextEditVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor);
        }
    }

    int performDocumentUpdating(IDocument document) throws BadLocationException {
        document.replace(this.getOffset(), this.getLength(), this.fText);
        this.fDelta = this.fText.length() - this.getLength();
        return this.fDelta;
    }

    boolean deleteChildren() {
        return true;
    }

    void internalToString(StringBuffer buffer, int indent) {
        super.internalToString(buffer, indent);
        buffer.append(" <<").append(this.fText);
    }
}

