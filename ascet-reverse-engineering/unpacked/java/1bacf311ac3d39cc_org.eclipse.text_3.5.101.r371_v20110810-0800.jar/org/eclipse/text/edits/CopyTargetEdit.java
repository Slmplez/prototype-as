/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.text.edits;

import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.CopySourceEdit;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditCopier;
import org.eclipse.text.edits.TextEditMessages;
import org.eclipse.text.edits.TextEditProcessor;
import org.eclipse.text.edits.TextEditVisitor;

public final class CopyTargetEdit
extends TextEdit {
    private CopySourceEdit fSource;

    public CopyTargetEdit(int offset) {
        super(offset, 0);
    }

    public CopyTargetEdit(int offset, CopySourceEdit source) {
        this(offset);
        this.setSourceEdit(source);
    }

    private CopyTargetEdit(CopyTargetEdit other) {
        super(other);
    }

    public CopySourceEdit getSourceEdit() {
        return this.fSource;
    }

    public void setSourceEdit(CopySourceEdit edit) throws MalformedTreeException {
        Assert.isNotNull((Object)edit);
        if (this.fSource != edit) {
            this.fSource = edit;
            this.fSource.setTargetEdit(this);
            TextEdit parent = this.getParent();
            while (parent != null) {
                if (parent == this.fSource) {
                    throw new MalformedTreeException(parent, this, TextEditMessages.getString("CopyTargetEdit.wrong_parent"));
                }
                parent = parent.getParent();
            }
        }
    }

    protected TextEdit doCopy() {
        return new CopyTargetEdit(this);
    }

    protected void postProcessCopy(TextEditCopier copier) {
        if (this.fSource != null) {
            CopyTargetEdit target = (CopyTargetEdit)copier.getCopy(this);
            CopySourceEdit source = (CopySourceEdit)copier.getCopy(this.fSource);
            if (target != null && source != null) {
                target.setSourceEdit(source);
            }
        }
    }

    protected void accept0(TextEditVisitor visitor) {
        boolean visitChildren = visitor.visit(this);
        if (visitChildren) {
            this.acceptChildren(visitor);
        }
    }

    int traverseConsistencyCheck(TextEditProcessor processor, IDocument document, List sourceEdits) {
        return super.traverseConsistencyCheck(processor, document, sourceEdits) + 1;
    }

    void performConsistencyCheck(TextEditProcessor processor, IDocument document) throws MalformedTreeException {
        if (this.fSource == null) {
            throw new MalformedTreeException(this.getParent(), this, TextEditMessages.getString("CopyTargetEdit.no_source"));
        }
        if (this.fSource.getTargetEdit() != this) {
            throw new MalformedTreeException(this.getParent(), this, TextEditMessages.getString("CopyTargetEdit.different_target"));
        }
    }

    int performDocumentUpdating(IDocument document) throws BadLocationException {
        String source = this.fSource.getContent();
        document.replace(this.getOffset(), this.getLength(), source);
        this.fDelta = source.length() - this.getLength();
        this.fSource.clearContent();
        return this.fDelta;
    }

    boolean deleteChildren() {
        return false;
    }
}

