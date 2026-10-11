/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.compare.rangedifferencer.RangeDifference
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.ui.internal.texteditor.quickdiff;

import java.util.List;
import org.eclipse.compare.rangedifferencer.RangeDifference;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IDocument;
import org.eclipse.ui.internal.texteditor.quickdiff.DiffRegion;

public class QuickDiffRangeDifference
extends RangeDifference {
    private DiffRegion fRegion;

    public QuickDiffRangeDifference(int kind, int rightStart, int rightLength, int leftStart, int leftLength) {
        super(kind, rightStart, rightLength, leftStart, leftLength);
    }

    public QuickDiffRangeDifference() {
        super(0);
    }

    public void shiftLeft(int shift) {
        Assert.isTrue((shift + this.leftStart >= 0 ? 1 : 0) != 0);
        this.leftStart += shift;
    }

    public void shiftRight(int shift) {
        Assert.isTrue((shift + this.rightStart >= 0 ? 1 : 0) != 0);
        this.rightStart += shift;
    }

    public void extendStart(int shift) {
        Assert.isTrue((shift + this.rightStart >= 0 ? 1 : 0) != 0);
        Assert.isTrue((shift + this.leftStart >= 0 ? 1 : 0) != 0);
        this.rightStart += shift;
        this.rightLength -= shift;
        this.leftStart += shift;
        this.leftLength -= shift;
    }

    public void extendEnd(int shift) {
        Assert.isTrue((shift + this.rightLength >= 0 ? 1 : 0) != 0);
        Assert.isTrue((shift + this.leftLength >= 0 ? 1 : 0) != 0);
        this.rightLength += shift;
        this.leftLength += shift;
    }

    public DiffRegion getDiffRegion(List differences, IDocument source) {
        if (this.fRegion == null) {
            this.fRegion = new DiffRegion(this, 0, differences, source);
        }
        return this.fRegion;
    }
}

