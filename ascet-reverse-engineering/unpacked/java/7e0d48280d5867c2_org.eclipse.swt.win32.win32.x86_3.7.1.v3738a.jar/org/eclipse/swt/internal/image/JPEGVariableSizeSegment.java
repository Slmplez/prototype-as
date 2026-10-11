/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.JPEGSegment;
import org.eclipse.swt.internal.image.LEDataInputStream;

abstract class JPEGVariableSizeSegment
extends JPEGSegment {
    public JPEGVariableSizeSegment(byte[] reference) {
        super(reference);
    }

    public JPEGVariableSizeSegment(LEDataInputStream byteStream) {
        try {
            byte[] header = new byte[4];
            byteStream.read(header);
            this.reference = header;
            byte[] contents = new byte[this.getSegmentLength() + 2];
            contents[0] = header[0];
            contents[1] = header[1];
            contents[2] = header[2];
            contents[3] = header[3];
            byteStream.read(contents, 4, contents.length - 4);
            this.reference = contents;
        }
        catch (Exception e) {
            SWT.error(39, e);
        }
    }
}

