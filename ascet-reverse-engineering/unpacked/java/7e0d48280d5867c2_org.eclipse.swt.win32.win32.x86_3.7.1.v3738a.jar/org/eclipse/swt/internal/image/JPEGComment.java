/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

final class JPEGComment
extends JPEGVariableSizeSegment {
    public JPEGComment(byte[] reference) {
        super(reference);
    }

    public JPEGComment(LEDataInputStream byteStream) {
        super(byteStream);
    }

    public int signature() {
        return 65534;
    }
}

