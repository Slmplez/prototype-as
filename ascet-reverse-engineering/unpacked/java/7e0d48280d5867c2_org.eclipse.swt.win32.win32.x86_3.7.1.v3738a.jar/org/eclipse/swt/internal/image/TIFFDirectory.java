/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.LEDataOutputStream;
import org.eclipse.swt.internal.image.TIFFModifiedHuffmanCodec;
import org.eclipse.swt.internal.image.TIFFRandomFileAccess;

final class TIFFDirectory {
    TIFFRandomFileAccess file;
    boolean isLittleEndian;
    ImageLoader loader;
    int depth;
    int subfileType;
    int imageWidth;
    int imageLength;
    int[] bitsPerSample;
    int compression;
    int photometricInterpretation;
    int[] stripOffsets;
    int samplesPerPixel;
    int rowsPerStrip;
    int[] stripByteCounts;
    int t4Options;
    int colorMapOffset;
    ImageData image;
    LEDataOutputStream out;
    static final int NO_VALUE = -1;
    static final short TAG_NewSubfileType = 254;
    static final short TAG_SubfileType = 255;
    static final short TAG_ImageWidth = 256;
    static final short TAG_ImageLength = 257;
    static final short TAG_BitsPerSample = 258;
    static final short TAG_Compression = 259;
    static final short TAG_PhotometricInterpretation = 262;
    static final short TAG_FillOrder = 266;
    static final short TAG_ImageDescription = 270;
    static final short TAG_StripOffsets = 273;
    static final short TAG_Orientation = 274;
    static final short TAG_SamplesPerPixel = 277;
    static final short TAG_RowsPerStrip = 278;
    static final short TAG_StripByteCounts = 279;
    static final short TAG_XResolution = 282;
    static final short TAG_YResolution = 283;
    static final short TAG_PlanarConfiguration = 284;
    static final short TAG_T4Options = 292;
    static final short TAG_ResolutionUnit = 296;
    static final short TAG_Software = 305;
    static final short TAG_DateTime = 306;
    static final short TAG_ColorMap = 320;
    static final int TYPE_BYTE = 1;
    static final int TYPE_ASCII = 2;
    static final int TYPE_SHORT = 3;
    static final int TYPE_LONG = 4;
    static final int TYPE_RATIONAL = 5;
    static final int FILETYPE_REDUCEDIMAGE = 1;
    static final int FILETYPE_PAGE = 2;
    static final int FILETYPE_MASK = 4;
    static final int OFILETYPE_IMAGE = 1;
    static final int OFILETYPE_REDUCEDIMAGE = 2;
    static final int OFILETYPE_PAGE = 3;
    static final int COMPRESSION_NONE = 1;
    static final int COMPRESSION_CCITT_3_1 = 2;
    static final int COMPRESSION_PACKBITS = 32773;
    static final int IFD_ENTRY_SIZE = 12;

    public TIFFDirectory(TIFFRandomFileAccess file, boolean isLittleEndian, ImageLoader loader) {
        this.file = file;
        this.isLittleEndian = isLittleEndian;
        this.loader = loader;
    }

    public TIFFDirectory(ImageData image) {
        this.image = image;
    }

    int decodePackBits(byte[] src, byte[] dest, int offsetDest) {
        int destIndex = offsetDest;
        int srcIndex = 0;
        while (srcIndex < src.length) {
            byte n = src[srcIndex];
            if (n >= 0) {
                System.arraycopy(src, ++srcIndex, dest, destIndex, n + 1);
                srcIndex += n + 1;
                destIndex += n + 1;
                continue;
            }
            if (n >= -127) {
                byte value = src[++srcIndex];
                int j = 0;
                while (j < -n + 1) {
                    dest[destIndex++] = value;
                    ++j;
                }
                ++srcIndex;
                continue;
            }
            ++srcIndex;
        }
        return destIndex - offsetDest;
    }

    int getEntryValue(int type, byte[] buffer, int index) {
        return this.toInt(buffer, index + 8, type);
    }

