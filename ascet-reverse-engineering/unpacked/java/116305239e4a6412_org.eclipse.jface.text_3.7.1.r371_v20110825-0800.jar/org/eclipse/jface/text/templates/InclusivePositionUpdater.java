/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.Position
 */
package org.eclipse.jface.text.templates;

import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.Position;

class InclusivePositionUpdater
implements IPositionUpdater {
    private final String fCategory;

    public InclusivePositionUpdater(String category) {
        this.fCategory = category;
    }

    public void update(DocumentEvent event) {
        int eventOffset = event.getOffset();
        int eventOldLength = event.getLength();
        int eventNewLength = event.getText() == null ? 0 : event.getText().length();
        int deltaLength = eventNewLength - eventOldLength;
        try {
            Position[] positions = event.getDocument().getPositions(this.fCategory);
            int i = 0;
            while (i != positions.length) {
                Position position = positions[i];
                if (!position.isDeleted()) {
                    int offset = position.getOffset();
                    int length = position.getLength();
                    int end = offset + length;
                    if (offset > eventOffset + eventOldLength) {
                        position.setOffset(offset + deltaLength);
                    } else if (end >= eventOffset) {
                        if (offset <= eventOffset && end >= eventOffset + eventOldLength) {
                            position.setLength(length + deltaLength);
                        } else if (offset < eventOffset) {
                            int newEnd = eventOffset + eventNewLength;
                            position.setLength(newEnd - offset);
                        } else if (end > eventOffset + eventOldLength) {
                            position.setOffset(eventOffset);
                            int deleted = eventOffset + eventOldLength - offset;
                            position.setLength(length - deleted + eventNewLength);
                        } else {
                            position.delete();
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

