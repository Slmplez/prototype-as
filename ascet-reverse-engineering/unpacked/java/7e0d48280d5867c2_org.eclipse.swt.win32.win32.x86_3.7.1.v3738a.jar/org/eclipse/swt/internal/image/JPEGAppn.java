/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

final class JPEGAppn
extends JPEGVariableSizeSegment {
    public JPEGAppn(byte[] reference) {
        super(reference);
    }

    public JPEGAppn(LEDataInputStream byteStream) {
        super(byteStream);
    }

    public boolean verify() {
        int marker = this.getSegmentMarker();
        return marker >= 65504 && marker <= 65519;
    }
}

