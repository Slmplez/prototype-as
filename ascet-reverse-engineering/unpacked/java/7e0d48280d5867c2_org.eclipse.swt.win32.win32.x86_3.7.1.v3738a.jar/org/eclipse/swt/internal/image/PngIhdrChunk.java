/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngFileReadState;

class PngIhdrChunk
extends PngChunk {
    static final int IHDR_DATA_LENGTH = 13;
    static final int WIDTH_DATA_OFFSET = 8;
    static final int HEIGHT_DATA_OFFSET = 12;
    static final int BIT_DEPTH_OFFSET = 16;
    static final int COLOR_TYPE_OFFSET = 17;
    static final int COMPRESSION_METHOD_OFFSET = 18;
    static final int FILTER_METHOD_OFFSET = 19;
    static final int INTERLACE_METHOD_OFFSET = 20;
    static final byte COLOR_TYPE_GRAYSCALE = 0;
    static final byte COLOR_TYPE_RGB = 2;
    static final byte COLOR_TYPE_PALETTE = 3;
    static final byte COLOR_TYPE_GRAYSCALE_WITH_ALPHA = 4;
    static final byte COLOR_TYPE_RGB_WITH_ALPHA = 6;
    static final int INTERLACE_METHOD_NONE = 0;
    static final int INTERLACE_METHOD_ADAM7 = 1;
    static final int FILTER_NONE = 0;
    static final int FILTER_SUB = 1;
    static final int FILTER_UP = 2;
    static final int FILTER_AVERAGE = 3;
    static final int FILTER_PAETH = 4;
    static final byte[] ValidBitDepths = new byte[]{1, 2, 4, 8, 16};
    static final byte[] ValidColorTypes;
    int width;
    int height;
    byte bitDepth;
    byte colorType;
    byte compressionMethod;
    byte filterMethod;
    byte interlaceMethod;

    static {
        byte[] byArray = new byte[5];
        byArray[1] = 2;
        byArray[2] = 3;
        byArray[3] = 4;
        byArray[4] = 6;
        ValidColorTypes = byArray;
    }

    PngIhdrChunk(int width, int height, byte bitDepth, byte colorType, byte compressionMethod, byte filterMethod, byte interlaceMethod) {
        super(13);
        this.setType(TYPE_IHDR);
        this.setWidth(width);
        this.setHeight(height);
        this.setBitDepth(bitDepth);
        this.setColorType(colorType);
        this.setCompressionMethod(compressionMethod);
        this.setFilterMethod(filterMethod);
        this.setInterlaceMethod(interlaceMethod);
        this.setCRC(this.computeCRC());
    }

    PngIhdrChunk(byte[] reference) {
        super(reference);
        if (reference.length <= 13) {
            SWT.error(40);
        }
        this.width = this.getInt32(8);
        this.height = this.getInt32(12);
        this.bitDepth = reference[16];
        this.colorType = reference[17];
        this.compressionMethod = reference[18];
        this.filterMethod = reference[19];
        this.interlaceMethod = reference[20];
    }

    int getChunkType() {
        return 0;
    }

    int getWidth() {
        return this.width;
    }

    void setWidth(int value) {
        this.setInt32(8, value);
        this.width = value;
    }

    int getHeight() {
        return this.height;
    }

    void setHeight(int value) {
        this.setInt32(12, value);
        this.height = value;
    }

    byte getBitDepth() {
        return this.bitDepth;
    }

    void setBitDepth(byte value) {
        this.reference[16] = value;
        this.bitDepth = value;
    }

    byte getColorType() {
        return this.colorType;
    }

    void setColorType(byte value) {
        this.reference[17] = value;
        this.colorType = value;
    }

    byte getCompressionMethod() {
        return this.compressionMethod;
    }

    void setCompressionMethod(byte value) {
        this.reference[18] = value;
        this.compressionMethod = value;
    }

    byte getFilterMethod() {
        return this.filterMethod;
    }

    void setFilterMethod(byte value) {
        this.reference[19] = value;
        this.filterMethod = value;
    }

    byte getInterlaceMethod() {
        return this.interlaceMethod;
    }

    void setInterlaceMethod(byte value) {
        this.reference[20] = value;
        this.interlaceMethod = value;
    }

    void validate(PngFileReadState readState, PngIhdrChunk headerChunk) {
        if (readState.readIHDR || readState.readPLTE || readState.readIDAT || readState.readIEND) {
            SWT.error(40);
        } else {
            readState.readIHDR = true;
        }
        super.validate(readState, headerChunk);
        if (this.length != 13) {
            SWT.error(40);
        }
        if (this.compressionMethod != 0) {
            SWT.error(40);
        }
        if (this.interlaceMethod != 0 && this.interlaceMethod != 1) {
            SWT.error(40);
        }
        boolean colorTypeIsValid = false;
        int i = 0;
        while (i < ValidColorTypes.length) {
            if (ValidColorTypes[i] == this.colorType) {
                colorTypeIsValid = true;
                break;
            }
            ++i;
        }
        if (!colorTypeIsValid) {
            SWT.error(40);
        }
        boolean bitDepthIsValid = false;
        int i2 = 0;
        while (i2 < ValidBitDepths.length) {
            if (ValidBitDepths[i2] == this.bitDepth) {
                bitDepthIsValid = true;
                break;
            }
            ++i2;
        }
        if (!bitDepthIsValid) {
            SWT.error(40);
        }
        if ((this.colorType == 2 || this.colorType == 6 || this.colorType == 4) && this.bitDepth < 8) {
            SWT.error(40);
        }
        if (this.colorType == 3 && this.bitDepth > 8) {
            SWT.error(40);
        }
    }

    String getColorTypeString() {
        switch (this.colorType) {
            case 0: {
                return "Grayscale";
            }
            case 2: {
                return "RGB";
            }
            case 3: {
                return "Palette";
            }
            case 4: {
                return "Grayscale with Alpha";
            }
            case 6: {
                return "RGB with Alpha";
            }
        }
        return "Unknown - " + this.colorType;
    }

    String getFilterMethodString() {
        switch (this.filterMethod) {
            case 0: {
                return "None";
            }
            case 1: {
                return "Sub";
            }
            case 2: {
                return "Up";
            }
            case 3: {
                return "Average";
            }
            case 4: {
                return "Paeth";
            }
        }
        return "Unknown";
    }

    String getInterlaceMethodString() {
        switch (this.interlaceMethod) {
            case 0: {
                return "Not Interlaced";
            }
            case 1: {
                return "Interlaced - ADAM7";
            }
        }
        return "Unknown";
    }

    void contributeToString(StringBuffer buffer) {
        buffer.append("\n\tWidth: ");
        buffer.append(this.width);
        buffer.append("\n\tHeight: ");
        buffer.append(this.height);
        buffer.append("\n\tBit Depth: ");
        buffer.append(this.bitDepth);
        buffer.append("\n\tColor Type: ");
        buffer.append(this.getColorTypeString());
        buffer.append("\n\tCompression Method: ");
        buffer.append(this.compressionMethod);
        buffer.append("\n\tFilter Method: ");
        buffer.append(this.getFilterMethodString());
        buffer.append("\n\tInterlace Method: ");
        buffer.append(this.getInterlaceMethodString());
    }

    boolean getMustHavePalette() {
        return this.colorType == 3;
    }

    boolean getCanHavePalette() {
        return this.colorType != 0 && this.colorType != 4;
    }

    int getBitsPerPixel() {
        switch (this.colorType) {
            case 6: {
                return 4 * this.bitDepth;
            }
            case 2: {
                return 3 * this.bitDepth;
            }
            case 4: {
                return 2 * this.bitDepth;
            }
            case 0: 
            case 3: {
                return this.bitDepth;
            }
        }
        SWT.error(40);
        return 0;
    }

    int getSwtBitsPerPixel() {
        switch (this.colorType) {
            case 2: 
            case 4: 
            case 6: {
                return 24;
            }
            case 0: 
            case 3: {
                return Math.min(this.bitDepth, 8);
            }
        }
        SWT.error(40);
        return 0;
    }

    int getFilterByteOffset() {
        if (this.bitDepth < 8) {
            return 1;
        }
        return this.getBitsPerPixel() / 8;
    }

    boolean usesDirectColor() {
        switch (this.colorType) {
            case 0: 
            case 2: 
            case 4: 
            case 6: {
                return true;
            }
        }
        return false;
    }

    PaletteData createGrayscalePalette() {
        int depth = Math.min(this.bitDepth, 8);
        int max = (1 << depth) - 1;
        int delta = 255 / max;
        int gray = 0;
        RGB[] rgbs = new RGB[max + 1];
        int i = 0;
        while (i <= max) {
            rgbs[i] = new RGB(gray, gray, gray);
            gray += delta;
            ++i;
        }
        return new PaletteData(rgbs);
    }

    PaletteData getPaletteData() {
        switch (this.colorType) {
            case 0: {
                return this.createGrayscalePalette();
            }
            case 2: 
            case 4: 
            case 6: {
                return new PaletteData(0xFF0000, 65280, 255);
            }
        }
        return null;
    }
}

