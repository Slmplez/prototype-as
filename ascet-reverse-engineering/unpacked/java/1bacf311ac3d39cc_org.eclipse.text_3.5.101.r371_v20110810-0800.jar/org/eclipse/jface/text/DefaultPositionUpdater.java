/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.Position;

public class DefaultPositionUpdater
implements IPositionUpdater {
    private final String fCategory;
    protected Position fPosition;
    protected Position fOriginalPosition = new Position(0, 0);
    protected int fOffset;
    protected int fLength;
    protected int fReplaceLength;
    protected IDocument fDocument;

    public DefaultPositionUpdater(String category) {
        this.fCategory = category;
    }

    protected String getCategory() {
        return this.fCategory;
    }

    protected boolean isAffectingReplace() {
        return this.fLength > 0 && this.fReplaceLength > 0 && this.fPosition.length < this.fOriginalPosition.length;
    }

    protected void adaptToInsert() {
        int myStart = this.fPosition.offset;
        int myEnd = this.fPosition.offset + this.fPosition.length - 1;
        myEnd = Math.max(myStart, myEnd);
        int yoursStart = this.fOffset;
        int yoursEnd = this.fOffset + this.fReplaceLength - 1;
        yoursEnd = Math.max(yoursStart, yoursEnd);
        if (myEnd < yoursStart) {
            return;
        }
        if (myStart < yoursStart) {
            this.fPosition.length += this.fReplaceLength;
        } else {
            this.fPosition.offset += this.fReplaceLength;
        }
    }

    protected void adaptToRemove() {
        int myStart = this.fPosition.offset;
        int myEnd = this.fPosition.offset + this.fPosition.length - 1;
        myEnd = Math.max(myStart, myEnd);
        int yoursStart = this.fOffset;
        int yoursEnd = this.fOffset + this.fLength - 1;
        yoursEnd = Math.max(yoursStart, yoursEnd);
        if (myEnd < yoursStart) {
            return;
        }
        if (myStart <= yoursStart) {
            this.fPosition.length = yoursEnd <= myEnd ? (this.fPosition.length -= this.fLength) : (this.fPosition.length -= myEnd - yoursStart + 1);
        } else if (yoursStart < myStart) {
            if (yoursEnd < myStart) {
                this.fPosition.offset -= this.fLength;
            } else {
                this.fPosition.offset -= myStart - yoursStart;
                this.fPosition.length -= yoursEnd - myStart + 1;
            }
        }
        if (this.fPosition.offset < 0) {
            this.fPosition.offset = 0;
        }
        if (this.fPosition.length < 0) {
            this.fPosition.length = 0;
        }
    }

    protected void adaptToReplace() {
        if (this.fLength > 0 && this.fPosition.offset <= this.fOffset && this.fOffset + this.fLength <= this.fPosition.offset + this.fPosition.length) {
            this.fPosition.length += this.fReplaceLength - this.fLength;
        } else {
            if (this.fLength > 0) {
                this.adaptToRemove();
            }
            if (this.fReplaceLength > 0) {
                this.adaptToInsert();
            }
        }
    }

    protected boolean notDeleted() {
        if (this.fOffset < this.fPosition.offset && this.fPosition.offset + this.fPosition.length < this.fOffset + this.fLength) {
            this.fPosition.delete();
            try {
                this.fDocument.removePosition(this.fCategory, this.fPosition);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
            return false;
        }
        return true;
    }

    public void update(DocumentEvent event) {
        try {
            try {
                this.fOffset = event.getOffset();
                this.fLength = event.getLength();
                this.fReplaceLength = event.getText() == null ? 0 : event.getText().length();
                this.fDocument = event.getDocument();
                Position[] category = this.fDocument.getPositions(this.fCategory);
                int i = 0;
                while (i < category.length) {
                    this.fPosition = category[i];
                    this.fOriginalPosition.offset = this.fPosition.offset;
                    this.fOriginalPosition.length = this.fPosition.length;
                    if (this.notDeleted()) {
                        this.adaptToReplace();
                    }
                    ++i;
                }
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                this.fDocument = null;
            }
        }
        finally {
            this.fDocument = null;
        }
    }
}

