/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.Position;

class FragmentUpdater
extends DefaultPositionUpdater {
    private boolean fIsLast = false;

    protected FragmentUpdater(String fragmentCategory) {
        super(fragmentCategory);
    }

    public void update(DocumentEvent event) {
        try {
            Position[] category = event.getDocument().getPositions(this.getCategory());
            this.fOffset = event.getOffset();
            this.fLength = event.getLength();
            this.fReplaceLength = event.getText() == null ? 0 : event.getText().length();
            this.fDocument = event.getDocument();
            int i = 0;
            while (i < category.length) {
                this.fPosition = category[i];
                this.fIsLast = i == category.length - 1;
                this.fOriginalPosition.offset = this.fPosition.offset;
                this.fOriginalPosition.length = this.fPosition.length;
                if (this.notDeleted()) {
                    this.adaptToReplace();
                }
                ++i;
            }
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
    }

    protected void adaptToInsert() {
        int myStart = this.fPosition.offset;
        int myEnd = Math.max(myStart, this.fPosition.offset + this.fPosition.length - (this.fIsLast || this.isAffectingReplace() ? 0 : 1));
        if (myEnd < this.fOffset) {
            return;
        }
        if (this.fLength <= 0) {
            if (myStart <= this.fOffset) {
                this.fPosition.length += this.fReplaceLength;
            } else {
                this.fPosition.offset += this.fReplaceLength;
            }
        } else if (myStart <= this.fOffset && this.fOriginalPosition.offset <= this.fOffset) {
            this.fPosition.length += this.fReplaceLength;
        } else {
            this.fPosition.offset += this.fReplaceLength;
        }
    }

    public boolean affectsPositions(DocumentEvent event) {
        Position fragment;
        Position[] fragments;
        int index;
        block6: {
            block7: {
                IDocument document = event.getDocument();
                index = document.computeIndexInCategory(this.getCategory(), event.getOffset());
                fragments = document.getPositions(this.getCategory());
                if (index <= 0) break block6;
                fragment = fragments[index - 1];
                if (!fragment.overlapsWith(event.getOffset(), event.getLength())) break block7;
                return true;
            }
            if (index != fragments.length || fragment.offset + fragment.length != event.getOffset()) break block6;
            return true;
        }
        try {
            if (index < fragments.length) {
                fragment = fragments[index];
                return fragment.overlapsWith(event.getOffset(), event.getLength());
            }
        }
        catch (BadLocationException badLocationException) {
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
        return false;
    }
}

