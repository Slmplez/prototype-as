/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import java.io.InputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageDataLoader;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.CloneableCompatibility;

public final class ImageData
implements CloneableCompatibility {
    public int width;
    public int height;
    public int depth;
    public int scanlinePad;
    public int bytesPerLine;
    public byte[] data;
    public PaletteData palette;
    public int transparentPixel;
    public byte[] maskData;
    public int maskPad;
    public byte[] alphaData;
    public int alpha;
    public int type;
    public int x;
    public int y;
    public int disposalMethod;
    public int delayTime;
    static final byte[][] ANY_TO_EIGHT = new byte[9][];
    static final byte[] ONE_TO_ONE_MAPPING;
    static final int[][] DITHER_MATRIX;
    static final int BLIT_SRC = 1;
    static final int BLIT_ALPHA = 2;
    static final int BLIT_DITHER = 4;
    static final int ALPHA_OPAQUE = 255;
    static final int ALPHA_TRANSPARENT = 0;
    static final int ALPHA_CHANNEL_SEPARATE = -1;
    static final int ALPHA_CHANNEL_SOURCE = -2;
    static final int ALPHA_MASK_UNPACKED = -3;
    static final int ALPHA_MASK_PACKED = -4;
    static final int ALPHA_MASK_INDEX = -5;
    static final int ALPHA_MASK_RGB = -6;
    static final int LSB_FIRST = 0;
    static final int MSB_FIRST = 1;
    private static final int TYPE_GENERIC_8 = 0;
    private static final int TYPE_GENERIC_16_MSB = 1;
    private static final int TYPE_GENERIC_16_LSB = 2;
    private static final int TYPE_GENERIC_24 = 3;
    private static final int TYPE_GENERIC_32_MSB = 4;
    private static final int TYPE_GENERIC_32_LSB = 5;
    private static final int TYPE_INDEX_8 = 6;
    private static final int TYPE_INDEX_4 = 7;
    private static final int TYPE_INDEX_2 = 8;
    private static final int TYPE_INDEX_1_MSB = 9;
    private static final int TYPE_INDEX_1_LSB = 10;

    static {
        int b = 0;
        while (b < 9) {
            ImageData.ANY_TO_EIGHT[b] = new byte[1 << b];
            byte[] data = ImageData.ANY_TO_EIGHT[b];
            if (b != 0) {
                int inc = 0;
                int bit = 65536;
                while ((bit >>= b) != 0) {
                    inc |= bit;
                }
                int v = 0;
                int p = 0;
                while (v < 65536) {
                    data[p++] = (byte)(v >> 8);
                    v += inc;
                }
            }
            ++b;
        }
        ONE_TO_ONE_MAPPING = ANY_TO_EIGHT[8];
        int[][] nArrayArray = new int[8][];
        nArrayArray[0] = new int[]{0xFC0000, 0x7C0000, 0xDC0000, 0x5C0000, 0xF40000, 0x740000, 0xD40000, 0x540000};
        nArrayArray[1] = new int[]{0x3C0000, 0xBC0000, 0x1C0000, 0x9C0000, 0x340000, 0xB40000, 0x140000, 0x940000};
        nArrayArray[2] = new int[]{0xCC0000, 0x4C0000, 0xEC0000, 0x6C0000, 0xC40000, 0x440000, 0xE40000, 0x640000};
        nArrayArray[3] = new int[]{786432, 0x8C0000, 0x2C0000, 0xAC0000, 262144, 0x840000, 0x240000, 0xA40000};
        nArrayArray[4] = new int[]{0xF00000, 0x700000, 0xD00000, 0x500000, 0xF80000, 0x780000, 0xD80000, 0x580000};
        nArrayArray[5] = new int[]{0x300000, 0xB00000, 0x100000, 0x900000, 0x380000, 0xB80000, 0x180000, 0x980000};
        nArrayArray[6] = new int[]{0xC00000, 0x400000, 0xE00000, 0x600000, 0xC80000, 0x480000, 0xE80000, 0x680000};
        int[] nArray = new int[8];
        nArray[1] = 0x800000;
        nArray[2] = 0x200000;
        nArray[3] = 0xA00000;
        nArray[4] = 524288;
        nArray[5] = 0x880000;
        nArray[6] = 0x280000;
        nArray[7] = 0xA80000;
        nArrayArray[7] = nArray;
        DITHER_MATRIX = nArrayArray;
    }

    public ImageData(int width, int height, int depth, PaletteData palette) {
        this(width, height, depth, palette, 4, null, 0, null, null, -1, -1, -1, 0, 0, 0, 0);
    }

    public ImageData(int width, int height, int depth, PaletteData palette, int scanlinePad, byte[] data) {
        this(width, height, depth, palette, scanlinePad, ImageData.checkData(data), 0, null, null, -1, -1, -1, 0, 0, 0, 0);
    }

    public ImageData(InputStream stream) {
        ImageData[] data = ImageDataLoader.load(stream);
        if (data.length < 1) {
            SWT.error(40);
        }
        ImageData i = data[0];
        this.setAllFields(i.width, i.height, i.depth, i.scanlinePad, i.bytesPerLine, i.data, i.palette, i.transparentPixel, i.maskData, i.maskPad, i.alphaData, i.alpha, i.type, i.x, i.y, i.disposalMethod, i.delayTime);
    }

    public ImageData(String filename) {
        ImageData[] data = ImageDataLoader.load(filename);
        if (data.length < 1) {
            SWT.error(40);
        }
        ImageData i = data[0];
        this.setAllFields(i.width, i.height, i.depth, i.scanlinePad, i.bytesPerLine, i.data, i.palette, i.transparentPixel, i.maskData, i.maskPad, i.alphaData, i.alpha, i.type, i.x, i.y, i.disposalMethod, i.delayTime);
    }

    ImageData() {
    }

    ImageData(int width, int height, int depth, PaletteData palette, int scanlinePad, byte[] data, int maskPad, byte[] maskData, byte[] alphaData, int alpha, int transparentPixel, int type, int x, int y, int disposalMethod, int delayTime) {
        int minBytesPerLine;
        if (palette == null) {
            SWT.error(4);
        }
        if (depth != 1 && depth != 2 && depth != 4 && depth != 8 && depth != 16 && depth != 24 && depth != 32) {
            SWT.error(5);
        }
        if (width <= 0 || height <= 0) {
            SWT.error(5);
        }
        if (scanlinePad == 0) {
            SWT.error(7);
        }
        int bytesPerLine = ((width * depth + 7) / 8 + (scanlinePad - 1)) / scanlinePad * scanlinePad;
        int n = minBytesPerLine = type == 5 ? ((width + 7) / 8 + 3) / 4 * 4 : bytesPerLine;
        if (data != null && data.length < minBytesPerLine * height) {
            SWT.error(5);
        }
        this.setAllFields(width, height, depth, scanlinePad, bytesPerLine, data != null ? data : new byte[bytesPerLine * height], palette, transparentPixel, maskData, maskPad, alphaData, alpha, type, x, y, disposalMethod, delayTime);
    }

    void setAllFields(int width, int height, int depth, int scanlinePad, int bytesPerLine, byte[] data, PaletteData palette, int transparentPixel, byte[] maskData, int maskPad, byte[] alphaData, int alpha, int type, int x, int y, int disposalMethod, int delayTime) {
        this.width = width;
        this.height = height;
        this.depth = depth;
        this.scanlinePad = scanlinePad;
        this.bytesPerLine = bytesPerLine;
        this.data = data;
        this.palette = palette;
        this.transparentPixel = transparentPixel;
        this.maskData = maskData;
        this.maskPad = maskPad;
        this.alphaData = alphaData;
        this.alpha = alpha;
        this.type = type;
        this.x = x;
        this.y = y;
        this.disposalMethod = disposalMethod;
        this.delayTime = delayTime;
    }

    public static ImageData internal_new(int width, int height, int depth, PaletteData palette, int scanlinePad, byte[] data, int maskPad, byte[] maskData, byte[] alphaData, int alpha, int transparentPixel, int type, int x, int y, int disposalMethod, int delayTime) {
        return new ImageData(width, height, depth, palette, scanlinePad, data, maskPad, maskData, alphaData, alpha, transparentPixel, type, x, y, disposalMethod, delayTime);
    }

    ImageData colorMaskImage(int pixel) {
        ImageData mask = new ImageData(this.width, this.height, 1, ImageData.bwPalette(), 2, null, 0, null, null, -1, -1, -1, 0, 0, 0, 0);
        int[] row = new int[this.width];
        int y = 0;
        while (y < this.height) {
            this.getPixels(0, y, this.width, row, 0);
            int i = 0;
            while (i < this.width) {
                row[i] = pixel != -1 && row[i] == pixel ? 0 : 1;
                ++i;
            }
            mask.setPixels(0, y, this.width, row, 0);
            ++y;
        }
        return mask;
    }

    static byte[] checkData(byte[] data) {
        if (data == null) {
            SWT.error(4);
        }
        return data;
    }

    public Object clone() {
        byte[] cloneData = new byte[this.data.length];
        System.arraycopy(this.data, 0, cloneData, 0, this.data.length);
        byte[] cloneMaskData = null;
        if (this.maskData != null) {
            cloneMaskData = new byte[this.maskData.length];
            System.arraycopy(this.maskData, 0, cloneMaskData, 0, this.maskData.length);
        }
        byte[] cloneAlphaData = null;
        if (this.alphaData != null) {
            cloneAlphaData = new byte[this.alphaData.length];
            System.arraycopy(this.alphaData, 0, cloneAlphaData, 0, this.alphaData.length);
        }
        return new ImageData(this.width, this.height, this.depth, this.palette, this.scanlinePad, cloneData, this.maskPad, cloneMaskData, cloneAlphaData, this.alpha, this.transparentPixel, this.type, this.x, this.y, this.disposalMethod, this.delayTime);
    }

    public int getAlpha(int x, int y) {
        if (x >= this.width || y >= this.height || x < 0 || y < 0) {
            SWT.error(5);
        }
        if (this.alphaData == null) {
            return 255;
        }
        return this.alphaData[y * this.width + x] & 0xFF;
    }

    public void getAlphas(int x, int y, int getWidth, byte[] alphas, int startIndex) {
        if (alphas == null) {
            SWT.error(4);
        }
        if (getWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
            SWT.error(5);
        }
        if (getWidth == 0) {
            return;
        }
        if (this.alphaData == null) {
            int endIndex = startIndex + getWidth;
            int i = startIndex;
            while (i < endIndex) {
                alphas[i] = -1;
                ++i;
            }
            return;
        }
        System.arraycopy(this.alphaData, y * this.width + x, alphas, startIndex, getWidth);
    }

    public int getPixel(int x, int y) {
        if (x >= this.width || y >= this.height || x < 0 || y < 0) {
            SWT.error(5);
        }
        switch (this.depth) {
            case 32: {
                int index = y * this.bytesPerLine + x * 4;
                return ((this.data[index] & 0xFF) << 24) + ((this.data[index + 1] & 0xFF) << 16) + ((this.data[index + 2] & 0xFF) << 8) + (this.data[index + 3] & 0xFF);
            }
            case 24: {
                int index = y * this.bytesPerLine + x * 3;
                return ((this.data[index] & 0xFF) << 16) + ((this.data[index + 1] & 0xFF) << 8) + (this.data[index + 2] & 0xFF);
            }
            case 16: {
                int index = y * this.bytesPerLine + x * 2;
                return ((this.data[index + 1] & 0xFF) << 8) + (this.data[index] & 0xFF);
            }
            case 8: {
                int index = y * this.bytesPerLine + x;
                return this.data[index] & 0xFF;
            }
            case 4: {
                int index = y * this.bytesPerLine + (x >> 1);
                int theByte = this.data[index] & 0xFF;
                if ((x & 1) == 0) {
                    return theByte >> 4;
                }
                return theByte & 0xF;
            }
            case 2: {
                int index = y * this.bytesPerLine + (x >> 2);
                int theByte = this.data[index] & 0xFF;
                int offset = 3 - x % 4;
                int mask = 3 << offset * 2;
                return (theByte & mask) >> offset * 2;
            }
            case 1: {
                int index = y * this.bytesPerLine + (x >> 3);
                int theByte = this.data[index] & 0xFF;
                int mask = 1 << 7 - (x & 7);
                if ((theByte & mask) == 0) {
                    return 0;
                }
                return 1;
            }
        }
        SWT.error(38);
        return 0;
    }

    public void getPixels(int x, int y, int getWidth, byte[] pixels, int startIndex) {
        if (pixels == null) {
            SWT.error(4);
        }
        if (getWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
            SWT.error(5);
        }
        if (getWidth == 0) {
            return;
        }
        int mask = 0;
        int n = getWidth;
        int i = startIndex;
        int srcX = x;
        int srcY = y;
        switch (this.depth) {
            case 8: {
                int index = y * this.bytesPerLine + x;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = this.data[index];
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                    ++j;
                }
                return;
            }
            case 4: {
                int theByte;
                int index = y * this.bytesPerLine + (x >> 1);
                if ((x & 1) == 1) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = (byte)(theByte & 0xF);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                }
                while (n > 1) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = (byte)(theByte >> 4);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    pixels[i] = (byte)(theByte & 0xF);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    ++index;
                }
                if (n > 0) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = (byte)(theByte >> 4);
                }
                return;
            }
            case 2: {
                int index = y * this.bytesPerLine + (x >> 2);
                int theByte = this.data[index] & 0xFF;
                while (n > 0) {
                    int offset = 3 - srcX % 4;
                    mask = 3 << offset * 2;
                    pixels[i] = (byte)((theByte & mask) >> offset * 2);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        if (n > 0) {
                            theByte = this.data[index] & 0xFF;
                        }
                        srcX = 0;
                        continue;
                    }
                    if (offset != 0) continue;
                    theByte = this.data[++index] & 0xFF;
                }
                return;
            }
            case 1: {
                int index = y * this.bytesPerLine + (x >> 3);
                int theByte = this.data[index] & 0xFF;
                while (n > 0) {
                    mask = 1 << 7 - (srcX & 7);
                    pixels[i] = (theByte & mask) == 0 ? (byte)0 : 1;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        if (n > 0) {
                            theByte = this.data[index] & 0xFF;
                        }
                        srcX = 0;
                        continue;
                    }
                    if (mask != 1) continue;
                    ++index;
                    if (n <= 0) continue;
                    theByte = this.data[index] & 0xFF;
                }
                return;
            }
        }
        SWT.error(38);
    }

    public void getPixels(int x, int y, int getWidth, int[] pixels, int startIndex) {
        if (pixels == null) {
            SWT.error(4);
        }
        if (getWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
            SWT.error(5);
        }
        if (getWidth == 0) {
            return;
        }
        int n = getWidth;
        int i = startIndex;
        int srcX = x;
        int srcY = y;
        switch (this.depth) {
            case 32: {
                int index = y * this.bytesPerLine + x * 4;
                i = startIndex;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = (this.data[index] & 0xFF) << 24 | (this.data[index + 1] & 0xFF) << 16 | (this.data[index + 2] & 0xFF) << 8 | this.data[index + 3] & 0xFF;
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 4;
                    }
                    ++j;
                }
                return;
            }
            case 24: {
                int index = y * this.bytesPerLine + x * 3;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = (this.data[index] & 0xFF) << 16 | (this.data[index + 1] & 0xFF) << 8 | this.data[index + 2] & 0xFF;
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 3;
                    }
                    ++j;
                }
                return;
            }
            case 16: {
                int index = y * this.bytesPerLine + x * 2;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = ((this.data[index + 1] & 0xFF) << 8) + (this.data[index] & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 2;
                    }
                    ++j;
                }
                return;
            }
            case 8: {
                int index = y * this.bytesPerLine + x;
                int j = 0;
                while (j < getWidth) {
                    pixels[i] = this.data[index] & 0xFF;
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                    ++j;
                }
                return;
            }
            case 4: {
                int theByte;
                int index = y * this.bytesPerLine + (x >> 1);
                if ((x & 1) == 1) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = theByte & 0xF;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                }
                while (n > 1) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = theByte >> 4;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    pixels[i] = theByte & 0xF;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    ++index;
                }
                if (n > 0) {
                    theByte = this.data[index] & 0xFF;
                    pixels[i] = theByte >> 4;
                }
                return;
            }
            case 2: {
                int index = y * this.bytesPerLine + (x >> 2);
                int theByte = this.data[index] & 0xFF;
                while (n > 0) {
                    int offset = 3 - srcX % 4;
                    int mask = 3 << offset * 2;
                    pixels[i] = (byte)((theByte & mask) >> offset * 2);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        if (n > 0) {
                            theByte = this.data[index] & 0xFF;
                        }
                        srcX = 0;
                        continue;
                    }
                    if (offset != 0) continue;
                    theByte = this.data[++index] & 0xFF;
                }
                return;
            }
            case 1: {
                int index = y * this.bytesPerLine + (x >> 3);
                int theByte = this.data[index] & 0xFF;
                while (n > 0) {
                    int mask = 1 << 7 - (srcX & 7);
                    pixels[i] = (theByte & mask) == 0 ? 0 : 1;
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        if (n > 0) {
                            theByte = this.data[index] & 0xFF;
                        }
                        srcX = 0;
                        continue;
                    }
                    if (mask != 1) continue;
                    ++index;
                    if (n <= 0) continue;
                    theByte = this.data[index] & 0xFF;
                }
                return;
            }
        }
        SWT.error(38);
    }

    public RGB[] getRGBs() {
        return this.palette.getRGBs();
    }

    public ImageData getTransparencyMask() {
        if (this.getTransparencyType() == 2) {
            return new ImageData(this.width, this.height, 1, ImageData.bwPalette(), this.maskPad, this.maskData);
        }
        return this.colorMaskImage(this.transparentPixel);
    }

    public int getTransparencyType() {
        if (this.maskData != null) {
            return 2;
        }
        if (this.transparentPixel != -1) {
            return 4;
        }
        if (this.alphaData != null) {
            return 1;
        }
        return 0;
    }

    int getByteOrder() {
        return this.depth != 16 ? 1 : 0;
    }

    public ImageData scaledTo(int width, int height) {
        boolean flipY;
        boolean flipX;
        boolean bl = flipX = width < 0;
        if (flipX) {
            width = -width;
        }
        boolean bl2 = flipY = height < 0;
        if (flipY) {
            height = -height;
        }
        ImageData dest = new ImageData(width, height, this.depth, this.palette, this.scanlinePad, null, 0, null, null, -1, this.transparentPixel, this.type, this.x, this.y, this.disposalMethod, this.delayTime);
        if (this.palette.isDirect) {
            ImageData.blit(1, this.data, this.depth, this.bytesPerLine, this.getByteOrder(), 0, 0, this.width, this.height, 0, 0, 0, 255, null, 0, 0, 0, dest.data, dest.depth, dest.bytesPerLine, dest.getByteOrder(), 0, 0, dest.width, dest.height, 0, 0, 0, flipX, flipY);
        } else {
            ImageData.blit(1, this.data, this.depth, this.bytesPerLine, this.getByteOrder(), 0, 0, this.width, this.height, null, null, null, 255, null, 0, 0, 0, dest.data, dest.depth, dest.bytesPerLine, dest.getByteOrder(), 0, 0, dest.width, dest.height, null, null, null, flipX, flipY);
        }
        if (this.maskData != null) {
            dest.maskPad = this.maskPad;
            int destBpl = (dest.width + 7) / 8;
            destBpl = (destBpl + (dest.maskPad - 1)) / dest.maskPad * dest.maskPad;
            dest.maskData = new byte[destBpl * dest.height];
            int srcBpl = (this.width + 7) / 8;
            srcBpl = (srcBpl + (this.maskPad - 1)) / this.maskPad * this.maskPad;
            ImageData.blit(1, this.maskData, 1, srcBpl, 1, 0, 0, this.width, this.height, null, null, null, 255, null, 0, 0, 0, dest.maskData, 1, destBpl, 1, 0, 0, dest.width, dest.height, null, null, null, flipX, flipY);
        } else if (this.alpha != -1) {
            dest.alpha = this.alpha;
        } else if (this.alphaData != null) {
            dest.alphaData = new byte[dest.width * dest.height];
            ImageData.blit(1, this.alphaData, 8, this.width, 1, 0, 0, this.width, this.height, null, null, null, 255, null, 0, 0, 0, dest.alphaData, 8, dest.width, 1, 0, 0, dest.width, dest.height, null, null, null, flipX, flipY);
        }
        return dest;
    }

    public void setAlpha(int x, int y, int alpha) {
        if (x >= this.width || y >= this.height || x < 0 || y < 0 || alpha < 0 || alpha > 255) {
            SWT.error(5);
        }
        if (this.alphaData == null) {
            this.alphaData = new byte[this.width * this.height];
        }
        this.alphaData[y * this.width + x] = (byte)alpha;
    }

    public void setAlphas(int x, int y, int putWidth, byte[] alphas, int startIndex) {
        if (alphas == null) {
            SWT.error(4);
        }
        if (putWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
            SWT.error(5);
        }
        if (putWidth == 0) {
            return;
        }
        if (this.alphaData == null) {
            this.alphaData = new byte[this.width * this.height];
        }
        System.arraycopy(alphas, startIndex, this.alphaData, y * this.width + x, putWidth);
    }

    public void setPixel(int x, int y, int pixelValue) {
        if (x >= this.width || y >= this.height || x < 0 || y < 0) {
            SWT.error(5);
        }
        switch (this.depth) {
            case 32: {
                int index = y * this.bytesPerLine + x * 4;
                this.data[index] = (byte)(pixelValue >> 24 & 0xFF);
                this.data[index + 1] = (byte)(pixelValue >> 16 & 0xFF);
                this.data[index + 2] = (byte)(pixelValue >> 8 & 0xFF);
                this.data[index + 3] = (byte)(pixelValue & 0xFF);
                return;
            }
            case 24: {
                int index = y * this.bytesPerLine + x * 3;
                this.data[index] = (byte)(pixelValue >> 16 & 0xFF);
                this.data[index + 1] = (byte)(pixelValue >> 8 & 0xFF);
                this.data[index + 2] = (byte)(pixelValue & 0xFF);
                return;
            }
            case 16: {
                int index = y * this.bytesPerLine + x * 2;
                this.data[index + 1] = (byte)(pixelValue >> 8 & 0xFF);
                this.data[index] = (byte)(pixelValue & 0xFF);
                return;
            }
            case 8: {
                int index = y * this.bytesPerLine + x;
                this.data[index] = (byte)(pixelValue & 0xFF);
                return;
            }
            case 4: {
                int index = y * this.bytesPerLine + (x >> 1);
                this.data[index] = (x & 1) == 0 ? (byte)(this.data[index] & 0xF | (pixelValue & 0xF) << 4) : (byte)(this.data[index] & 0xF0 | pixelValue & 0xF);
                return;
            }
            case 2: {
                int index = y * this.bytesPerLine + (x >> 2);
                byte theByte = this.data[index];
                int offset = 3 - x % 4;
                int mask = 0xFF ^ 3 << offset * 2;
                this.data[index] = (byte)(this.data[index] & mask | pixelValue << offset * 2);
                return;
            }
            case 1: {
                int index = y * this.bytesPerLine + (x >> 3);
                byte theByte = this.data[index];
                int mask = 1 << 7 - (x & 7);
                this.data[index] = (pixelValue & 1) == 1 ? (byte)(theByte | mask) : (byte)(theByte & ~mask);
                return;
            }
        }
        SWT.error(38);
    }

    public void setPixels(int x, int y, int putWidth, byte[] pixels, int startIndex) {
        if (pixels == null) {
            SWT.error(4);
        }
        if (putWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
            SWT.error(5);
        }
        if (putWidth == 0) {
            return;
        }
        int n = putWidth;
        int i = startIndex;
        int srcX = x;
        int srcY = y;
        switch (this.depth) {
            case 8: {
                int index = y * this.bytesPerLine + x;
                int j = 0;
                while (j < putWidth) {
                    this.data[index] = (byte)(pixels[i] & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                    ++j;
                }
                return;
            }
            case 4: {
                int index = y * this.bytesPerLine + (x >> 1);
                boolean high = (x & 1) == 0;
                while (n > 0) {
                    int theByte = pixels[i] & 0xF;
                    this.data[index] = high ? (byte)(this.data[index] & 0xF | theByte << 4) : (byte)(this.data[index] & 0xF0 | theByte);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        high = true;
                        srcX = 0;
                        continue;
                    }
                    if (!high) {
                        ++index;
                    }
                    boolean bl = high = !high;
                }
                return;
            }
            case 2: {
                byte[] masks = new byte[]{-4, -13, -49, 63};
                int index = y * this.bytesPerLine + (x >> 2);
                int offset = 3 - x % 4;
                while (n > 0) {
                    int theByte = pixels[i] & 3;
                    this.data[index] = (byte)(this.data[index] & masks[offset] | theByte << offset * 2);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        offset = 0;
                        srcX = 0;
                        continue;
                    }
                    if (offset == 0) {
                        ++index;
                        offset = 3;
                        continue;
                    }
                    --offset;
                }
                return;
            }
            case 1: {
                int index = y * this.bytesPerLine + (x >> 3);
                while (n > 0) {
                    int mask = 1 << 7 - (srcX & 7);
                    this.data[index] = (pixels[i] & 1) == 1 ? (byte)(this.data[index] & 0xFF | mask) : (byte)(this.data[index] & 0xFF & ~mask);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    if (mask != 1) continue;
                    ++index;
                }
                return;
            }
        }
        SWT.error(38);
    }

    public void setPixels(int x, int y, int putWidth, int[] pixels, int startIndex) {
        if (pixels == null) {
            SWT.error(4);
        }
        if (putWidth < 0 || x >= this.width || y >= this.height || x < 0 || y < 0) {
            SWT.error(5);
        }
        if (putWidth == 0) {
            return;
        }
        int n = putWidth;
        int i = startIndex;
        int srcX = x;
        int srcY = y;
        switch (this.depth) {
            case 32: {
                int index = y * this.bytesPerLine + x * 4;
                int j = 0;
                while (j < putWidth) {
                    int pixel = pixels[i];
                    this.data[index] = (byte)(pixel >> 24 & 0xFF);
                    this.data[index + 1] = (byte)(pixel >> 16 & 0xFF);
                    this.data[index + 2] = (byte)(pixel >> 8 & 0xFF);
                    this.data[index + 3] = (byte)(pixel & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 4;
                    }
                    ++j;
                }
                return;
            }
            case 24: {
                int index = y * this.bytesPerLine + x * 3;
                int j = 0;
                while (j < putWidth) {
                    int pixel = pixels[i];
                    this.data[index] = (byte)(pixel >> 16 & 0xFF);
                    this.data[index + 1] = (byte)(pixel >> 8 & 0xFF);
                    this.data[index + 2] = (byte)(pixel & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 3;
                    }
                    ++j;
                }
                return;
            }
            case 16: {
                int index = y * this.bytesPerLine + x * 2;
                int j = 0;
                while (j < putWidth) {
                    int pixel = pixels[i];
                    this.data[index] = (byte)(pixel & 0xFF);
                    this.data[index + 1] = (byte)(pixel >> 8 & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        index += 2;
                    }
                    ++j;
                }
                return;
            }
            case 8: {
                int index = y * this.bytesPerLine + x;
                int j = 0;
                while (j < putWidth) {
                    this.data[index] = (byte)(pixels[i] & 0xFF);
                    ++i;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                    } else {
                        ++index;
                    }
                    ++j;
                }
                return;
            }
            case 4: {
                int index = y * this.bytesPerLine + (x >> 1);
                boolean high = (x & 1) == 0;
                while (n > 0) {
                    int theByte = pixels[i] & 0xF;
                    this.data[index] = high ? (byte)(this.data[index] & 0xF | theByte << 4) : (byte)(this.data[index] & 0xF0 | theByte);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        high = true;
                        srcX = 0;
                        continue;
                    }
                    if (!high) {
                        ++index;
                    }
                    boolean bl = high = !high;
                }
                return;
            }
            case 2: {
                byte[] masks = new byte[]{-4, -13, -49, 63};
                int index = y * this.bytesPerLine + (x >> 2);
                int offset = 3 - x % 4;
                while (n > 0) {
                    int theByte = pixels[i] & 3;
                    this.data[index] = (byte)(this.data[index] & masks[offset] | theByte << offset * 2);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        offset = 3;
                        srcX = 0;
                        continue;
                    }
                    if (offset == 0) {
                        ++index;
                        offset = 3;
                        continue;
                    }
                    --offset;
                }
                return;
            }
            case 1: {
                int index = y * this.bytesPerLine + (x >> 3);
                while (n > 0) {
                    int mask = 1 << 7 - (srcX & 7);
                    this.data[index] = (pixels[i] & 1) == 1 ? (byte)(this.data[index] & 0xFF | mask) : (byte)(this.data[index] & 0xFF & ~mask);
                    ++i;
                    --n;
                    if (++srcX >= this.width) {
                        index = ++srcY * this.bytesPerLine;
                        srcX = 0;
                        continue;
                    }
                    if (mask != 1) continue;
                    ++index;
                }
                return;
            }
        }
        SWT.error(38);
    }

    static PaletteData bwPalette() {
        return new PaletteData(new RGB[]{new RGB(0, 0, 0), new RGB(255, 255, 255)});
    }

    static int getMSBOffset(int mask) {
        int i = 31;
        while (i >= 0) {
            if ((mask >> i & 1) != 0) {
                return i + 1;
            }
            --i;
        }
        return 0;
    }

    static int closestMatch(int depth, byte red, byte green, byte blue, int redMask, int greenMask, int blueMask, byte[] reds, byte[] greens, byte[] blues) {
        if (depth > 8) {
            int rshift = 32 - ImageData.getMSBOffset(redMask);
            int gshift = 32 - ImageData.getMSBOffset(greenMask);
            int bshift = 32 - ImageData.getMSBOffset(blueMask);
            return red << 24 >>> rshift & redMask | green << 24 >>> gshift & greenMask | blue << 24 >>> bshift & blueMask;
        }
        int minDistance = Integer.MAX_VALUE;
        int nearestPixel = 0;
        int n = reds.length;
        int j = 0;
        while (j < n) {
            int r = (reds[j] & 0xFF) - (red & 0xFF);
            int g = (greens[j] & 0xFF) - (green & 0xFF);
            int b = (blues[j] & 0xFF) - (blue & 0xFF);
            int distance = r * r + g * g + b * b;
            if (distance < minDistance) {
                nearestPixel = j;
                if (distance == 0) break;
                minDistance = distance;
            }
            ++j;
        }
        return nearestPixel;
    }

    static final ImageData convertMask(ImageData mask) {
        if (mask.depth == 1) {
            return mask;
        }
        PaletteData palette = new PaletteData(new RGB[]{new RGB(0, 0, 0), new RGB(255, 255, 255)});
        ImageData newMask = new ImageData(mask.width, mask.height, 1, palette);
        int blackIndex = 0;
        RGB[] rgbs = mask.getRGBs();
        if (rgbs != null) {
            while (blackIndex < rgbs.length) {
                if (rgbs[blackIndex].equals(palette.colors[0])) break;
                ++blackIndex;
            }
        }
        int[] pixels = new int[mask.width];
        int y = 0;
        while (y < mask.height) {
            mask.getPixels(0, y, mask.width, pixels, 0);
            int i = 0;
            while (i < pixels.length) {
                pixels[i] = pixels[i] == blackIndex ? 0 : 1;
                ++i;
            }
            newMask.setPixels(0, y, mask.width, pixels, 0);
            ++y;
        }
        return newMask;
    }

    static final byte[] convertPad(byte[] data, int width, int height, int depth, int pad, int newPad) {
        if (pad == newPad) {
            return data;
        }
        int stride = (width * depth + 7) / 8;
        int bpl = (stride + (pad - 1)) / pad * pad;
        int newBpl = (stride + (newPad - 1)) / newPad * newPad;
        byte[] newData = new byte[height * newBpl];
        int srcIndex = 0;
        int destIndex = 0;
        int y = 0;
        while (y < height) {
            System.arraycopy(data, srcIndex, newData, destIndex, stride);
            srcIndex += bpl;
            destIndex += newBpl;
            ++y;
        }
        return newData;
    }

    static void blit(int op, byte[] srcData, int srcDepth, int srcStride, int srcOrder, int srcX, int srcY, int srcWidth, int srcHeight, int srcRedMask, int srcGreenMask, int srcBlueMask, int alphaMode, byte[] alphaData, int alphaStride, int alphaX, int alphaY, byte[] destData, int destDepth, int destStride, int destOrder, int destX, int destY, int destWidth, int destHeight, int destRedMask, int destGreenMask, int destBlueMask, boolean flipX, boolean flipY) {
        int apr;
        int dpryi;
        int dtype;
        int dbpp;
        int stype;
        int sbpp;
        if (destWidth <= 0 || destHeight <= 0 || alphaMode == 0) {
            return;
        }
        int srcAlphaMask = 0;
        int destAlphaMask = 0;
        int dwm1 = destWidth - 1;
        int sfxi = dwm1 != 0 ? (int)((((long)srcWidth << 16) - 1L) / (long)dwm1) : 0;
        int dhm1 = destHeight - 1;
        int sfyi = dhm1 != 0 ? (int)((((long)srcHeight << 16) - 1L) / (long)dhm1) : 0;
        switch (srcDepth) {
            case 8: {
                sbpp = 1;
                stype = 0;
                break;
            }
            case 16: {
                sbpp = 2;
                stype = srcOrder == 1 ? 1 : 2;
                break;
            }
            case 24: {
                sbpp = 3;
                stype = 3;
                break;
            }
            case 32: {
                sbpp = 4;
                stype = srcOrder == 1 ? 4 : 5;
                break;
            }
            default: {
                return;
            }
        }
        int spr = srcY * srcStride + srcX * sbpp;
        switch (destDepth) {
            case 8: {
                dbpp = 1;
                dtype = 0;
                break;
            }
            case 16: {
                dbpp = 2;
                dtype = destOrder == 1 ? 1 : 2;
                break;
            }
            case 24: {
                dbpp = 3;
                dtype = 3;
                break;
            }
            case 32: {
                dbpp = 4;
                dtype = destOrder == 1 ? 4 : 5;
                break;
            }
            default: {
                return;
            }
        }
        int dpr = (flipY ? destY + dhm1 : destY) * destStride + (flipX ? destX + dwm1 : destX) * dbpp;
        int dprxi = flipX ? -dbpp : dbpp;
        int n = dpryi = flipY ? -destStride : destStride;
        if ((op & 2) != 0) {
            switch (alphaMode) {
                case -3: 
                case -1: {
                    if (alphaData == null) {
                        alphaMode = 65536;
                    }
                    apr = alphaY * alphaStride + alphaX;
                    break;
                }
                case -4: {
                    if (alphaData == null) {
                        alphaMode = 65536;
                    }
                    apr = alphaY * (alphaStride <<= 3) + alphaX;
                    break;
                }
                case -5: {
                    return;
                }
                case -6: {
                    if (alphaData == null) {
                        alphaMode = 65536;
                    }
                    apr = 0;
                    break;
                }
                default: {
                    alphaMode = (alphaMode << 16) / 255;
                }
                case -2: {
                    apr = 0;
                    break;
                }
            }
        } else {
            alphaMode = 65536;
            apr = 0;
        }
        int dp = dpr;
        int sp = spr;
        if (alphaMode == 65536 && stype == dtype && srcRedMask == destRedMask && srcGreenMask == destGreenMask && srcBlueMask == destBlueMask && srcAlphaMask == destAlphaMask) {
            switch (sbpp) {
                case 1: {
                    int dy = destHeight;
                    int sfy = sfyi;
                    while (dy > 0) {
                        int dx = destWidth;
                        int sfx = sfxi;
                        while (dx > 0) {
                            destData[dp] = srcData[sp];
                            sp += sfx >>> 16;
                            --dx;
                            dp += dprxi;
                            sfx = (sfx & 0xFFFF) + sfxi;
                        }
                        --dy;
                        sp = spr += (sfy >>> 16) * srcStride;
                        sfy = (sfy & 0xFFFF) + sfyi;
                        dp = dpr += dpryi;
                    }
                    break;
                }
                case 2: {
                    int dy = destHeight;
                    int sfy = sfyi;
                    while (dy > 0) {
                        int dx = destWidth;
                        int sfx = sfxi;
                        while (dx > 0) {
                            destData[dp] = srcData[sp];
                            destData[dp + 1] = srcData[sp + 1];
                            sp += (sfx >>> 16) * 2;
                            --dx;
                            dp += dprxi;
                            sfx = (sfx & 0xFFFF) + sfxi;
                        }
                        --dy;
                        sp = spr += (sfy >>> 16) * srcStride;
                        sfy = (sfy & 0xFFFF) + sfyi;
                        dp = dpr += dpryi;
                    }
                    break;
                }
                case 3: {
                    int dy = destHeight;
                    int sfy = sfyi;
                    while (dy > 0) {
                        int dx = destWidth;
                        int sfx = sfxi;
                        while (dx > 0) {
                            destData[dp] = srcData[sp];
                            destData[dp + 1] = srcData[sp + 1];
                            destData[dp + 2] = srcData[sp + 2];
                            sp += (sfx >>> 16) * 3;
                            --dx;
                            dp += dprxi;
                            sfx = (sfx & 0xFFFF) + sfxi;
                        }
                        --dy;
                        sp = spr += (sfy >>> 16) * srcStride;
                        sfy = (sfy & 0xFFFF) + sfyi;
                        dp = dpr += dpryi;
                    }
                    break;
                }
                case 4: {
                    int dy = destHeight;
                    int sfy = sfyi;
                    while (dy > 0) {
                        int dx = destWidth;
                        int sfx = sfxi;
                        while (dx > 0) {
                            destData[dp] = srcData[sp];
                            destData[dp + 1] = srcData[sp + 1];
                            destData[dp + 2] = srcData[sp + 2];
                            destData[dp + 3] = srcData[sp + 3];
                            sp += (sfx >>> 16) * 4;
                            --dx;
                            dp += dprxi;
                            sfx = (sfx & 0xFFFF) + sfxi;
                        }
                        --dy;
                        sp = spr += (sfy >>> 16) * srcStride;
                        sfy = (sfy & 0xFFFF) + sfyi;
                        dp = dpr += dpryi;
                    }
                    break;
                }
            }
            return;
        }
        if (alphaMode == 65536 && stype == 4 && dtype == 4 && srcRedMask == 65280 && srcGreenMask == 0xFF0000 && srcBlueMask == -16777216 && destRedMask == 0xFF0000 && destGreenMask == 65280 && destBlueMask == 255) {
            int dy = destHeight;
            int sfy = sfyi;
            while (dy > 0) {
                int dx = destWidth;
                int sfx = sfxi;
                while (dx > 0) {
                    destData[dp] = srcData[sp + 3];
                    destData[dp + 1] = srcData[sp + 2];
                    destData[dp + 2] = srcData[sp + 1];
                    destData[dp + 3] = srcData[sp];
                    sp += (sfx >>> 16) * 4;
                    --dx;
                    dp += dprxi;
                    sfx = (sfx & 0xFFFF) + sfxi;
                }
                --dy;
                sp = spr += (sfy >>> 16) * srcStride;
                sfy = (sfy & 0xFFFF) + sfyi;
                dp = dpr += dpryi;
            }
            return;
        }
        if (alphaMode == 65536 && stype == 3 && dtype == 4 && srcRedMask == 255 && srcGreenMask == 65280 && srcBlueMask == 0xFF0000 && destRedMask == 0xFF0000 && destGreenMask == 65280 && destBlueMask == 255) {
            int dy = destHeight;
            int sfy = sfyi;
            while (dy > 0) {
                int dx = destWidth;
                int sfx = sfxi;
                while (dx > 0) {
                    destData[dp] = 0;
                    destData[dp + 1] = srcData[sp + 2];
                    destData[dp + 2] = srcData[sp + 1];
                    destData[dp + 3] = srcData[sp];
                    sp += (sfx >>> 16) * 3;
                    --dx;
                    dp += dprxi;
                    sfx = (sfx & 0xFFFF) + sfxi;
                }
                --dy;
                sp = spr += (sfy >>> 16) * srcStride;
                sfy = (sfy & 0xFFFF) + sfyi;
                dp = dpr += dpryi;
            }
            return;
        }
        int srcRedShift = ImageData.getChannelShift(srcRedMask);
        byte[] srcReds = ANY_TO_EIGHT[ImageData.getChannelWidth(srcRedMask, srcRedShift)];
        int srcGreenShift = ImageData.getChannelShift(srcGreenMask);
        byte[] srcGreens = ANY_TO_EIGHT[ImageData.getChannelWidth(srcGreenMask, srcGreenShift)];
        int srcBlueShift = ImageData.getChannelShift(srcBlueMask);
        byte[] srcBlues = ANY_TO_EIGHT[ImageData.getChannelWidth(srcBlueMask, srcBlueShift)];
        int srcAlphaShift = ImageData.getChannelShift(srcAlphaMask);
        byte[] srcAlphas = ANY_TO_EIGHT[ImageData.getChannelWidth(srcAlphaMask, srcAlphaShift)];
        int destRedShift = ImageData.getChannelShift(destRedMask);
        int destRedWidth = ImageData.getChannelWidth(destRedMask, destRedShift);
        byte[] destReds = ANY_TO_EIGHT[destRedWidth];
        int destRedPreShift = 8 - destRedWidth;
        int destGreenShift = ImageData.getChannelShift(destGreenMask);
        int destGreenWidth = ImageData.getChannelWidth(destGreenMask, destGreenShift);
        byte[] destGreens = ANY_TO_EIGHT[destGreenWidth];
        int destGreenPreShift = 8 - destGreenWidth;
        int destBlueShift = ImageData.getChannelShift(destBlueMask);
        int destBlueWidth = ImageData.getChannelWidth(destBlueMask, destBlueShift);
        byte[] destBlues = ANY_TO_EIGHT[destBlueWidth];
        int destBluePreShift = 8 - destBlueWidth;
        int destAlphaShift = ImageData.getChannelShift(destAlphaMask);
        int destAlphaWidth = ImageData.getChannelWidth(destAlphaMask, destAlphaShift);
        byte[] destAlphas = ANY_TO_EIGHT[destAlphaWidth];
        int destAlphaPreShift = 8 - destAlphaWidth;
        int ap = apr;
        int alpha = alphaMode;
        int r = 0;
        int g = 0;
        int b = 0;
        int a = 0;
        int rq = 0;
        int gq = 0;
        int bq = 0;
        int aq = 0;
        int dy = destHeight;
        int sfy = sfyi;
        while (dy > 0) {
            int dx = destWidth;
            int sfx = sfxi;
            while (dx > 0) {
                block85: {
                    int data;
                    block84: {
                        switch (stype) {
                            case 0: {
                                data = srcData[sp] & 0xFF;
                                sp += sfx >>> 16;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[(data & srcAlphaMask) >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 1: {
                                data = (srcData[sp] & 0xFF) << 8 | srcData[sp + 1] & 0xFF;
                                sp += (sfx >>> 16) * 2;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[(data & srcAlphaMask) >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 2: {
                                data = (srcData[sp + 1] & 0xFF) << 8 | srcData[sp] & 0xFF;
                                sp += (sfx >>> 16) * 2;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[(data & srcAlphaMask) >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 3: {
                                data = ((srcData[sp] & 0xFF) << 8 | srcData[sp + 1] & 0xFF) << 8 | srcData[sp + 2] & 0xFF;
                                sp += (sfx >>> 16) * 3;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[(data & srcAlphaMask) >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 4: {
                                data = (((srcData[sp] & 0xFF) << 8 | srcData[sp + 1] & 0xFF) << 8 | srcData[sp + 2] & 0xFF) << 8 | srcData[sp + 3] & 0xFF;
                                sp += (sfx >>> 16) * 4;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[(data & srcAlphaMask) >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 5: {
                                data = (((srcData[sp + 3] & 0xFF) << 8 | srcData[sp + 2] & 0xFF) << 8 | srcData[sp + 1] & 0xFF) << 8 | srcData[sp] & 0xFF;
                                sp += (sfx >>> 16) * 4;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[(data & srcAlphaMask) >>> srcAlphaShift] & 0xFF;
                            }
                        }
                        block33 : switch (alphaMode) {
                            case -1: {
                                alpha = ((alphaData[ap] & 0xFF) << 16) / 255;
                                ap += sfx >> 16;
                                break;
                            }
                            case -2: {
                                alpha = (a << 16) / 255;
                                break;
                            }
                            case -3: {
                                alpha = alphaData[ap] != 0 ? 65536 : 0;
                                ap += sfx >> 16;
                                break;
                            }
                            case -4: {
                                alpha = alphaData[ap >> 3] << (ap & 7) + 9 & 0x10000;
                                ap += sfx >> 16;
                                break;
                            }
                            case -6: {
                                alpha = 65536;
                                int i = 0;
                                while (i < alphaData.length) {
                                    if (r == alphaData[i] && g == alphaData[i + 1] && b == alphaData[i + 2]) {
                                        alpha = 0;
                                        break block33;
                                    }
                                    i += 3;
                                }
                                break;
                            }
                        }
                        if (alpha == 65536) break block84;
                        if (alpha == 0) break block85;
                        switch (dtype) {
                            case 0: {
                                data = destData[dp] & 0xFF;
                                rq = destReds[(data & destRedMask) >>> destRedShift] & 0xFF;
                                gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 0xFF;
                                bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 0xFF;
                                aq = destAlphas[(data & destAlphaMask) >>> destAlphaShift] & 0xFF;
                                break;
                            }
                            case 1: {
                                data = (destData[dp] & 0xFF) << 8 | destData[dp + 1] & 0xFF;
                                rq = destReds[(data & destRedMask) >>> destRedShift] & 0xFF;
                                gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 0xFF;
                                bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 0xFF;
                                aq = destAlphas[(data & destAlphaMask) >>> destAlphaShift] & 0xFF;
                                break;
                            }
                            case 2: {
                                data = (destData[dp + 1] & 0xFF) << 8 | destData[dp] & 0xFF;
                                rq = destReds[(data & destRedMask) >>> destRedShift] & 0xFF;
                                gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 0xFF;
                                bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 0xFF;
                                aq = destAlphas[(data & destAlphaMask) >>> destAlphaShift] & 0xFF;
                                break;
                            }
                            case 3: {
                                data = ((destData[dp] & 0xFF) << 8 | destData[dp + 1] & 0xFF) << 8 | destData[dp + 2] & 0xFF;
                                rq = destReds[(data & destRedMask) >>> destRedShift] & 0xFF;
                                gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 0xFF;
                                bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 0xFF;
                                aq = destAlphas[(data & destAlphaMask) >>> destAlphaShift] & 0xFF;
                                break;
                            }
                            case 4: {
                                data = (((destData[dp] & 0xFF) << 8 | destData[dp + 1] & 0xFF) << 8 | destData[dp + 2] & 0xFF) << 8 | destData[dp + 3] & 0xFF;
                                rq = destReds[(data & destRedMask) >>> destRedShift] & 0xFF;
                                gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 0xFF;
                                bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 0xFF;
                                aq = destAlphas[(data & destAlphaMask) >>> destAlphaShift] & 0xFF;
                                break;
                            }
                            case 5: {
                                data = (((destData[dp + 3] & 0xFF) << 8 | destData[dp + 2] & 0xFF) << 8 | destData[dp + 1] & 0xFF) << 8 | destData[dp] & 0xFF;
                                rq = destReds[(data & destRedMask) >>> destRedShift] & 0xFF;
                                gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 0xFF;
                                bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 0xFF;
                                aq = destAlphas[(data & destAlphaMask) >>> destAlphaShift] & 0xFF;
                            }
                        }
                        a = aq + ((a - aq) * alpha >> 16);
                        r = rq + ((r - rq) * alpha >> 16);
                        g = gq + ((g - gq) * alpha >> 16);
                        b = bq + ((b - bq) * alpha >> 16);
                    }
                    data = r >>> destRedPreShift << destRedShift | g >>> destGreenPreShift << destGreenShift | b >>> destBluePreShift << destBlueShift | a >>> destAlphaPreShift << destAlphaShift;
                    switch (dtype) {
                        case 0: {
                            destData[dp] = (byte)data;
                            break;
                        }
                        case 1: {
                            destData[dp] = (byte)(data >>> 8);
                            destData[dp + 1] = (byte)(data & 0xFF);
                            break;
                        }
                        case 2: {
                            destData[dp] = (byte)(data & 0xFF);
                            destData[dp + 1] = (byte)(data >>> 8);
                            break;
                        }
                        case 3: {
                            destData[dp] = (byte)(data >>> 16);
                            destData[dp + 1] = (byte)(data >>> 8);
                            destData[dp + 2] = (byte)(data & 0xFF);
                            break;
                        }
                        case 4: {
                            destData[dp] = (byte)(data >>> 24);
                            destData[dp + 1] = (byte)(data >>> 16);
                            destData[dp + 2] = (byte)(data >>> 8);
                            destData[dp + 3] = (byte)(data & 0xFF);
                            break;
                        }
                        case 5: {
                            destData[dp] = (byte)(data & 0xFF);
                            destData[dp + 1] = (byte)(data >>> 8);
                            destData[dp + 2] = (byte)(data >>> 16);
                            destData[dp + 3] = (byte)(data >>> 24);
                        }
                    }
                }
                --dx;
                dp += dprxi;
                sfx = (sfx & 0xFFFF) + sfxi;
            }
            --dy;
            sp = spr += (sfy >>> 16) * srcStride;
            ap = apr += (sfy >>> 16) * alphaStride;
            sfy = (sfy & 0xFFFF) + sfyi;
            dp = dpr += dpryi;
        }
    }

    /*
     * Unable to fully structure code
     */
    static void blit(int op, byte[] srcData, int srcDepth, int srcStride, int srcOrder, int srcX, int srcY, int srcWidth, int srcHeight, byte[] srcReds, byte[] srcGreens, byte[] srcBlues, int alphaMode, byte[] alphaData, int alphaStride, int alphaX, int alphaY, byte[] destData, int destDepth, int destStride, int destOrder, int destX, int destY, int destWidth, int destHeight, byte[] destReds, byte[] destGreens, byte[] destBlues, boolean flipX, boolean flipY) {
        block135: {
            block137: {
                block136: {
                    if (destWidth <= 0 || destHeight <= 0 || alphaMode == 0) {
                        return;
                    }
                    dwm1 = destWidth - 1;
                    sfxi = dwm1 != 0 ? (int)((((long)srcWidth << 16) - 1L) / (long)dwm1) : 0;
                    dhm1 = destHeight - 1;
                    sfyi = dhm1 != 0 ? (int)((((long)srcHeight << 16) - 1L) / (long)dhm1) : 0;
                    switch (srcDepth) {
                        case 8: {
                            stype = 6;
                            break;
                        }
                        case 4: {
                            srcStride <<= 1;
                            stype = 7;
                            break;
                        }
                        case 2: {
                            srcStride <<= 2;
                            stype = 8;
                            break;
                        }
                        case 1: {
                            srcStride <<= 3;
                            stype = srcOrder == 1 ? 9 : 10;
                            break;
                        }
                        default: {
                            return;
                        }
                    }
                    spr = srcY * srcStride + srcX;
                    switch (destDepth) {
                        case 8: {
                            dtype = 6;
                            break;
                        }
                        case 4: {
                            destStride <<= 1;
                            dtype = 7;
                            break;
                        }
                        case 2: {
                            destStride <<= 2;
                            dtype = 8;
                            break;
                        }
                        case 1: {
                            destStride <<= 3;
                            dtype = destOrder == 1 ? 9 : 10;
                            break;
                        }
                        default: {
                            return;
                        }
                    }
                    dpr = (flipY != false ? destY + dhm1 : destY) * destStride + (flipX != false ? destX + dwm1 : destX);
                    dprxi = flipX != false ? -1 : 1;
                    v0 = dpryi = flipY != false ? -destStride : destStride;
                    if ((op & 2) != 0) {
                        switch (alphaMode) {
                            case -3: 
                            case -1: {
                                if (alphaData == null) {
                                    alphaMode = 65536;
                                }
                                apr = alphaY * alphaStride + alphaX;
                                break;
                            }
                            case -4: {
                                if (alphaData == null) {
                                    alphaMode = 65536;
                                }
                                apr = alphaY * (alphaStride <<= 3) + alphaX;
                                break;
                            }
                            case -6: 
                            case -5: {
                                if (alphaData == null) {
                                    alphaMode = 65536;
                                }
                                apr = 0;
                                break;
                            }
                            default: {
                                alphaMode = (alphaMode << 16) / 255;
                            }
                            case -2: {
                                apr = 0;
                                break;
                            }
                        }
                    } else {
                        alphaMode = 65536;
                        apr = 0;
                    }
                    ditherEnabled = (op & 4) != 0;
                    dp = dpr;
                    sp = spr;
                    ap = apr;
                    destPaletteSize = 1 << destDepth;
                    if (destReds != null && destReds.length < destPaletteSize) {
                        destPaletteSize = destReds.length;
                    }
                    paletteMapping = null;
                    isExactPaletteMapping = true;
                    switch (alphaMode) {
                        case 65536: {
                            if (stype == dtype && srcReds == destReds && srcGreens == destGreens && srcBlues == destBlues) {
                                paletteMapping = ImageData.ONE_TO_ONE_MAPPING;
                                break;
                            }
                            if (srcReds == null || destReds == null) {
                                if (srcDepth <= destDepth) {
                                    paletteMapping = ImageData.ONE_TO_ONE_MAPPING;
                                    break;
                                }
                                paletteMapping = new byte[1 << srcDepth];
                                mask = 255 << destDepth >>> 8;
                                i = 0;
                                while (i < paletteMapping.length) {
                                    paletteMapping[i] = (byte)(i & mask);
                                    ++i;
                                }
                                break;
                            }
                        }
                        case -6: 
                        case -5: 
                        case -4: 
                        case -3: {
                            srcPaletteSize = 1 << srcDepth;
                            paletteMapping = new byte[srcPaletteSize];
                            if (srcReds != null && srcReds.length < srcPaletteSize) {
                                srcPaletteSize = srcReds.length;
                            }
                            i = 0;
                            while (i < srcPaletteSize) {
                                r = srcReds[i] & 255;
                                g = srcGreens[i] & 255;
                                b = srcBlues[i] & 255;
                                index = 0;
                                minDistance = 0x7FFFFFFF;
                                j = 0;
                                while (j < destPaletteSize) {
                                    dr = (destReds[j] & 255) - r;
                                    dg = (destGreens[j] & 255) - g;
                                    db = (destBlues[j] & 255) - b;
                                    distance = dr * dr + dg * dg + db * db;
                                    if (distance < minDistance) {
                                        index = j;
                                        if (distance == 0) break;
                                        minDistance = distance;
                                    }
                                    ++j;
                                }
                                paletteMapping[i] = (byte)index;
                                if (minDistance != 0) {
                                    isExactPaletteMapping = false;
                                }
                                ++i;
                            }
                            break;
                        }
                    }
                    if (paletteMapping == null || !isExactPaletteMapping && ditherEnabled) break block135;
                    if (stype != dtype || alphaMode != 65536) break block136;
                    switch (stype) {
                        case 6: {
                            dy = destHeight;
                            sfy = sfyi;
                            while (dy > 0) {
                                dx = destWidth;
                                sfx = sfxi;
                                while (dx > 0) {
                                    destData[dp] = paletteMapping[srcData[sp] & 255];
                                    sp += sfx >>> 16;
                                    --dx;
                                    dp += dprxi;
                                    sfx = (sfx & 65535) + sfxi;
                                }
                                --dy;
                                sp = spr += (sfy >>> 16) * srcStride;
                                sfy = (sfy & 65535) + sfyi;
                                dp = dpr += dpryi;
                            }
                            break block137;
                        }
                        case 7: {
                            dy = destHeight;
                            sfy = sfyi;
                            while (dy > 0) {
                                dx = destWidth;
                                sfx = sfxi;
                                while (dx > 0) {
                                    v = (sp & 1) != 0 ? paletteMapping[srcData[sp >> 1] & 15] : srcData[sp >> 1] >>> 4 & 15;
                                    sp += sfx >>> 16;
                                    destData[dp >> 1] = (dp & 1) != 0 ? (byte)(destData[dp >> 1] & 240 | v) : (byte)(destData[dp >> 1] & 15 | v << 4);
                                    --dx;
                                    dp += dprxi;
                                    sfx = (sfx & 65535) + sfxi;
                                }
                                --dy;
                                sp = spr += (sfy >>> 16) * srcStride;
                                sfy = (sfy & 65535) + sfyi;
                                dp = dpr += dpryi;
                            }
                            break block137;
                        }
                        case 8: {
                            dy = destHeight;
                            sfy = sfyi;
                            while (dy > 0) {
                                dx = destWidth;
                                sfx = sfxi;
                                while (dx > 0) {
                                    index = paletteMapping[srcData[sp >> 2] >>> 6 - (sp & 3) * 2 & 3];
                                    sp += sfx >>> 16;
                                    shift = 6 - (dp & 3) * 2;
                                    destData[dp >> 2] = (byte)(destData[dp >> 2] & ~(3 << shift) | index << shift);
                                    --dx;
                                    dp += dprxi;
                                    sfx = (sfx & 65535) + sfxi;
                                }
                                --dy;
                                sp = spr += (sfy >>> 16) * srcStride;
                                sfy = (sfy & 65535) + sfyi;
                                dp = dpr += dpryi;
                            }
                            break block137;
                        }
                        case 9: {
                            dy = destHeight;
                            sfy = sfyi;
                            while (dy > 0) {
                                dx = destWidth;
                                sfx = sfxi;
                                while (dx > 0) {
                                    index = paletteMapping[srcData[sp >> 3] >>> 7 - (sp & 7) & 1];
                                    sp += sfx >>> 16;
                                    shift = 7 - (dp & 7);
                                    destData[dp >> 3] = (byte)(destData[dp >> 3] & ~(1 << shift) | index << shift);
                                    --dx;
                                    dp += dprxi;
                                    sfx = (sfx & 65535) + sfxi;
                                }
                                --dy;
                                sp = spr += (sfy >>> 16) * srcStride;
                                sfy = (sfy & 65535) + sfyi;
                                dp = dpr += dpryi;
                            }
                            break block137;
                        }
                        case 10: {
                            dy = destHeight;
                            sfy = sfyi;
                            while (dy > 0) {
                                dx = destWidth;
                                sfx = sfxi;
                                while (dx > 0) {
                                    index = paletteMapping[srcData[sp >> 3] >>> (sp & 7) & 1];
                                    sp += sfx >>> 16;
                                    shift = dp & 7;
                                    destData[dp >> 3] = (byte)(destData[dp >> 3] & ~(1 << shift) | index << shift);
                                    --dx;
                                    dp += dprxi;
                                    sfx = (sfx & 65535) + sfxi;
                                }
                                --dy;
                                sp = spr += (sfy >>> 16) * srcStride;
                                sfy = (sfy & 65535) + sfyi;
                                dp = dpr += dpryi;
                            }
                            break block22;
                        }
                    }
                    break block137;
                }
                dy = destHeight;
                sfy = sfyi;
                while (dy > 0) {
                    dx = destWidth;
                    sfx = sfxi;
                    while (dx > 0) {
                        switch (stype) {
                            case 6: {
                                index = srcData[sp] & 255;
                                sp += sfx >>> 16;
                                break;
                            }
                            case 7: {
                                index = (sp & 1) != 0 ? srcData[sp >> 1] & 15 : srcData[sp >> 1] >>> 4 & 15;
                                sp += sfx >>> 16;
                                break;
                            }
                            case 8: {
                                index = srcData[sp >> 2] >>> 6 - (sp & 3) * 2 & 3;
                                sp += sfx >>> 16;
                                break;
                            }
                            case 9: {
                                index = srcData[sp >> 3] >>> 7 - (sp & 7) & 1;
                                sp += sfx >>> 16;
                                break;
                            }
                            case 10: {
                                index = srcData[sp >> 3] >>> (sp & 7) & 1;
                                sp += sfx >>> 16;
                                break;
                            }
                            default: {
                                return;
                            }
                        }
                        block36 : switch (alphaMode) {
                            case -3: {
                                mask = alphaData[ap];
                                ap += sfx >> 16;
                                if (mask == 0) {
                                    break;
                                }
                                ** GOTO lbl294
                            }
                            case -4: {
                                mask = alphaData[ap >> 3] & 1 << (ap & 7);
                                ap += sfx >> 16;
                                if (mask == 0) {
                                    break;
                                }
                                ** GOTO lbl294
                            }
                            case -5: {
                                i = 0;
                                while (i < alphaData.length) {
                                    if (index == (alphaData[i] & 255)) break;
                                }
                                if (i < alphaData.length) {
                                    break;
                                }
                                ** GOTO lbl294
                            }
                            case -6: {
                                r = srcReds[index];
                                g = srcGreens[index];
                                b = srcBlues[index];
                                i = 0;
                                while (i < alphaData.length) {
                                    if (r == alphaData[i] && g == alphaData[i + 1] && b == alphaData[i + 2]) break;
                                    i += 3;
                                }
                                if (i < alphaData.length) break;
                            }
lbl294:
                            // 5 sources

                            default: {
                                index = paletteMapping[index] & 255;
                                switch (dtype) {
                                    case 6: {
                                        destData[dp] = (byte)index;
                                        break block36;
                                    }
                                    case 7: {
                                        if ((dp & 1) != 0) {
                                            destData[dp >> 1] = (byte)(destData[dp >> 1] & 240 | index);
                                            break block36;
                                        }
                                        destData[dp >> 1] = (byte)(destData[dp >> 1] & 15 | index << 4);
                                        break block36;
                                    }
                                    case 8: {
                                        shift = 6 - (dp & 3) * 2;
                                        destData[dp >> 2] = (byte)(destData[dp >> 2] & ~(3 << shift) | index << shift);
                                        break block36;
                                    }
                                    case 9: {
                                        shift = 7 - (dp & 7);
                                        destData[dp >> 3] = (byte)(destData[dp >> 3] & ~(1 << shift) | index << shift);
                                        break block36;
                                    }
                                    case 10: {
                                        shift = dp & 7;
                                        destData[dp >> 3] = (byte)(destData[dp >> 3] & ~(1 << shift) | index << shift);
                                    }
                                }
                            }
                        }
                        --dx;
                        dp += dprxi;
                        sfx = (sfx & 65535) + sfxi;
                    }
                    --dy;
                    sp = spr += (sfy >>> 16) * srcStride;
                    sfy = (sfy & 65535) + sfyi;
                    dp = dpr += dpryi;
                }
            }
            return;
        }
        alpha = alphaMode;
        index = 0;
        indexq = 0;
        lastindex = 0;
        lastr = -1;
        lastg = -1;
        lastb = -1;
        if (ditherEnabled) {
            rerr = new int[destWidth + 2];
            gerr = new int[destWidth + 2];
            berr = new int[destWidth + 2];
        } else {
            rerr = null;
            gerr = null;
            berr = null;
        }
        dy = destHeight;
        sfy = sfyi;
        while (dy > 0) {
            lrerr = 0;
            lgerr = 0;
            lberr = 0;
            dx = destWidth;
            sfx = sfxi;
            while (dx > 0) {
                switch (stype) {
                    case 6: {
                        index = srcData[sp] & 255;
                        sp += sfx >>> 16;
                        break;
                    }
                    case 7: {
                        index = (sp & 1) != 0 ? srcData[sp >> 1] & 15 : srcData[sp >> 1] >>> 4 & 15;
                        sp += sfx >>> 16;
                        break;
                    }
                    case 8: {
                        index = srcData[sp >> 2] >>> 6 - (sp & 3) * 2 & 3;
                        sp += sfx >>> 16;
                        break;
                    }
                    case 9: {
                        index = srcData[sp >> 3] >>> 7 - (sp & 7) & 1;
                        sp += sfx >>> 16;
                        break;
                    }
                    case 10: {
                        index = srcData[sp >> 3] >>> (sp & 7) & 1;
                        sp += sfx >>> 16;
                    }
                }
                r = srcReds[index] & 255;
                g = srcGreens[index] & 255;
                b = srcBlues[index] & 255;
                block56 : switch (alphaMode) {
                    case -1: {
                        alpha = ((alphaData[ap] & 255) << 16) / 255;
                        ap += sfx >> 16;
                        ** GOTO lbl404
                    }
                    case -3: {
                        alpha = alphaData[ap] != 0 ? 65536 : 0;
                        ap += sfx >> 16;
                        ** GOTO lbl404
                    }
                    case -4: {
                        alpha = alphaData[ap >> 3] << (ap & 7) + 9 & 65536;
                        ap += sfx >> 16;
                        ** GOTO lbl404
                    }
                    case -5: {
                        i = 0;
                        while (i < alphaData.length) {
                            if (index == (alphaData[i] & 255)) break;
                        }
                        if (i < alphaData.length) {
                            break;
                        }
                        ** GOTO lbl404
                    }
                    case -6: {
                        i = 0;
                        while (i < alphaData.length) {
                            if (r == (alphaData[i] & 255) && g == (alphaData[i + 1] & 255) && b == (alphaData[i + 2] & 255)) break;
                            i += 3;
                        }
                        if (i < alphaData.length) break;
                    }
lbl404:
                    // 6 sources

                    default: {
                        if (alpha != 65536) {
                            if (alpha == 0) break;
                            switch (dtype) {
                                case 6: {
                                    indexq = destData[dp] & 255;
                                    break;
                                }
                                case 7: {
                                    if ((dp & 1) != 0) {
                                        indexq = destData[dp >> 1] & 15;
                                        break;
                                    }
                                    indexq = destData[dp >> 1] >>> 4 & 15;
                                    break;
                                }
                                case 8: {
                                    indexq = destData[dp >> 2] >>> 6 - (dp & 3) * 2 & 3;
                                    break;
                                }
                                case 9: {
                                    indexq = destData[dp >> 3] >>> 7 - (dp & 7) & 1;
                                    break;
                                }
                                case 10: {
                                    indexq = destData[dp >> 3] >>> (dp & 7) & 1;
                                }
                            }
                            rq = destReds[indexq] & 255;
                            gq = destGreens[indexq] & 255;
                            bq = destBlues[indexq] & 255;
                            r = rq + ((r - rq) * alpha >> 16);
                            g = gq + ((g - gq) * alpha >> 16);
                            b = bq + ((b - bq) * alpha >> 16);
                        }
                        if (ditherEnabled) {
                            if ((r += rerr[dx] >> 4) < 0) {
                                r = 0;
                            } else if (r > 255) {
                                r = 255;
                            }
                            if ((g += gerr[dx] >> 4) < 0) {
                                g = 0;
                            } else if (g > 255) {
                                g = 255;
                            }
                            if ((b += berr[dx] >> 4) < 0) {
                                b = 0;
                            } else if (b > 255) {
                                b = 255;
                            }
                            rerr[dx] = lrerr;
                            gerr[dx] = lgerr;
                            berr[dx] = lberr;
                        }
                        if (r != lastr || g != lastg || b != lastb) {
                            j = 0;
                            minDistance = 0x7FFFFFFF;
                            while (j < destPaletteSize) {
                                dr = (destReds[j] & 255) - r;
                                dg = (destGreens[j] & 255) - g;
                                db = (destBlues[j] & 255) - b;
                                distance = dr * dr + dg * dg + db * db;
                                if (distance < minDistance) {
                                    lastindex = j;
                                    if (distance == 0) break;
                                    minDistance = distance;
                                }
                                ++j;
                            }
                            lastr = r;
                            lastg = g;
                            lastb = b;
                        }
                        if (ditherEnabled) {
                            dxm1 = dx - 1;
                            v1 = dxp1 = dx + 1;
                            lrerr = r - (destReds[lastindex] & 255);
                            acc = lrerr + lrerr + lrerr;
                            rerr[v1] = rerr[v1] + acc;
                            v2 = dx;
                            rerr[v2] = rerr[v2] + (acc += lrerr + lrerr);
                            v3 = dxm1;
                            rerr[v3] = rerr[v3] + (acc + lrerr + lrerr);
                            v4 = dxp1;
                            lgerr = g - (destGreens[lastindex] & 255);
                            acc = lgerr + lgerr + lgerr;
                            gerr[v4] = gerr[v4] + acc;
                            v5 = dx;
                            gerr[v5] = gerr[v5] + (acc += lgerr + lgerr);
                            v6 = dxm1;
                            gerr[v6] = gerr[v6] + (acc + lgerr + lgerr);
                            v7 = dxp1;
                            lberr = b - (destBlues[lastindex] & 255);
                            acc = lberr + lberr + lberr;
                            berr[v7] = berr[v7] + acc;
                            v8 = dx;
                            berr[v8] = berr[v8] + (acc += lberr + lberr);
                            v9 = dxm1;
                            berr[v9] = berr[v9] + (acc + lberr + lberr);
                        }
                        switch (dtype) {
                            case 6: {
                                destData[dp] = (byte)lastindex;
                                break block56;
                            }
                            case 7: {
                                if ((dp & 1) != 0) {
                                    destData[dp >> 1] = (byte)(destData[dp >> 1] & 240 | lastindex);
                                    break block56;
                                }
                                destData[dp >> 1] = (byte)(destData[dp >> 1] & 15 | lastindex << 4);
                                break block56;
                            }
                            case 8: {
                                shift = 6 - (dp & 3) * 2;
                                destData[dp >> 2] = (byte)(destData[dp >> 2] & ~(3 << shift) | lastindex << shift);
                                break block56;
                            }
                            case 9: {
                                shift = 7 - (dp & 7);
                                destData[dp >> 3] = (byte)(destData[dp >> 3] & ~(1 << shift) | lastindex << shift);
                                break block56;
                            }
                            case 10: {
                                shift = dp & 7;
                                destData[dp >> 3] = (byte)(destData[dp >> 3] & ~(1 << shift) | lastindex << shift);
                            }
                        }
                    }
                }
                --dx;
                dp += dprxi;
                sfx = (sfx & 65535) + sfxi;
            }
            --dy;
            sp = spr += (sfy >>> 16) * srcStride;
            ap = apr += (sfy >>> 16) * alphaStride;
            sfy = (sfy & 65535) + sfyi;
            dp = dpr += dpryi;
        }
    }

    /*
     * Unable to fully structure code
     */
    static void blit(int op, byte[] srcData, int srcDepth, int srcStride, int srcOrder, int srcX, int srcY, int srcWidth, int srcHeight, byte[] srcReds, byte[] srcGreens, byte[] srcBlues, int alphaMode, byte[] alphaData, int alphaStride, int alphaX, int alphaY, byte[] destData, int destDepth, int destStride, int destOrder, int destX, int destY, int destWidth, int destHeight, int destRedMask, int destGreenMask, int destBlueMask, boolean flipX, boolean flipY) {
        if (destWidth <= 0 || destHeight <= 0 || alphaMode == 0) {
            return;
        }
        if (srcX == 0 && srcY == 0 && destX == 0 && destY == 0 && destWidth == srcWidth && destHeight == srcHeight) {
            if (destDepth == 24 && srcDepth == 8 && (op & 2) == 0 && destRedMask == 0xFF0000 && destGreenMask == 65280 && destBlueMask == 255) {
                y = 0;
                sp = 0;
                dp = 0;
                spad = srcStride - srcWidth;
                dpad = destStride - destWidth * 3;
                while (y < destHeight) {
                    x = 0;
                    while (x < destWidth) {
                        index = srcData[sp++] & 255;
                        destData[dp++] = srcReds[index];
                        destData[dp++] = srcGreens[index];
                        destData[dp++] = srcBlues[index];
                        ++x;
                    }
                    ++y;
                    sp += spad;
                    dp += dpad;
                }
                return;
            }
            if (destDepth == 32 && destOrder == 1 && srcDepth == 8 && (op & 2) == 0 && destRedMask == 0xFF0000 && destGreenMask == 65280 && destBlueMask == 255) {
                y = 0;
                sp = 0;
                dp = 0;
                spad = srcStride - srcWidth;
                dpad = destStride - destWidth * 4;
                while (y < destHeight) {
                    x = 0;
                    while (x < destWidth) {
                        index = srcData[sp++] & 255;
                        v0 = ++dp;
                        destData[v0] = srcReds[index];
                        v1 = ++dp;
                        destData[v1] = srcGreens[index];
                        v2 = ++dp;
                        ++dp;
                        destData[v2] = srcBlues[index];
                        ++x;
                    }
                    ++y;
                    sp += spad;
                    dp += dpad;
                }
                return;
            }
        }
        sfxi = (dwm1 = destWidth - 1) != 0 ? (int)((((long)srcWidth << 16) - 1L) / (long)dwm1) : 0;
        dhm1 = destHeight - 1;
        sfyi = dhm1 != 0 ? (int)((((long)srcHeight << 16) - 1L) / (long)dhm1) : 0;
        switch (srcDepth) {
            case 8: {
                stype = 6;
                break;
            }
            case 4: {
                srcStride <<= 1;
                stype = 7;
                break;
            }
            case 2: {
                srcStride <<= 2;
                stype = 8;
                break;
            }
            case 1: {
                srcStride <<= 3;
                stype = srcOrder == 1 ? 9 : 10;
                break;
            }
            default: {
                return;
            }
        }
        spr = srcY * srcStride + srcX;
        switch (destDepth) {
            case 8: {
                dbpp = 1;
                dtype = 0;
                break;
            }
            case 16: {
                dbpp = 2;
                dtype = destOrder == 1 ? 1 : 2;
                break;
            }
            case 24: {
                dbpp = 3;
                dtype = 3;
                break;
            }
            case 32: {
                dbpp = 4;
                dtype = destOrder == 1 ? 4 : 5;
                break;
            }
            default: {
                return;
            }
        }
        dpr = (flipY != false ? destY + dhm1 : destY) * destStride + (flipX != false ? destX + dwm1 : destX) * dbpp;
        dprxi = flipX != false ? -dbpp : dbpp;
        v3 = dpryi = flipY != false ? -destStride : destStride;
        if ((op & 2) != 0) {
            switch (alphaMode) {
                case -3: 
                case -1: {
                    if (alphaData == null) {
                        alphaMode = 65536;
                    }
                    apr = alphaY * alphaStride + alphaX;
                    break;
                }
                case -4: {
                    if (alphaData == null) {
                        alphaMode = 65536;
                    }
                    apr = alphaY * (alphaStride <<= 3) + alphaX;
                    break;
                }
                case -6: 
                case -5: {
                    if (alphaData == null) {
                        alphaMode = 65536;
                    }
                    apr = 0;
                    break;
                }
                default: {
                    alphaMode = (alphaMode << 16) / 255;
                }
                case -2: {
                    apr = 0;
                    break;
                }
            }
        } else {
            alphaMode = 65536;
            apr = 0;
        }
        destRedShift = ImageData.getChannelShift(destRedMask);
        destRedWidth = ImageData.getChannelWidth(destRedMask, destRedShift);
        destReds = ImageData.ANY_TO_EIGHT[destRedWidth];
        destRedPreShift = 8 - destRedWidth;
        destGreenShift = ImageData.getChannelShift(destGreenMask);
        destGreenWidth = ImageData.getChannelWidth(destGreenMask, destGreenShift);
        destGreens = ImageData.ANY_TO_EIGHT[destGreenWidth];
        destGreenPreShift = 8 - destGreenWidth;
        destBlueShift = ImageData.getChannelShift(destBlueMask);
        destBlueWidth = ImageData.getChannelWidth(destBlueMask, destBlueShift);
        destBlues = ImageData.ANY_TO_EIGHT[destBlueWidth];
        destBluePreShift = 8 - destBlueWidth;
        destAlphaShift = ImageData.getChannelShift(0);
        destAlphaWidth = ImageData.getChannelWidth(0, destAlphaShift);
        destAlphas = ImageData.ANY_TO_EIGHT[destAlphaWidth];
        destAlphaPreShift = 8 - destAlphaWidth;
        dp = dpr;
        sp = spr;
        ap = apr;
        alpha = alphaMode;
        r = 0;
        g = 0;
        b = 0;
        a = 0;
        index = 0;
        rq = 0;
        gq = 0;
        bq = 0;
        aq = 0;
        dy = destHeight;
        sfy = sfyi;
        while (dy > 0) {
            dx = destWidth;
            sfx = sfxi;
            while (dx > 0) {
                switch (stype) {
                    case 6: {
                        index = srcData[sp] & 255;
                        sp += sfx >>> 16;
                        break;
                    }
                    case 7: {
                        index = (sp & 1) != 0 ? srcData[sp >> 1] & 15 : srcData[sp >> 1] >>> 4 & 15;
                        sp += sfx >>> 16;
                        break;
                    }
                    case 8: {
                        index = srcData[sp >> 2] >>> 6 - (sp & 3) * 2 & 3;
                        sp += sfx >>> 16;
                        break;
                    }
                    case 9: {
                        index = srcData[sp >> 3] >>> 7 - (sp & 7) & 1;
                        sp += sfx >>> 16;
                        break;
                    }
                    case 10: {
                        index = srcData[sp >> 3] >>> (sp & 7) & 1;
                        sp += sfx >>> 16;
                    }
                }
                r = srcReds[index] & 255;
                g = srcGreens[index] & 255;
                b = srcBlues[index] & 255;
                block25 : switch (alphaMode) {
                    case -1: {
                        alpha = ((alphaData[ap] & 255) << 16) / 255;
                        ap += sfx >> 16;
                        ** GOTO lbl203
                    }
                    case -3: {
                        alpha = alphaData[ap] != 0 ? 65536 : 0;
                        ap += sfx >> 16;
                        ** GOTO lbl203
                    }
                    case -4: {
                        alpha = alphaData[ap >> 3] << (ap & 7) + 9 & 65536;
                        ap += sfx >> 16;
                        ** GOTO lbl203
                    }
                    case -5: {
                        i = 0;
                        while (i < alphaData.length) {
                            if (index == (alphaData[i] & 255)) break;
                        }
                        if (i < alphaData.length) {
                            break;
                        }
                        ** GOTO lbl203
                    }
                    case -6: {
                        i = 0;
                        while (i < alphaData.length) {
                            if (r == (alphaData[i] & 255) && g == (alphaData[i + 1] & 255) && b == (alphaData[i + 2] & 255)) break;
                            i += 3;
                        }
                        if (i < alphaData.length) break;
                    }
lbl203:
                    // 6 sources

                    default: {
                        if (alpha != 65536) {
                            if (alpha == 0) break;
                            switch (dtype) {
                                case 0: {
                                    data = destData[dp] & 255;
                                    rq = destReds[(data & destRedMask) >>> destRedShift] & 255;
                                    gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 255;
                                    bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 255;
                                    aq = destAlphas[0 >>> destAlphaShift] & 255;
                                    break;
                                }
                                case 1: {
                                    data = (destData[dp] & 255) << 8 | destData[dp + 1] & 255;
                                    rq = destReds[(data & destRedMask) >>> destRedShift] & 255;
                                    gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 255;
                                    bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 255;
                                    aq = destAlphas[0 >>> destAlphaShift] & 255;
                                    break;
                                }
                                case 2: {
                                    data = (destData[dp + 1] & 255) << 8 | destData[dp] & 255;
                                    rq = destReds[(data & destRedMask) >>> destRedShift] & 255;
                                    gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 255;
                                    bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 255;
                                    aq = destAlphas[0 >>> destAlphaShift] & 255;
                                    break;
                                }
                                case 3: {
                                    data = ((destData[dp] & 255) << 8 | destData[dp + 1] & 255) << 8 | destData[dp + 2] & 255;
                                    rq = destReds[(data & destRedMask) >>> destRedShift] & 255;
                                    gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 255;
                                    bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 255;
                                    aq = destAlphas[0 >>> destAlphaShift] & 255;
                                    break;
                                }
                                case 4: {
                                    data = (((destData[dp] & 255) << 8 | destData[dp + 1] & 255) << 8 | destData[dp + 2] & 255) << 8 | destData[dp + 3] & 255;
                                    rq = destReds[(data & destRedMask) >>> destRedShift] & 255;
                                    gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 255;
                                    bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 255;
                                    aq = destAlphas[0 >>> destAlphaShift] & 255;
                                    break;
                                }
                                case 5: {
                                    data = (((destData[dp + 3] & 255) << 8 | destData[dp + 2] & 255) << 8 | destData[dp + 1] & 255) << 8 | destData[dp] & 255;
                                    rq = destReds[(data & destRedMask) >>> destRedShift] & 255;
                                    gq = destGreens[(data & destGreenMask) >>> destGreenShift] & 255;
                                    bq = destBlues[(data & destBlueMask) >>> destBlueShift] & 255;
                                    aq = destAlphas[0 >>> destAlphaShift] & 255;
                                }
                            }
                            a = aq + ((a - aq) * alpha >> 16);
                            r = rq + ((r - rq) * alpha >> 16);
                            g = gq + ((g - gq) * alpha >> 16);
                            b = bq + ((b - bq) * alpha >> 16);
                        }
                        data = r >>> destRedPreShift << destRedShift | g >>> destGreenPreShift << destGreenShift | b >>> destBluePreShift << destBlueShift | a >>> destAlphaPreShift << destAlphaShift;
                        switch (dtype) {
                            case 0: {
                                destData[dp] = (byte)data;
                                break block25;
                            }
                            case 1: {
                                destData[dp] = (byte)(data >>> 8);
                                destData[dp + 1] = (byte)(data & 255);
                                break block25;
                            }
                            case 2: {
                                destData[dp] = (byte)(data & 255);
                                destData[dp + 1] = (byte)(data >>> 8);
                                break block25;
                            }
                            case 3: {
                                destData[dp] = (byte)(data >>> 16);
                                destData[dp + 1] = (byte)(data >>> 8);
                                destData[dp + 2] = (byte)(data & 255);
                                break block25;
                            }
                            case 4: {
                                destData[dp] = (byte)(data >>> 24);
                                destData[dp + 1] = (byte)(data >>> 16);
                                destData[dp + 2] = (byte)(data >>> 8);
                                destData[dp + 3] = (byte)(data & 255);
                                break block25;
                            }
                            case 5: {
                                destData[dp] = (byte)(data & 255);
                                destData[dp + 1] = (byte)(data >>> 8);
                                destData[dp + 2] = (byte)(data >>> 16);
                                destData[dp + 3] = (byte)(data >>> 24);
                            }
                        }
                    }
                }
                --dx;
                dp += dprxi;
                sfx = (sfx & 65535) + sfxi;
            }
            --dy;
            sp = spr += (sfy >>> 16) * srcStride;
            ap = apr += (sfy >>> 16) * alphaStride;
            sfy = (sfy & 65535) + sfyi;
            dp = dpr += dpryi;
        }
    }

    static void blit(int op, byte[] srcData, int srcDepth, int srcStride, int srcOrder, int srcX, int srcY, int srcWidth, int srcHeight, int srcRedMask, int srcGreenMask, int srcBlueMask, int alphaMode, byte[] alphaData, int alphaStride, int alphaX, int alphaY, byte[] destData, int destDepth, int destStride, int destOrder, int destX, int destY, int destWidth, int destHeight, byte[] destReds, byte[] destGreens, byte[] destBlues, boolean flipX, boolean flipY) {
        int[] berr;
        int[] gerr;
        int[] rerr;
        int apr;
        int dpryi;
        int dtype;
        int stype;
        int sbpp;
        if (destWidth <= 0 || destHeight <= 0 || alphaMode == 0) {
            return;
        }
        int dwm1 = destWidth - 1;
        int sfxi = dwm1 != 0 ? (int)((((long)srcWidth << 16) - 1L) / (long)dwm1) : 0;
        int dhm1 = destHeight - 1;
        int sfyi = dhm1 != 0 ? (int)((((long)srcHeight << 16) - 1L) / (long)dhm1) : 0;
        switch (srcDepth) {
            case 8: {
                sbpp = 1;
                stype = 0;
                break;
            }
            case 16: {
                sbpp = 2;
                stype = srcOrder == 1 ? 1 : 2;
                break;
            }
            case 24: {
                sbpp = 3;
                stype = 3;
                break;
            }
            case 32: {
                sbpp = 4;
                stype = srcOrder == 1 ? 4 : 5;
                break;
            }
            default: {
                return;
            }
        }
        int spr = srcY * srcStride + srcX * sbpp;
        switch (destDepth) {
            case 8: {
                dtype = 6;
                break;
            }
            case 4: {
                destStride <<= 1;
                dtype = 7;
                break;
            }
            case 2: {
                destStride <<= 2;
                dtype = 8;
                break;
            }
            case 1: {
                destStride <<= 3;
                dtype = destOrder == 1 ? 9 : 10;
                break;
            }
            default: {
                return;
            }
        }
        int dpr = (flipY ? destY + dhm1 : destY) * destStride + (flipX ? destX + dwm1 : destX);
        int dprxi = flipX ? -1 : 1;
        int n = dpryi = flipY ? -destStride : destStride;
        if ((op & 2) != 0) {
            switch (alphaMode) {
                case -3: 
                case -1: {
                    if (alphaData == null) {
                        alphaMode = 65536;
                    }
                    apr = alphaY * alphaStride + alphaX;
                    break;
                }
                case -4: {
                    if (alphaData == null) {
                        alphaMode = 65536;
                    }
                    apr = alphaY * (alphaStride <<= 3) + alphaX;
                    break;
                }
                case -5: {
                    return;
                }
                case -6: {
                    if (alphaData == null) {
                        alphaMode = 65536;
                    }
                    apr = 0;
                    break;
                }
                default: {
                    alphaMode = (alphaMode << 16) / 255;
                }
                case -2: {
                    apr = 0;
                    break;
                }
            }
        } else {
            alphaMode = 65536;
            apr = 0;
        }
        boolean ditherEnabled = (op & 4) != 0;
        int srcRedShift = ImageData.getChannelShift(srcRedMask);
        byte[] srcReds = ANY_TO_EIGHT[ImageData.getChannelWidth(srcRedMask, srcRedShift)];
        int srcGreenShift = ImageData.getChannelShift(srcGreenMask);
        byte[] srcGreens = ANY_TO_EIGHT[ImageData.getChannelWidth(srcGreenMask, srcGreenShift)];
        int srcBlueShift = ImageData.getChannelShift(srcBlueMask);
        byte[] srcBlues = ANY_TO_EIGHT[ImageData.getChannelWidth(srcBlueMask, srcBlueShift)];
        int srcAlphaShift = ImageData.getChannelShift(0);
        byte[] srcAlphas = ANY_TO_EIGHT[ImageData.getChannelWidth(0, srcAlphaShift)];
        int dp = dpr;
        int sp = spr;
        int ap = apr;
        int alpha = alphaMode;
        int r = 0;
        int g = 0;
        int b = 0;
        int a = 0;
        int indexq = 0;
        int lastindex = 0;
        int lastr = -1;
        int lastg = -1;
        int lastb = -1;
        int destPaletteSize = 1 << destDepth;
        if (destReds != null && destReds.length < destPaletteSize) {
            destPaletteSize = destReds.length;
        }
        if (ditherEnabled) {
            rerr = new int[destWidth + 2];
            gerr = new int[destWidth + 2];
            berr = new int[destWidth + 2];
        } else {
            rerr = null;
            gerr = null;
            berr = null;
        }
        int dy = destHeight;
        int sfy = sfyi;
        while (dy > 0) {
            int lrerr = 0;
            int lgerr = 0;
            int lberr = 0;
            int dx = destWidth;
            int sfx = sfxi;
            while (dx > 0) {
                block81: {
                    block80: {
                        switch (stype) {
                            case 0: {
                                int data = srcData[sp] & 0xFF;
                                sp += sfx >>> 16;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[0 >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 1: {
                                int data = (srcData[sp] & 0xFF) << 8 | srcData[sp + 1] & 0xFF;
                                sp += (sfx >>> 16) * 2;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[0 >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 2: {
                                int data = (srcData[sp + 1] & 0xFF) << 8 | srcData[sp] & 0xFF;
                                sp += (sfx >>> 16) * 2;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[0 >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 3: {
                                int data = ((srcData[sp] & 0xFF) << 8 | srcData[sp + 1] & 0xFF) << 8 | srcData[sp + 2] & 0xFF;
                                sp += (sfx >>> 16) * 3;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[0 >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 4: {
                                int data = (((srcData[sp] & 0xFF) << 8 | srcData[sp + 1] & 0xFF) << 8 | srcData[sp + 2] & 0xFF) << 8 | srcData[sp + 3] & 0xFF;
                                sp += (sfx >>> 16) * 4;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[0 >>> srcAlphaShift] & 0xFF;
                                break;
                            }
                            case 5: {
                                int data = (((srcData[sp + 3] & 0xFF) << 8 | srcData[sp + 2] & 0xFF) << 8 | srcData[sp + 1] & 0xFF) << 8 | srcData[sp] & 0xFF;
                                sp += (sfx >>> 16) * 4;
                                r = srcReds[(data & srcRedMask) >>> srcRedShift] & 0xFF;
                                g = srcGreens[(data & srcGreenMask) >>> srcGreenShift] & 0xFF;
                                b = srcBlues[(data & srcBlueMask) >>> srcBlueShift] & 0xFF;
                                a = srcAlphas[0 >>> srcAlphaShift] & 0xFF;
                            }
                        }
                        block27 : switch (alphaMode) {
                            case -1: {
                                alpha = ((alphaData[ap] & 0xFF) << 16) / 255;
                                ap += sfx >> 16;
                                break;
                            }
                            case -2: {
                                alpha = (a << 16) / 255;
                                break;
                            }
                            case -3: {
                                alpha = alphaData[ap] != 0 ? 65536 : 0;
                                ap += sfx >> 16;
                                break;
                            }
                            case -4: {
                                alpha = alphaData[ap >> 3] << (ap & 7) + 9 & 0x10000;
                                ap += sfx >> 16;
                                break;
                            }
                            case -6: {
                                alpha = 65536;
                                int i = 0;
                                while (i < alphaData.length) {
                                    if (r == alphaData[i] && g == alphaData[i + 1] && b == alphaData[i + 2]) {
                                        alpha = 0;
                                        break block27;
                                    }
                                    i += 3;
                                }
                                break;
                            }
                        }
                        if (alpha == 65536) break block80;
                        if (alpha == 0) break block81;
                        switch (dtype) {
                            case 6: {
                                indexq = destData[dp] & 0xFF;
                                break;
                            }
                            case 7: {
                                if ((dp & 1) != 0) {
                                    indexq = destData[dp >> 1] & 0xF;
                                    break;
                                }
                                indexq = destData[dp >> 1] >>> 4 & 0xF;
                                break;
                            }
                            case 8: {
                                indexq = destData[dp >> 2] >>> 6 - (dp & 3) * 2 & 3;
                                break;
                            }
                            case 9: {
                                indexq = destData[dp >> 3] >>> 7 - (dp & 7) & 1;
                                break;
                            }
                            case 10: {
                                indexq = destData[dp >> 3] >>> (dp & 7) & 1;
                            }
                        }
                        int rq = destReds[indexq] & 0xFF;
                        int gq = destGreens[indexq] & 0xFF;
                        int bq = destBlues[indexq] & 0xFF;
                        r = rq + ((r - rq) * alpha >> 16);
                        g = gq + ((g - gq) * alpha >> 16);
                        b = bq + ((b - bq) * alpha >> 16);
                    }
                    if (ditherEnabled) {
                        if ((r += rerr[dx] >> 4) < 0) {
                            r = 0;
                        } else if (r > 255) {
                            r = 255;
                        }
                        if ((g += gerr[dx] >> 4) < 0) {
                            g = 0;
                        } else if (g > 255) {
                            g = 255;
                        }
                        if ((b += berr[dx] >> 4) < 0) {
                            b = 0;
                        } else if (b > 255) {
                            b = 255;
                        }
                        rerr[dx] = lrerr;
                        gerr[dx] = lgerr;
                        berr[dx] = lberr;
                    }
                    if (r != lastr || g != lastg || b != lastb) {
                        int j = 0;
                        int minDistance = Integer.MAX_VALUE;
                        while (j < destPaletteSize) {
                            int dr = (destReds[j] & 0xFF) - r;
                            int dg = (destGreens[j] & 0xFF) - g;
                            int db = (destBlues[j] & 0xFF) - b;
                            int distance = dr * dr + dg * dg + db * db;
                            if (distance < minDistance) {
                                lastindex = j;
                                if (distance == 0) break;
                                minDistance = distance;
                            }
                            ++j;
                        }
                        lastr = r;
                        lastg = g;
                        lastb = b;
                    }
                    if (ditherEnabled) {
                        int dxp1;
                        int dxm1 = dx - 1;
                        int n2 = dxp1 = dx + 1;
                        lrerr = r - (destReds[lastindex] & 0xFF);
                        int acc = lrerr + lrerr + lrerr;
                        rerr[n2] = rerr[n2] + acc;
                        int n3 = dx;
                        rerr[n3] = rerr[n3] + (acc += lrerr + lrerr);
                        int n4 = dxm1;
                        rerr[n4] = rerr[n4] + (acc + lrerr + lrerr);
                        int n5 = dxp1;
                        lgerr = g - (destGreens[lastindex] & 0xFF);
                        acc = lgerr + lgerr + lgerr;
                        gerr[n5] = gerr[n5] + acc;
                        int n6 = dx;
                        gerr[n6] = gerr[n6] + (acc += lgerr + lgerr);
                        int n7 = dxm1;
                        gerr[n7] = gerr[n7] + (acc + lgerr + lgerr);
                        int n8 = dxp1;
                        lberr = b - (destBlues[lastindex] & 0xFF);
                        acc = lberr + lberr + lberr;
                        berr[n8] = berr[n8] + acc;
                        int n9 = dx;
                        berr[n9] = berr[n9] + (acc += lberr + lberr);
                        int n10 = dxm1;
                        berr[n10] = berr[n10] + (acc + lberr + lberr);
                    }
                    switch (dtype) {
                        case 6: {
                            destData[dp] = (byte)lastindex;
                            break;
                        }
                        case 7: {
                            if ((dp & 1) != 0) {
                                destData[dp >> 1] = (byte)(destData[dp >> 1] & 0xF0 | lastindex);
                                break;
                            }
                            destData[dp >> 1] = (byte)(destData[dp >> 1] & 0xF | lastindex << 4);
                            break;
                        }
                        case 8: {
                            int shift = 6 - (dp & 3) * 2;
                            destData[dp >> 2] = (byte)(destData[dp >> 2] & ~(3 << shift) | lastindex << shift);
                            break;
                        }
                        case 9: {
                            int shift = 7 - (dp & 7);
                            destData[dp >> 3] = (byte)(destData[dp >> 3] & ~(1 << shift) | lastindex << shift);
                            break;
                        }
                        case 10: {
                            int shift = dp & 7;
                            destData[dp >> 3] = (byte)(destData[dp >> 3] & ~(1 << shift) | lastindex << shift);
                        }
                    }
                }
                --dx;
                dp += dprxi;
                sfx = (sfx & 0xFFFF) + sfxi;
            }
            --dy;
            sp = spr += (sfy >>> 16) * srcStride;
            ap = apr += (sfy >>> 16) * alphaStride;
            sfy = (sfy & 0xFFFF) + sfyi;
            dp = dpr += dpryi;
        }
    }

    static int getChannelShift(int mask) {
        if (mask == 0) {
            return 0;
        }
        int i = 0;
        while ((mask & 1) == 0 && i < 32) {
            mask >>>= 1;
            ++i;
        }
        return i;
    }

    static int getChannelWidth(int mask, int shift) {
        if (mask == 0) {
            return 0;
        }
        mask >>>= shift;
        int i = shift;
        while ((mask & 1) != 0 && i < 32) {
            mask >>>= 1;
            ++i;
        }
        return i - shift;
    }

    static byte getChannelField(int data, int mask) {
        int shift = ImageData.getChannelShift(mask);
        return ANY_TO_EIGHT[ImageData.getChannelWidth(mask, shift)][(data & mask) >>> shift];
    }

    static ImageData createGradientBand(int width, int height, boolean vertical, RGB fromRGB, RGB toRGB, int redBits, int greenBits, int blueBits) {
        byte[] bitmapData;
        int bandHeight;
        int bandWidth;
        int bitmapDepth;
        PaletteData paletteData;
        if (redBits != 0 && greenBits != 0 && blueBits != 0) {
            paletteData = new PaletteData(65280, 0xFF0000, -16777216);
            bitmapDepth = 32;
            if (redBits >= 8 && greenBits >= 8 && blueBits >= 8) {
                int steps;
                if (vertical) {
                    bandWidth = 1;
                    bandHeight = height;
                    steps = bandHeight > 1 ? bandHeight - 1 : 1;
                } else {
                    bandWidth = width;
                    bandHeight = 1;
                    steps = bandWidth > 1 ? bandWidth - 1 : 1;
                }
                int bytesPerLine = bandWidth * 4;
                bitmapData = new byte[bandHeight * bytesPerLine];
                ImageData.buildPreciseGradientChannel(fromRGB.blue, toRGB.blue, steps, bandWidth, bandHeight, vertical, bitmapData, 0, bytesPerLine);
                ImageData.buildPreciseGradientChannel(fromRGB.green, toRGB.green, steps, bandWidth, bandHeight, vertical, bitmapData, 1, bytesPerLine);
                ImageData.buildPreciseGradientChannel(fromRGB.red, toRGB.red, steps, bandWidth, bandHeight, vertical, bitmapData, 2, bytesPerLine);
            } else {
                int steps;
                if (vertical) {
                    bandWidth = width < 8 ? width : 8;
                    bandHeight = height;
                    steps = bandHeight > 1 ? bandHeight - 1 : 1;
                } else {
                    bandWidth = width;
                    bandHeight = height < 8 ? height : 8;
                    steps = bandWidth > 1 ? bandWidth - 1 : 1;
                }
                int bytesPerLine = bandWidth * 4;
                bitmapData = new byte[bandHeight * bytesPerLine];
                ImageData.buildDitheredGradientChannel(fromRGB.blue, toRGB.blue, steps, bandWidth, bandHeight, vertical, bitmapData, 0, bytesPerLine, blueBits);
                ImageData.buildDitheredGradientChannel(fromRGB.green, toRGB.green, steps, bandWidth, bandHeight, vertical, bitmapData, 1, bytesPerLine, greenBits);
                ImageData.buildDitheredGradientChannel(fromRGB.red, toRGB.red, steps, bandWidth, bandHeight, vertical, bitmapData, 2, bytesPerLine, redBits);
            }
        } else {
            int blendi;
            paletteData = new PaletteData(new RGB[]{fromRGB, toRGB});
            bitmapDepth = 8;
            if (vertical) {
                bandWidth = width < 8 ? width : 8;
                bandHeight = height;
                blendi = bandHeight > 1 ? 0x1040000 / (bandHeight - 1) + 1 : 1;
            } else {
                bandWidth = width;
                bandHeight = height < 8 ? height : 8;
                blendi = bandWidth > 1 ? 0x1040000 / (bandWidth - 1) + 1 : 1;
            }
            int bytesPerLine = bandWidth + 3 & 0xFFFFFFFC;
            bitmapData = new byte[bandHeight * bytesPerLine];
            if (vertical) {
                int dy = 0;
                int blend = 0;
                int dp = 0;
                while (dy < bandHeight) {
                    int dx = 0;
                    while (dx < bandWidth) {
                        bitmapData[dp + dx] = blend + DITHER_MATRIX[dy & 7][dx] < 0x1000000 ? (byte)0 : 1;
                        ++dx;
                    }
                    ++dy;
                    blend += blendi;
                    dp += bytesPerLine;
                }
            } else {
                int dx = 0;
                int blend = 0;
                while (dx < bandWidth) {
                    int dy = 0;
                    int dptr = dx;
                    while (dy < bandHeight) {
                        bitmapData[dptr] = blend + DITHER_MATRIX[dy][dx & 7] < 0x1000000 ? (byte)0 : 1;
                        ++dy;
                        dptr += bytesPerLine;
                    }
                    ++dx;
                    blend += blendi;
                }
            }
        }
        return new ImageData(bandWidth, bandHeight, bitmapDepth, paletteData, 4, bitmapData);
    }

    static final void buildPreciseGradientChannel(int from, int to, int steps, int bandWidth, int bandHeight, boolean vertical, byte[] bitmapData, int dp, int bytesPerLine) {
        int val = from << 16;
        int inc = ((to << 16) - val) / steps + 1;
        if (vertical) {
            int dy = 0;
            while (dy < bandHeight) {
                bitmapData[dp] = (byte)(val >>> 16);
                val += inc;
                ++dy;
                dp += bytesPerLine;
            }
        } else {
            int dx = 0;
            while (dx < bandWidth) {
                bitmapData[dp] = (byte)(val >>> 16);
                val += inc;
                ++dx;
                dp += 4;
            }
        }
    }

    static final void buildDitheredGradientChannel(int from, int to, int steps, int bandWidth, int bandHeight, boolean vertical, byte[] bitmapData, int dp, int bytesPerLine, int bits) {
        int mask = 65280 >>> bits;
        int val = from << 16;
        int inc = ((to << 16) - val) / steps + 1;
        if (vertical) {
            int dy = 0;
            while (dy < bandHeight) {
                int dx = 0;
                int dptr = dp;
                while (dx < bandWidth) {
                    int thresh = DITHER_MATRIX[dy & 7][dx] >>> bits;
                    int temp = val + thresh;
                    bitmapData[dptr] = temp > 0xFFFFFF ? -1 : (byte)(temp >>> 16 & mask);
                    ++dx;
                    dptr += 4;
                }
                val += inc;
                ++dy;
                dp += bytesPerLine;
            }
        } else {
            int dx = 0;
            while (dx < bandWidth) {
                int dy = 0;
                int dptr = dp;
                while (dy < bandHeight) {
                    int thresh = DITHER_MATRIX[dy][dx & 7] >>> bits;
                    int temp = val + thresh;
                    bitmapData[dptr] = temp > 0xFFFFFF ? -1 : (byte)(temp >>> 16 & mask);
                    ++dy;
                    dptr += bytesPerLine;
                }
                val += inc;
                ++dx;
                dp += 4;
            }
        }
    }

    static void fillGradientRectangle(GC gc, Device device, int x, int y, int width, int height, boolean vertical, RGB fromRGB, RGB toRGB, int redBits, int greenBits, int blueBits) {
        ImageData band = ImageData.createGradientBand(width, height, vertical, fromRGB, toRGB, redBits, greenBits, blueBits);
        Image image = new Image(device, band);
        if (band.width == 1 || band.height == 1) {
            gc.drawImage(image, 0, 0, band.width, band.height, x, y, width, height);
        } else if (vertical) {
            int dx = 0;
            while (dx < width) {
                int blitWidth = width - dx;
                if (blitWidth > band.width) {
                    blitWidth = band.width;
                }
                gc.drawImage(image, 0, 0, blitWidth, band.height, dx + x, y, blitWidth, band.height);
                dx += band.width;
            }
        } else {
            int dy = 0;
            while (dy < height) {
                int blitHeight = height - dy;
                if (blitHeight > band.height) {
                    blitHeight = band.height;
                }
                gc.drawImage(image, 0, 0, band.width, blitHeight, x, dy + y, band.width, blitHeight);
                dy += band.height;
            }
        }
        image.dispose();
    }
}

