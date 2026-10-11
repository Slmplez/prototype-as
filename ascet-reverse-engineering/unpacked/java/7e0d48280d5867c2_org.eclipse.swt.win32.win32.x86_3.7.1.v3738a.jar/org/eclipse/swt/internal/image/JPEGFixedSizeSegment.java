/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.JPEGSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

abstract class JPEGFixedSizeSegment
extends JPEGSegment {
    public JPEGFixedSizeSegment() {
        this.reference = new byte[this.fixedSize()];
        this.setSegmentMarker(this.signature());
    }

    public JPEGFixedSizeSegment(byte[] reference) {
        super(reference);
    }

    public JPEGFixedSizeSegment(LEDataInputStream byteStream) {
        this.reference = new byte[this.fixedSize()];
        try {
            byteStream.read(this.reference);
        }
        catch (Exception e) {
            SWT.error(39, e);
        }
    }

    public abstract int fixedSize();

    public int getSegmentLength() {
        return this.fixedSize() - 2;
    }

    public void setSegmentLength(int length) {
    }
}

