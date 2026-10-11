/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;

class PngIdatChunk
extends PngChunk {
    static final int HEADER_BYTES_LENGTH = 2;
    static final int ADLER_FIELD_LENGTH = 4;
    static final int HEADER_BYTE1_DATA_OFFSET = 8;
    static final int HEADER_BYTE2_DATA_OFFSET = 9;
    static final int ADLER_DATA_OFFSET = 10;

    PngIdatChunk(byte headerByte1, byte headerByte2, byte[] data, int adler) {
        super(data.length + 2 + 4);
        this.setType(TYPE_IDAT);
        this.reference[8] = headerByte1;
        this.reference[9] = headerByte2;
        System.arraycopy(data, 0, this.reference, 8, data.length);
        this.setInt32(10, adler);
        this.setCRC(this.computeCRC());
    }

    PngIdatChunk(byte[] reference) {
        super(reference);
    }

    int getChunkType() {
        return 2;
    }

    void validate(PngFileReadState readState, PngIhdrChunk headerChunk) {
        if (!readState.readIHDR || headerChunk.getMustHavePalette() && !readState.readPLTE || readState.readIEND) {
            SWT.error(40);
        } else {
            readState.readIDAT = true;
        }
        super.validate(readState, headerChunk);
    }

    byte getDataByteAtOffset(int offset) {
        return this.reference[8 + offset];
    }
}

