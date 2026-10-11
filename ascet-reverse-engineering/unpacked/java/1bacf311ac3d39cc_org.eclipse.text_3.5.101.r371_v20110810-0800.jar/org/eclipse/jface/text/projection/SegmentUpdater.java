/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.projection;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.projection.ProjectionDocumentEvent;
import org.eclipse.jface.text.projection.Segment;

class SegmentUpdater
extends DefaultPositionUpdater {
    private Segment fNextSegment = null;
    private boolean fIsProjectionChange = false;

    protected SegmentUpdater(String segmentCategory) {
        super(segmentCategory);
    }

    public void update(DocumentEvent event) {
        Assert.isTrue((boolean)(event instanceof ProjectionDocumentEvent));
        this.fIsProjectionChange = ((ProjectionDocumentEvent)event).getChangeType() == ProjectionDocumentEvent.PROJECTION_CHANGE;
        try {
            Position[] category = event.getDocument().getPositions(this.getCategory());
            this.fOffset = event.getOffset();
            this.fLength = event.getLength();
            this.fReplaceLength = event.getText() == null ? 0 : event.getText().length();
            this.fDocument = event.getDocument();
            int i = 0;
            while (i < category.length) {
                this.fPosition = category[i];
                Assert.isTrue((boolean)(this.fPosition instanceof Segment));
                this.fNextSegment = i < category.length - 1 ? (Segment)category[i + 1] : null;
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
        Segment segment = (Segment)this.fPosition;
        int myStart = segment.offset;
        int myEnd = segment.offset + segment.length - (segment.isMarkedForStretch || this.fNextSegment == null || this.isAffectingReplace() ? 0 : 1);
        myEnd = Math.max(myStart, myEnd);
        int yoursStart = this.fOffset;
        try {
            if (myEnd < yoursStart) {
                return;
            }
            if (segment.isMarkedForStretch) {
                Assert.isTrue((boolean)this.fIsProjectionChange);
                segment.isMarkedForShift = false;
                if (this.fNextSegment != null) {
                    this.fNextSegment.isMarkedForShift = true;
                    this.fNextSegment.isMarkedForStretch = false;
                }
            }
            if (this.fLength <= 0) {
                if (myStart < yoursStart + (segment.isMarkedForShift ? 0 : 1)) {
                    this.fPosition.length += this.fReplaceLength;
                } else {
                    this.fPosition.offset += this.fReplaceLength;
                }
            } else if (myStart <= yoursStart && this.fOriginalPosition.offset <= yoursStart) {
                this.fPosition.length += this.fReplaceLength;
            } else {
                this.fPosition.offset += this.fReplaceLength;
            }
        }
        finally {
            segment.clearMark();
        }
    }
}