    void getEntryValue(int type, byte[] buffer, int index, int[] values) throws IOException {
        int size;
        int start = index + 8;
        int offset = this.toInt(buffer, start, 4);
        switch (type) {
            case 3: {
                size = 2;
                break;
            }
            case 4: {
                size = 4;
                break;
            }
            case 5: {
                size = 8;
                break;
            }
            case 1: 
            case 2: {
                size = 1;
                break;
            }
            default: {
                SWT.error(42);
                return;
            }
        }
        if (values.length * size > 4) {
            buffer = new byte[values.length * size];
            this.file.seek(offset);
            this.file.read(buffer);
            start = 0;
        }
        int i = 0;
        while (i < values.length) {
            values[i] = this.toInt(buffer, start + i * size, type);
            ++i;
        }
    }

    void decodePixels(ImageData image) throws IOException {
        byte[] imageData = new byte[(this.imageWidth * this.depth + 7) / 8 * this.imageLength];
        image.data = imageData;
        int destIndex = 0;
        int length = this.stripOffsets.length;
        int i = 0;
        while (i < length) {
            byte[] data = new byte[this.stripByteCounts[i]];
            this.file.seek(this.stripOffsets[i]);
            this.file.read(data);
            if (this.compression == 1) {
                System.arraycopy(data, 0, imageData, destIndex, data.length);
                destIndex += data.length;
            } else if (this.compression == 32773) {
                destIndex += this.decodePackBits(data, imageData, destIndex);
            } else if (this.compression == 2 || this.compression == 3) {
                int n;
                TIFFModifiedHuffmanCodec codec = new TIFFModifiedHuffmanCodec();
                int nRows = this.rowsPerStrip;
                if (i == length - 1 && (n = this.imageLength % this.rowsPerStrip) != 0) {
                    nRows = n;
                }
                destIndex += codec.decode(data, imageData, destIndex, this.imageWidth, nRows);
            }
            if (this.loader.hasListeners()) {
                this.loader.notifyListeners(new ImageLoaderEvent(this.loader, image, i, i == length - 1));
            }
            ++i;
        }
    }

    PaletteData getColorMap() throws IOException {
        int numColors = 1 << this.bitsPerSample[0];
        int numBytes = 6 * numColors;
        byte[] buffer = new byte[numBytes];
        this.file.seek(this.colorMapOffset);
        this.file.read(buffer);
        RGB[] colors = new RGB[numColors];
        int offset = this.isLittleEndian ? 1 : 0;
        int startG = 2 * numColors;
        int startB = startG + 2 * numColors;
        int i = 0;
        while (i < numColors) {
            int r = buffer[offset] & 0xFF;
            int g = buffer[startG + offset] & 0xFF;
            int b = buffer[startB + offset] & 0xFF;
            colors[i] = new RGB(r, g, b);
            offset += 2;
            ++i;
        }
        return new PaletteData(colors);
    }

    PaletteData getGrayPalette() {
        int numColors = 1 << this.bitsPerSample[0];
        RGB[] rgbs = new RGB[numColors];
        int i = 0;
        while (i < numColors) {
            int value = i * 255 / (numColors - 1);
            if (this.photometricInterpretation == 0) {
                value = 255 - value;
            }
            rgbs[i] = new RGB(value, value, value);
            ++i;
        }
        return new PaletteData(rgbs);
    }

    PaletteData getRGBPalette(int bitsR, int bitsG, int bitsB) {
        int blueMask = 0;
        int i = 0;
        while (i < bitsB) {
            blueMask |= 1 << i;
            ++i;
        }
        int greenMask = 0;
        int i2 = bitsB;
        while (i2 < bitsB + bitsG) {
            greenMask |= 1 << i2;
            ++i2;
        }
        int redMask = 0;
        int i3 = bitsB + bitsG;
        while (i3 < bitsB + bitsG + bitsR) {
            redMask |= 1 << i3;
            ++i3;
        }
        return new PaletteData(redMask, greenMask, blueMask);
    }

