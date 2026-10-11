/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.Position
 */
package org.eclipse.jface.internal.text;

import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.Position;

public final class NonDeletingPositionUpdater
implements IPositionUpdater {
    private final String fCategory;

    public NonDeletingPositionUpdater(String category) {
        this.fCategory = category;
    }

    public void update(DocumentEvent event) {
        int eventOffset = event.getOffset();
        int eventOldEndOffset = eventOffset + event.getLength();
        int eventNewLength = event.getText() == null ? 0 : event.getText().length();
        int eventNewEndOffset = eventOffset + eventNewLength;
        int deltaLength = eventNewLength - event.getLength();
        try {
            Position[] positions = event.getDocument().getPositions(this.fCategory);
            int i = 0;
            while (i != positions.length) {
                Position position = positions[i];
                if (!position.isDeleted()) {
                    int offset = position.getOffset();
                    int length = position.getLength();
                    int end = offset + length;
                    if (offset > eventOldEndOffset) {
                        position.setOffset(offset + deltaLength);
                    } else if (end >= eventOffset) {
                        if (offset <= eventOffset && end >= eventOldEndOffset) {
                            position.setLength(length + deltaLength);
                        } else if (offset < eventOffset) {
                            position.setLength(eventNewEndOffset - offset);
                        } else if (end > eventOldEndOffset) {
                            position.setOffset(eventOffset);
                            int deleted = eventOldEndOffset - offset;
                            position.setLength(length - deleted + eventNewLength);
                        } else {
                            int newOffset = Math.min(offset, eventNewEndOffset);
                            int newEndOffset = Math.min(end, eventNewEndOffset);
                            position.setOffset(newOffset);
                            position.setLength(newEndOffset - newOffset);
                        }
                    }
                }
                ++i;
            }
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
    }

    public String getCategory() {
        return this.fCategory;
    }
}

