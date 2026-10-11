/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;

class PngPlteChunk
extends PngChunk {
    int paletteSize;

    PngPlteChunk(PaletteData palette) {
        super(palette.getRGBs().length * 3);
        this.paletteSize = this.length / 3;
        this.setType(TYPE_PLTE);
        this.setPaletteData(palette);
        this.setCRC(this.computeCRC());
    }

    PngPlteChunk(byte[] reference) {
        super(reference);
        this.paletteSize = this.length / 3;
    }

    int getChunkType() {
        return 1;
    }

    int getPaletteSize() {
        return this.paletteSize;
    }

    PaletteData getPaletteData() {
        RGB[] rgbs = new RGB[this.paletteSize];
        int i = 0;
        while (i < rgbs.length) {
            int offset = 8 + i * 3;
            int red = this.reference[offset] & 0xFF;
            int green = this.reference[offset + 1] & 0xFF;
            int blue = this.reference[offset + 2] & 0xFF;
            rgbs[i] = new RGB(red, green, blue);
            ++i;
        }
        return new PaletteData(rgbs);
    }

    void setPaletteData(PaletteData palette) {
        RGB[] rgbs = palette.getRGBs();
        int i = 0;
        while (i < rgbs.length) {
            int offset = 8 + i * 3;
            this.reference[offset] = (byte)rgbs[i].red;
            this.reference[offset + 1] = (byte)rgbs[i].green;
            this.reference[offset + 2] = (byte)rgbs[i].blue;
            ++i;
        }
    }

    void validate(PngFileReadState readState, PngIhdrChunk headerChunk) {
        if (!readState.readIHDR || readState.readPLTE || readState.readTRNS || readState.readIDAT || readState.readIEND) {
            SWT.error(40);
        } else {
            readState.readPLTE = true;
        }
        super.validate(readState, headerChunk);
        if (this.getLength() % 3 != 0) {
            SWT.error(40);
        }
        if (1 << headerChunk.getBitDepth() < this.paletteSize) {
            SWT.error(40);
        }
        if (256 < this.paletteSize) {
            SWT.error(40);
        }
    }

    void contributeToString(StringBuffer buffer) {
        buffer.append("\n\tPalette size:");
        buffer.append(this.paletteSize);
    }
}