    int formatStrips(int rowByteSize, int nbrRows, byte[] data, int maxStripByteSize, int offsetPostIFD, int extraBytes, int[][] strips) {
        int startOffset;
        int nbrRowsPerStrip;
        int n;
        if (rowByteSize > maxStripByteSize) {
            n = data.length / rowByteSize;
            nbrRowsPerStrip = 1;
        } else {
            int nbr = (data.length + maxStripByteSize - 1) / maxStripByteSize;
            nbrRowsPerStrip = nbrRows / nbr;
            n = (nbrRows + nbrRowsPerStrip - 1) / nbrRowsPerStrip;
        }
        int stripByteSize = rowByteSize * nbrRowsPerStrip;
        int[] offsets = new int[n];
        int[] counts = new int[n];
        int postIFDData = n == 1 ? 0 : n * 2 * 4;
        int offset = startOffset = offsetPostIFD + extraBytes + postIFDData;
        int i = 0;
        while (i < n) {
            offsets[i] = offset;
            counts[i] = stripByteSize;
            offset += stripByteSize;
            ++i;
        }
        int mod = data.length % stripByteSize;
        if (mod != 0) {
            counts[counts.length - 1] = mod;
        }
        strips[0] = offsets;
        strips[1] = counts;
        return nbrRowsPerStrip;
    }

    int[] formatColorMap(RGB[] rgbs) {
        int[] colorMap = new int[rgbs.length * 3];
        int offsetGreen = rgbs.length;
        int offsetBlue = rgbs.length * 2;
        int i = 0;
        while (i < rgbs.length) {
            colorMap[i] = rgbs[i].red << 8 | rgbs[i].red;
            colorMap[i + offsetGreen] = rgbs[i].green << 8 | rgbs[i].green;
            colorMap[i + offsetBlue] = rgbs[i].blue << 8 | rgbs[i].blue;
            ++i;
        }
        return colorMap;
    }

    void parseEntries(byte[] buffer) throws IOException {
        int offset = 0;
        while (offset < buffer.length) {
            int tag = this.toInt(buffer, offset, 3);
            int type = this.toInt(buffer, offset + 2, 3);
            int count = this.toInt(buffer, offset + 4, 4);
            switch (tag) {
                case 254: {
                    this.subfileType = this.getEntryValue(type, buffer, offset);
                    break;
                }
                case 255: {
                    int oldSubfileType = this.getEntryValue(type, buffer, offset);
                    this.subfileType = oldSubfileType == 2 ? 1 : (oldSubfileType == 3 ? 2 : 0);
                    break;
                }
                case 256: {
                    this.imageWidth = this.getEntryValue(type, buffer, offset);
                    break;
                }
                case 257: {
                    this.imageLength = this.getEntryValue(type, buffer, offset);
                    break;
                }
                case 258: {
                    if (type != 3) {
                        SWT.error(40);
                    }
                    this.bitsPerSample = new int[count];
                    this.getEntryValue(type, buffer, offset, this.bitsPerSample);
                    break;
                }
                case 259: {
                    this.compression = this.getEntryValue(type, buffer, offset);
                    break;
                }
                case 266: {
                    break;
                }
                case 270: {
                    break;
                }
                case 262: {
                    this.photometricInterpretation = this.getEntryValue(type, buffer, offset);
                    break;
                }
                case 273: {
                    if (type != 4 && type != 3) {
                        SWT.error(40);
                    }
                    this.stripOffsets = new int[count];
                    this.getEntryValue(type, buffer, offset, this.stripOffsets);
                    break;
                }
                case 274: {
                    break;
                }
                case 277: {
                    if (type != 3) {
                        SWT.error(40);
                    }
                    this.samplesPerPixel = this.getEntryValue(type, buffer, offset);
                    if (this.samplesPerPixel == 1 || this.samplesPerPixel == 3) break;
                    SWT.error(38);
                    break;
                }
                case 278: {
                    this.rowsPerStrip = this.getEntryValue(type, buffer, offset);
                    break;
                }
                case 279: {
                    this.stripByteCounts = new int[count];
                    this.getEntryValue(type, buffer, offset, this.stripByteCounts);
                    break;
                }
                case 282: {
                    break;
                }
                case 283: {
                    break;
                }
                case 284: {
                    break;
                }
                case 292: {
                    if (type != 4) {
                        SWT.error(40);
                    }
                    this.t4Options = this.getEntryValue(type, buffer, offset);
                    if ((this.t4Options & 1) != 1) break;
                    SWT.error(42);
                    break;
                }
                case 296: {
                    break;
                }
                case 305: {
                    break;
                }
                case 306: {
                    break;
                }
                case 320: {
                    if (type != 3) {
                        SWT.error(40);
                    }
                    this.colorMapOffset = this.getEntryValue(4, buffer, offset);
                }
            }
            offset += 12;
        }
    }

