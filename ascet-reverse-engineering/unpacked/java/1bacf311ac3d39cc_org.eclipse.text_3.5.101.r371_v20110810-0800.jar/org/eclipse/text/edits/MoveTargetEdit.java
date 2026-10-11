/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.text.edits;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MoveSourceEdit;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditCopier;
import org.eclipse.text.edits.TextEditMessages;
import org.eclipse.text.edits.TextEditProcessor;
import org.eclipse.text.edits.TextEditVisitor;

public final class MoveTargetEdit
extends TextEdit {
    private MoveSourceEdit fSource;

    public MoveTargetEdit(int offset) {
        super(offset, 0);
    }

    public MoveTargetEdit(int offset, MoveSourceEdit source) {
        this(offset);
        this.setSourceEdit(source);
    }

    private MoveTargetEdit(MoveTargetEdit other) {
        super(other);
    }

    public MoveSourceEdit getSourceEdit() {
        return this.fSource;
    }

    public void setSourceEdit(MoveSourceEdit edit) {
        if (this.fSource != edit) {
            this.fSource = edit;
            this.fSource.setTargetEdit(this);
            TextEdit parent = this.getParent();
            while (parent != null) {
                if (parent == this.fSource) {
                    throw new MalformedTreeException(parent, this, TextEditMessages.getString("MoveTargetEdit.wrong_parent"));
                }
                parent = parent.getParent();
            }
        }
    }

    protected TextEdit doCopy() {
        return new MoveTargetEdit(this);
    }

    protected void postProcessCopy(TextEditCopier copier) {
        if (this.fSource != null) {
            MoveTargetEdit target = (MoveTargetEdit)copier.getCopy(this);
            MoveSourceEdit source = (MoveSourceEdit)copier.getCopy(this.fSource);
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
            throw new MalformedTreeException(this.getParent(), this, TextEditMessages.getString("MoveTargetEdit.no_source"));
        }
        if (this.fSource.getTargetEdit() != this) {
            throw new MalformedTreeException(this.getParent(), this, TextEditMessages.getString("MoveTargetEdit.different_target"));
        }
    }

    int performDocumentUpdating(IDocument document) throws BadLocationException {
        String source = this.fSource.getContent();
        document.replace(this.getOffset(), this.getLength(), source);
        this.fDelta = source.length() - this.getLength();
        MultiTextEdit sourceRoot = this.fSource.getSourceRoot();
        if (sourceRoot != null) {
            sourceRoot.internalMoveTree(this.getOffset());
            TextEdit[] sourceChildren = sourceRoot.removeChildren();
            ArrayList<TextEdit> children = new ArrayList<TextEdit>(sourceChildren.length);
            int i = 0;
            while (i < sourceChildren.length) {
                TextEdit child = sourceChildren[i];
                child.internalSetParent(this);
                children.add(child);
                ++i;
            }
            this.internalSetChildren(children);
        }
        this.fSource.clearContent();
        return this.fDelta;
    }

    int traverseRegionUpdating(TextEditProcessor processor, IDocument document, int accumulatedDelta, boolean delete) {
        if (delete) {
            this.deleteTree();
        } else {
            this.internalMoveTree(accumulatedDelta);
        }
        return accumulatedDelta + this.fDelta;
    }

    boolean deleteChildren() {
        return false;
    }
}

