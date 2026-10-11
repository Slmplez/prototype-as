/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;

class PngIendChunk
extends PngChunk {
    PngIendChunk() {
        super(0);
        this.setType(TYPE_IEND);
        this.setCRC(this.computeCRC());
    }

    PngIendChunk(byte[] reference) {
        super(reference);
    }

    int getChunkType() {
        return 3;
    }

    void validate(PngFileReadState readState, PngIhdrChunk headerChunk) {
        if (!readState.readIHDR || headerChunk.getMustHavePalette() && !readState.readPLTE || !readState.readIDAT || readState.readIEND) {
            SWT.error(40);
        } else {
            readState.readIEND = true;
        }
        super.validate(readState, headerChunk);
        if (this.getLength() > 0) {
            SWT.error(40);
        }
    }
}

