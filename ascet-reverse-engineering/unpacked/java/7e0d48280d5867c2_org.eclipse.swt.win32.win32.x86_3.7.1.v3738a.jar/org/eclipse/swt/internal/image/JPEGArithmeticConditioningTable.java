/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.internal.image.JPEGVariableSizeSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

final class JPEGArithmeticConditioningTable
extends JPEGVariableSizeSegment {
    public JPEGArithmeticConditioningTable(LEDataInputStream byteStream) {
        super(byteStream);
    }

    public int signature() {
        return 65484;
    }
}