    public ImageData read(int[] nextIFDOffset) throws IOException {
        this.bitsPerSample = new int[]{1};
        this.colorMapOffset = -1;
        this.compression = 1;
        this.imageLength = -1;
        this.imageWidth = -1;
        this.photometricInterpretation = -1;
        this.rowsPerStrip = Integer.MAX_VALUE;
        this.samplesPerPixel = 1;
        this.stripByteCounts = null;
        this.stripOffsets = null;
        byte[] buffer = new byte[2];
        this.file.read(buffer);
        int numberEntries = this.toInt(buffer, 0, 3);
        buffer = new byte[12 * numberEntries];
        this.file.read(buffer);
        byte[] buffer2 = new byte[4];
        this.file.read(buffer2);
        nextIFDOffset[0] = this.toInt(buffer2, 0, 4);
        this.parseEntries(buffer);
        PaletteData palette = null;
        this.depth = 0;
        switch (this.photometricInterpretation) {
            case 0: 
            case 1: {
                palette = this.getGrayPalette();
                this.depth = this.bitsPerSample[0];
                break;
            }
            case 2: {
                if (this.colorMapOffset != -1) {
                    SWT.error(40);
                }
                palette = this.getRGBPalette(this.bitsPerSample[0], this.bitsPerSample[1], this.bitsPerSample[2]);
                this.depth = this.bitsPerSample[0] + this.bitsPerSample[1] + this.bitsPerSample[2];
                break;
            }
            case 3: {
                if (this.colorMapOffset == -1) {
                    SWT.error(40);
                }
                palette = this.getColorMap();
                this.depth = this.bitsPerSample[0];
                break;
            }
            default: {
                SWT.error(40);
            }
        }
        ImageData image = ImageData.internal_new(this.imageWidth, this.imageLength, this.depth, palette, 1, null, 0, null, null, -1, -1, 6, 0, 0, 0, 0);
        this.decodePixels(image);
        return image;
    }

    int toInt(byte[] buffer, int i, int type) {
        if (type == 4) {
            return this.isLittleEndian ? buffer[i] & 0xFF | (buffer[i + 1] & 0xFF) << 8 | (buffer[i + 2] & 0xFF) << 16 | (buffer[i + 3] & 0xFF) << 24 : buffer[i + 3] & 0xFF | (buffer[i + 2] & 0xFF) << 8 | (buffer[i + 1] & 0xFF) << 16 | (buffer[i] & 0xFF) << 24;
        }
        if (type == 3) {
            return this.isLittleEndian ? buffer[i] & 0xFF | (buffer[i + 1] & 0xFF) << 8 : buffer[i + 1] & 0xFF | (buffer[i] & 0xFF) << 8;
        }
        SWT.error(40);
        return -1;
    }

