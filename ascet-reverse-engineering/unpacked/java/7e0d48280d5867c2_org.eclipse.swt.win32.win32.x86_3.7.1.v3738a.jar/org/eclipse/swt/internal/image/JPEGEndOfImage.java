/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.internal.image.JPEGFixedSizeSegment;

final class JPEGEndOfImage
extends JPEGFixedSizeSegment {
    public JPEGEndOfImage() {
    }

    public JPEGEndOfImage(byte[] reference) {
        super(reference);
    }

    public int signature() {
        return 65497;
    }

    public int fixedSize() {
        return 2;
    }
}

