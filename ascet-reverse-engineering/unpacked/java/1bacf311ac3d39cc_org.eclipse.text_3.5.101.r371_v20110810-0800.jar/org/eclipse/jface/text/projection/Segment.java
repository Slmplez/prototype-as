/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.projection.Fragment;

public class Segment
extends Position {
    public Fragment fragment;
    public boolean isMarkedForStretch;
    public boolean isMarkedForShift;

    public Segment(int offset, int length) {
        super(offset, length);
    }

    public void markForStretch() {
        this.isMarkedForStretch = true;
    }

    public boolean isMarkedForStretch() {
        return this.isMarkedForStretch;
    }

    public void markForShift() {
        this.isMarkedForShift = true;
    }

    public boolean isMarkedForShift() {
        return this.isMarkedForShift;
    }

    public void clearMark() {
        this.isMarkedForStretch = false;
        this.isMarkedForShift = false;
    }
}

