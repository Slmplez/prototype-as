/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.internal.image.JPEGFixedSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

final class JPEGStartOfImage
extends JPEGFixedSizeSegment {
    public JPEGStartOfImage() {
    }

    public JPEGStartOfImage(byte[] reference) {
        super(reference);
    }

    public JPEGStartOfImage(LEDataInputStream byteStream) {
        super(byteStream);
    }

    public int signature() {
        return 65496;
    }

    public int fixedSize() {
        return 2;
    }
}