    void write(int photometricInterpretation) throws IOException {
        int i;
        boolean isRGB = photometricInterpretation == 2;
        boolean isColorMap = photometricInterpretation == 3;
        boolean isBiLevel = photometricInterpretation == 0 || photometricInterpretation == 1;
        int imageWidth = this.image.width;
        int imageLength = this.image.height;
        int rowByteSize = this.image.bytesPerLine;
        int numberEntries = isBiLevel ? 9 : 11;
        int lengthDirectory = 2 + 12 * numberEntries + 4;
        int nextOffset = 8 + lengthDirectory;
        int extraBytes = 16;
        int[] colorMap = null;
        if (isColorMap) {
            PaletteData palette = this.image.palette;
            RGB[] rgbs = palette.getRGBs();
            colorMap = this.formatColorMap(rgbs);
            if (colorMap.length != 3 << this.image.depth) {
                SWT.error(42);
            }
            extraBytes += colorMap.length * 2;
        }
        if (isRGB) {
            extraBytes += 6;
        }
        byte[] data = this.image.data;
        int[][] strips = new int[2][];
        int nbrRowsPerStrip = this.formatStrips(rowByteSize, imageLength, data, 8192, nextOffset, extraBytes, strips);
        int[] stripOffsets = strips[0];
        int[] stripByteCounts = strips[1];
        int bitsPerSampleOffset = -1;
        if (isRGB) {
            bitsPerSampleOffset = nextOffset;
            nextOffset += 6;
        }
        int stripOffsetsOffset = -1;
        int stripByteCountsOffset = -1;
        int colorMapOffset = -1;
        int cnt = stripOffsets.length;
        if (cnt > 1) {
            stripOffsetsOffset = nextOffset;
            stripByteCountsOffset = nextOffset += 4 * cnt;
            nextOffset += 4 * cnt;
        }
        int xResolutionOffset = nextOffset;
        int yResolutionOffset = nextOffset += 8;
        nextOffset += 8;
        if (isColorMap) {
            colorMapOffset = nextOffset;
            nextOffset += colorMap.length * 2;
        }
        this.writeHeader();
        this.out.writeShort(numberEntries);
        this.writeEntry((short)256, 4, 1, imageWidth);
        this.writeEntry((short)257, 4, 1, imageLength);
        if (isColorMap) {
            this.writeEntry((short)258, 3, 1, this.image.depth);
        }
        if (isRGB) {
            this.writeEntry((short)258, 3, 3, bitsPerSampleOffset);
        }
        this.writeEntry((short)259, 3, 1, 1);
        this.writeEntry((short)262, 3, 1, photometricInterpretation);
        this.writeEntry((short)273, 4, cnt, cnt > 1 ? stripOffsetsOffset : stripOffsets[0]);
        if (isRGB) {
            this.writeEntry((short)277, 3, 1, 3);
        }
        this.writeEntry((short)278, 4, 1, nbrRowsPerStrip);
        this.writeEntry((short)279, 4, cnt, cnt > 1 ? stripByteCountsOffset : stripByteCounts[0]);
        this.writeEntry((short)282, 5, 1, xResolutionOffset);
        this.writeEntry((short)283, 5, 1, yResolutionOffset);
        if (isColorMap) {
            this.writeEntry((short)320, 3, colorMap.length, colorMapOffset);
        }
        this.out.writeInt(0);
        if (isRGB) {
            i = 0;
            while (i < 3) {
                this.out.writeShort(8);
                ++i;
            }
        }
        if (cnt > 1) {
            i = 0;
            while (i < cnt) {
                this.out.writeInt(stripOffsets[i]);
                ++i;
            }
            i = 0;
            while (i < cnt) {
                this.out.writeInt(stripByteCounts[i]);
                ++i;
            }
        }
        i = 0;
        while (i < 2) {
            this.out.writeInt(300);
            this.out.writeInt(1);
            ++i;
        }
        if (isColorMap) {
            i = 0;
            while (i < colorMap.length) {
                this.out.writeShort(colorMap[i]);
                ++i;
            }
        }
        this.out.write(data);
    }

    void writeEntry(short tag, int type, int count, int value) throws IOException {
        this.out.writeShort(tag);
        this.out.writeShort(type);
        this.out.writeInt(count);
        this.out.writeInt(value);
    }

    void writeHeader() throws IOException {
        this.out.write(73);
        this.out.write(73);
        this.out.writeShort(42);
        this.out.writeInt(8);
    }

    void writeToStream(LEDataOutputStream byteStream) throws IOException {
        this.out = byteStream;
        int photometricInterpretation = -1;
        if (this.image.scanlinePad != 1) {
            SWT.error(42);
        }
        switch (this.image.depth) {
            case 1: {
                PaletteData palette = this.image.palette;
                RGB[] rgbs = palette.colors;
                if (palette.isDirect || rgbs == null || rgbs.length != 2) {
                    SWT.error(42);
                }
                RGB rgb0 = rgbs[0];
                RGB rgb1 = rgbs[1];
                if (rgb0.red != rgb0.green || rgb0.green != rgb0.blue || rgb1.red != rgb1.green || rgb1.green != rgb1.blue || (rgb0.red != 0 || rgb1.red != 255) && (rgb0.red != 255 || rgb1.red != 0)) {
                    SWT.error(42);
                }
                photometricInterpretation = this.image.palette.colors[0].red == 255 ? 0 : 1;
                break;
            }
            case 4: 
            case 8: {
                photometricInterpretation = 3;
                break;
            }
            case 24: {
                photometricInterpretation = 2;
                break;
            }
            default: {
                SWT.error(42);
            }
        }
        this.write(photometricInterpretation);
    }
}

