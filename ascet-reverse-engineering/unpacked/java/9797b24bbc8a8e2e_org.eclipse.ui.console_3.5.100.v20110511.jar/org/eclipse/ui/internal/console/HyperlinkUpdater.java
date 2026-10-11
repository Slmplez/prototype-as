/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.ui.internal.console.ConsoleHyperlinkPosition;

public class HyperlinkUpdater
extends DefaultPositionUpdater {
    public HyperlinkUpdater() {
        super(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY);
    }

    protected boolean notDeleted() {
        int positionEnd = this.fPosition.offset + this.fPosition.length - 1;
        int editEnd = this.fOffset + this.fLength - 1;
        if (this.fOffset <= this.fPosition.offset && editEnd > this.fPosition.offset || this.fOffset < positionEnd && editEnd > positionEnd || this.fOffset >= this.fPosition.offset && this.fOffset <= positionEnd || editEnd >= this.fPosition.offset && editEnd <= positionEnd) {
            this.fPosition.delete();
            try {
                this.fDocument.removePosition(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY, this.fPosition);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
            return false;
        }
        return true;
    }
}

