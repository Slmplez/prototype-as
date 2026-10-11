/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.PNGFileFormat;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngFileReadState;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngPlteChunk;

public class PngTrnsChunk
extends PngChunk {
    static final int TRANSPARENCY_TYPE_PIXEL = 0;
    static final int TRANSPARENCY_TYPE_ALPHAS = 1;
    static final int RGB_DATA_LENGTH = 6;

    PngTrnsChunk(RGB rgb) {
        super(6);
        this.setType(TYPE_tRNS);
        this.setInt16(8, rgb.red);
        this.setInt16(10, rgb.green);
        this.setInt16(12, rgb.blue);
        this.setCRC(this.computeCRC());
    }

    PngTrnsChunk(byte[] reference) {
        super(reference);
    }

    int getChunkType() {
        return 5;
    }

    void validateLength(PngIhdrChunk header, PngPlteChunk paletteChunk) {
        boolean valid;
        switch (header.getColorType()) {
            case 2: {
                valid = this.getLength() == 6;
                break;
            }
            case 3: {
                valid = this.getLength() <= paletteChunk.getLength();
                break;
            }
            case 0: {
                valid = this.getLength() == 2;
                break;
            }
            default: {
                valid = false;
            }
        }
        if (!valid) {
            SWT.error(40);
        }
    }

    void validate(PngFileReadState readState, PngIhdrChunk headerChunk, PngPlteChunk paletteChunk) {
        if (!readState.readIHDR || headerChunk.getMustHavePalette() && !readState.readPLTE || readState.readIDAT || readState.readIEND) {
            SWT.error(40);
        } else {
            readState.readTRNS = true;
        }
        this.validateLength(headerChunk, paletteChunk);
        super.validate(readState, headerChunk);
    }

    int getTransparencyType(PngIhdrChunk header) {
        if (header.getColorType() == 3) {
            return 1;
        }
        return 0;
    }

    int getSwtTransparentPixel(PngIhdrChunk header) {
        switch (header.getColorType()) {
            case 0: {
                int gray = ((this.reference[8] & 0xFF) << 8) + (this.reference[9] & 0xFF);
                if (header.getBitDepth() > 8) {
                    return PNGFileFormat.compress16BitDepthTo8BitDepth(gray);
                }
                return gray & 0xFF;
            }
            case 2: {
                int red = (this.reference[8] & 0xFF) << 8 | this.reference[9] & 0xFF;
                int green = (this.reference[10] & 0xFF) << 8 | this.reference[11] & 0xFF;
                int blue = (this.reference[12] & 0xFF) << 8 | this.reference[13] & 0xFF;
                if (header.getBitDepth() > 8) {
                    red = PNGFileFormat.compress16BitDepthTo8BitDepth(red);
                    green = PNGFileFormat.compress16BitDepthTo8BitDepth(green);
                    blue = PNGFileFormat.compress16BitDepthTo8BitDepth(blue);
                }
                return red << 16 | green << 8 | blue;
            }
        }
        SWT.error(40);
        return -1;
    }

    byte[] getAlphaValues(PngIhdrChunk header, PngPlteChunk paletteChunk) {
        if (header.getColorType() != 3) {
            SWT.error(40);
        }
        byte[] alphas = new byte[paletteChunk.getPaletteSize()];
        int dataLength = this.getLength();
        int i = 0;
        i = 0;
        while (i < dataLength) {
            alphas[i] = this.reference[8 + i];
            ++i;
        }
        int j = i;
        while (j < alphas.length) {
            alphas[j] = -1;
            ++j;
        }
        return alphas;
    }
}

