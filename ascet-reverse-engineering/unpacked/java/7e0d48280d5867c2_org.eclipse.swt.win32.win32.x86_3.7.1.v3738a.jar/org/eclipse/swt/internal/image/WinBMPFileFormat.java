/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;

public final class WinBMPFileFormat
extends FileFormat {
    static final int BMPFileHeaderSize = 14;
    static final int BMPHeaderFixedSize = 40;
    int importantColors;
    Point pelsPerMeter = new Point(0, 0);

    int compress(int comp, byte[] src, int srcOffset, int numBytes, byte[] dest, boolean last) {
        if (comp == 1) {
            return this.compressRLE8Data(src, srcOffset, numBytes, dest, last);
        }
        if (comp == 2) {
            return this.compressRLE4Data(src, srcOffset, numBytes, dest, last);
        }
        SWT.error(40);
        return 0;
    }

    int compressRLE4Data(byte[] src, int srcOffset, int numBytes, byte[] dest, boolean last) {
        int sp = srcOffset;
        int end = srcOffset + numBytes;
        int dp = 0;
        int size = 0;
        while (sp < end) {
            int left = end - sp - 1;
            if (left > 127) {
                left = 127;
            }
            int n = 0;
            while (n < left) {
                if (src[sp + n] == src[sp + n + 1]) break;
                ++n;
            }
            if (n < 127 && n == left) {
                ++n;
            }
            switch (n) {
                case 0: {
                    break;
                }
                case 1: {
                    dest[dp] = 2;
                    dest[++dp] = src[sp];
                    ++dp;
                    ++sp;
                    size += 2;
                    break;
                }
                default: {
                    dest[dp] = 0;
                    dest[++dp] = (byte)(n + n);
                    ++dp;
                    int i = n;
                    while (i > 0) {
                        dest[dp] = src[sp];
                        ++dp;
                        ++sp;
                        --i;
                    }
                    size += 2 + n;
                    if ((n & 1) == 0) break;
                    dest[dp] = 0;
                    ++dp;
                    ++size;
                }
            }
            left = end - sp;
            if (left <= 0) continue;
            if (left > 127) {
                left = 127;
            }
            byte theByte = src[sp];
            n = 1;
            while (n < left) {
                if (src[sp + n] != theByte) break;
                ++n;
            }
            dest[dp] = (byte)(n + n);
            dest[++dp] = theByte;
            ++dp;
            sp += n;
            size += 2;
        }
        dest[dp] = 0;
        ++dp;
        if (last) {
            dest[dp] = 1;
            ++dp;
        } else {
            dest[dp] = 0;
            ++dp;
        }
        return size += 2;
    }

    int compressRLE8Data(byte[] src, int srcOffset, int numBytes, byte[] dest, boolean last) {
        int sp = srcOffset;
        int end = srcOffset + numBytes;
        int dp = 0;
        int size = 0;
        while (sp < end) {
            int left = end - sp - 1;
            if (left > 254) {
                left = 254;
            }
            int n = 0;
            while (n < left) {
                if (src[sp + n] == src[sp + n + 1]) break;
                ++n;
            }
            if (n == left) {
                ++n;
            }
            switch (n) {
                case 0: {
                    break;
                }
                case 2: {
                    dest[dp] = 1;
                    dest[++dp] = src[sp];
                    ++dp;
                    ++sp;
                    size += 2;
                }
                case 1: {
                    dest[dp] = 1;
                    dest[++dp] = src[sp];
                    ++dp;
                    ++sp;
                    size += 2;
                    break;
                }
                default: {
                    dest[dp] = 0;
                    dest[++dp] = (byte)n;
                    ++dp;
                    int i = n;
                    while (i > 0) {
                        dest[dp] = src[sp];
                        ++dp;
                        ++sp;
                        --i;
                    }
                    size += 2 + n;
                    if ((n & 1) == 0) break;
                    dest[dp] = 0;
                    ++dp;
                    ++size;
                }
            }
            left = end - sp;
            if (left <= 0) continue;
            if (left > 255) {
                left = 255;
            }
            byte theByte = src[sp];
            n = 1;
            while (n < left) {
                if (src[sp + n] != theByte) break;
                ++n;
            }
            dest[dp] = (byte)n;
            dest[++dp] = theByte;
            ++dp;
            sp += n;
            size += 2;
        }
        dest[dp] = 0;
        ++dp;
        if (last) {
            dest[dp] = 1;
            ++dp;
        } else {
            dest[dp] = 0;
            ++dp;
        }
        return size += 2;
    }

    void convertPixelsToBGR(ImageData image, byte[] dest) {
        byte[] data = image.data;
        PaletteData palette = image.palette;
        int y = 0;
        while (y < image.height) {
            int srcX = 0;
            int srcY = y;
            int numOfBytes = image.depth / 8;
            int index = y * image.bytesPerLine;
            int i = 0;
            while (i < image.width) {
                int g;
                int pixel = 0;
                switch (image.depth) {
                    case 32: {
                        pixel = (data[index] & 0xFF) << 24 | (data[index + 1] & 0xFF) << 16 | (data[index + 2] & 0xFF) << 8 | data[index + 3] & 0xFF;
                        break;
                    }
                    case 24: {
                        pixel = (data[index] & 0xFF) << 16 | (data[index + 1] & 0xFF) << 8 | data[index + 2] & 0xFF;
                        break;
                    }
                    case 16: {
                        pixel = (data[index + 1] & 0xFF) << 8 | data[index] & 0xFF;
                        break;
                    }
                    default: {
                        SWT.error(38);
                    }
                }
                if (image.depth == 16) {
                    int r = pixel & palette.redMask;
                    r = palette.redShift < 0 ? r >>> -palette.redShift : r << palette.redShift;
                    g = pixel & palette.greenMask;
                    g = palette.greenShift < 0 ? g >>> -palette.greenShift : g << palette.greenShift;
                    int b = pixel & palette.blueMask;
                    b = palette.blueShift < 0 ? b >>> -palette.blueShift : b << palette.blueShift;
                    int modPixel = r << 7 | (g &= 0xF8) << 2 | b >> 3;
                    dest[index] = (byte)(modPixel & 0xFF);
                    dest[index + 1] = (byte)(modPixel >> 8 & 0xFF);
                } else {
                    int b = pixel & palette.blueMask;
                    dest[index] = (byte)(palette.blueShift < 0 ? b >>> -palette.blueShift : b << palette.blueShift);
                    g = pixel & palette.greenMask;
                    dest[index + 1] = (byte)(palette.greenShift < 0 ? g >>> -palette.greenShift : g << palette.greenShift);
                    int r = pixel & palette.redMask;
                    dest[index + 2] = (byte)(palette.redShift < 0 ? r >>> -palette.redShift : r << palette.redShift);
                    if (numOfBytes == 4) {
                        dest[index + 3] = 0;
                    }
                }
                if (++srcX >= image.width) {
                    index = ++srcY * image.bytesPerLine;
                    srcX = 0;
                } else {
                    index += numOfBytes;
                }
                ++i;
            }
            ++y;
        }
    }

    void decompressData(byte[] src, byte[] dest, int stride, int cmp) {
        if (cmp == 1) {
            if (this.decompressRLE8Data(src, src.length, stride, dest, dest.length) <= 0) {
                SWT.error(40);
            }
            return;
        }
        if (cmp == 2) {
            if (this.decompressRLE4Data(src, src.length, stride, dest, dest.length) <= 0) {
                SWT.error(40);
            }
            return;
        }
        SWT.error(40);
    }

    int decompressRLE4Data(byte[] src, int numBytes, int stride, byte[] dest, int destSize) {
        int sp = 0;
        int se = numBytes;
        int dp = 0;
        int de = destSize;
        int x = 0;
        int y = 0;
        block5: while (sp < se) {
            int len = src[sp] & 0xFF;
            ++sp;
            if (len == 0) {
                len = src[sp] & 0xFF;
                ++sp;
                switch (len) {
                    case 0: {
                        x = 0;
                        dp = ++y * stride;
                        if (dp <= de) continue block5;
                        return -1;
                    }
                    case 1: {
                        return 1;
                    }
                    case 2: {
                        x += src[sp] & 0xFF;
                        y += src[++sp] & 0xFF;
                        ++sp;
                        dp = y * stride + x / 2;
                        if (dp <= de) continue block5;
                        return -1;
                    }
                    default: {
                        if ((len & 1) != 0) {
                            return -1;
                        }
                        x += len;
                        if ((len /= 2) > se - sp) {
                            return -1;
                        }
                        if (len > de - dp) {
                            return -1;
                        }
                        int i = 0;
                        while (i < len) {
                            dest[dp] = src[sp];
                            ++dp;
                            ++sp;
                            ++i;
                        }
                        if ((sp & 1) == 0) continue block5;
                        ++sp;
                        break;
                    }
                }
                continue;
            }
            if ((len & 1) != 0) {
                return -1;
            }
            x += len;
            byte theByte = src[sp];
            ++sp;
            if ((len /= 2) > de - dp) {
                return -1;
            }
            int i = 0;
            while (i < len) {
                dest[dp] = theByte;
                ++dp;
                ++i;
            }
        }
        return 1;
    }

    int decompressRLE8Data(byte[] src, int numBytes, int stride, byte[] dest, int destSize) {
        int sp = 0;
        int se = numBytes;
        int dp = 0;
        int de = destSize;
        int x = 0;
        int y = 0;
        block5: while (sp < se) {
            int len = src[sp] & 0xFF;
            ++sp;
            if (len == 0) {
                len = src[sp] & 0xFF;
                ++sp;
                switch (len) {
                    case 0: {
                        x = 0;
                        dp = ++y * stride;
                        if (dp <= de) continue block5;
                        return -1;
                    }
                    case 1: {
                        return 1;
                    }
                    case 2: {
                        x += src[sp] & 0xFF;
                        y += src[++sp] & 0xFF;
                        ++sp;
                        dp = y * stride + x;
                        if (dp <= de) continue block5;
                        return -1;
                    }
                    default: {
                        if (len > se - sp) {
                            return -1;
                        }
                        if (len > de - dp) {
                            return -1;
                        }
                        int i = 0;
                        while (i < len) {
                            dest[dp] = src[sp];
                            ++dp;
                            ++sp;
                            ++i;
                        }
                        if ((sp & 1) != 0) {
                            ++sp;
                        }
                        x += len;
                        break;
                    }
                }
                continue;
            }
            byte theByte = src[sp];
            ++sp;
            if (len > de - dp) {
                return -1;
            }
            int i = 0;
            while (i < len) {
                dest[dp] = theByte;
                ++dp;
                ++i;
            }
            x += len;
        }
        return 1;
    }

    boolean isFileFormat(LEDataInputStream stream) {
        try {
            byte[] header = new byte[18];
            stream.read(header);
            stream.unread(header);
            int infoHeaderSize = header[14] & 0xFF | (header[15] & 0xFF) << 8 | (header[16] & 0xFF) << 16 | (header[17] & 0xFF) << 24;
            return header[0] == 66 && header[1] == 77 && infoHeaderSize >= 40;
        }
        catch (Exception exception) {
            return false;
        }
    }

    boolean isPaletteBMP(PaletteData pal, int depth) {
        switch (depth) {
            case 32: {
                return pal.redMask == 65280 && pal.greenMask == 0xFF0000 && pal.blueMask == -16777216;
            }
            case 24: {
                return pal.redMask == 255 && pal.greenMask == 65280 && pal.blueMask == 0xFF0000;
            }
            case 16: {
                return pal.redMask == 31744 && pal.greenMask == 992 && pal.blueMask == 31;
            }
        }
        return true;
    }

    byte[] loadData(byte[] infoHeader) {
        int width = infoHeader[4] & 0xFF | (infoHeader[5] & 0xFF) << 8 | (infoHeader[6] & 0xFF) << 16 | (infoHeader[7] & 0xFF) << 24;
        int height = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
        int bitCount = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
        int stride = (width * bitCount + 7) / 8;
        stride = (stride + 3) / 4 * 4;
        byte[] data = this.loadData(infoHeader, stride);
        this.flipScanLines(data, stride, height);
        return data;
    }

    byte[] loadData(byte[] infoHeader, int stride) {
        int height = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
        if (height < 0) {
            height = -height;
        }
        int dataSize = height * stride;
        byte[] data = new byte[dataSize];
        int cmp = infoHeader[16] & 0xFF | (infoHeader[17] & 0xFF) << 8 | (infoHeader[18] & 0xFF) << 16 | (infoHeader[19] & 0xFF) << 24;
        if (cmp == 0 || cmp == 3) {
            try {
                if (this.inputStream.read(data) != dataSize) {
                    SWT.error(40);
                }
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
        } else {
            int compressedSize = infoHeader[20] & 0xFF | (infoHeader[21] & 0xFF) << 8 | (infoHeader[22] & 0xFF) << 16 | (infoHeader[23] & 0xFF) << 24;
            byte[] compressed = new byte[compressedSize];
            try {
                if (this.inputStream.read(compressed) != compressedSize) {
                    SWT.error(40);
                }
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            this.decompressData(compressed, data, stride, cmp);
        }
        return data;
    }

    int[] loadFileHeader() {
        int[] header = new int[5];
        try {
            header[0] = this.inputStream.readShort();
            header[1] = this.inputStream.readInt();
            header[2] = this.inputStream.readShort();
            header[3] = this.inputStream.readShort();
            header[4] = this.inputStream.readInt();
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        if (header[0] != 19778) {
            SWT.error(40);
        }
        return header;
    }

    ImageData[] loadFromByteStream() {
        int[] fileHeader = this.loadFileHeader();
        byte[] infoHeader = new byte[40];
        try {
            this.inputStream.read(infoHeader);
        }
        catch (Exception e) {
            SWT.error(39, e);
        }
        int width = infoHeader[4] & 0xFF | (infoHeader[5] & 0xFF) << 8 | (infoHeader[6] & 0xFF) << 16 | (infoHeader[7] & 0xFF) << 24;
        int height = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
        if (height < 0) {
            height = -height;
        }
        int bitCount = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
        this.compression = infoHeader[16] & 0xFF | (infoHeader[17] & 0xFF) << 8 | (infoHeader[18] & 0xFF) << 16 | (infoHeader[19] & 0xFF) << 24;
        PaletteData palette = this.loadPalette(infoHeader);
        if (this.inputStream.getPosition() < fileHeader[4]) {
            try {
                this.inputStream.skip(fileHeader[4] - this.inputStream.getPosition());
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
        }
        byte[] data = this.loadData(infoHeader);
        this.importantColors = infoHeader[36] & 0xFF | (infoHeader[37] & 0xFF) << 8 | (infoHeader[38] & 0xFF) << 16 | (infoHeader[39] & 0xFF) << 24;
        int xPelsPerMeter = infoHeader[24] & 0xFF | (infoHeader[25] & 0xFF) << 8 | (infoHeader[26] & 0xFF) << 16 | (infoHeader[27] & 0xFF) << 24;
        int yPelsPerMeter = infoHeader[28] & 0xFF | (infoHeader[29] & 0xFF) << 8 | (infoHeader[30] & 0xFF) << 16 | (infoHeader[31] & 0xFF) << 24;
        this.pelsPerMeter = new Point(xPelsPerMeter, yPelsPerMeter);
        int type = this.compression == 1 || this.compression == 2 ? 1 : 0;
        return new ImageData[]{ImageData.internal_new(width, height, bitCount, palette, 4, data, 0, null, null, -1, -1, type, 0, 0, 0, 0)};
    }

    PaletteData loadPalette(byte[] infoHeader) {
        int depth = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
        if (depth <= 8) {
            int numColors = infoHeader[32] & 0xFF | (infoHeader[33] & 0xFF) << 8 | (infoHeader[34] & 0xFF) << 16 | (infoHeader[35] & 0xFF) << 24;
            if (numColors == 0) {
                numColors = 1 << depth;
            } else if (numColors > 256) {
                numColors = 256;
            }
            byte[] buf = new byte[numColors * 4];
            try {
                if (this.inputStream.read(buf) != buf.length) {
                    SWT.error(40);
                }
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            return this.paletteFromBytes(buf, numColors);
        }
        if (depth == 16) {
            if (this.compression == 3) {
                try {
                    return new PaletteData(this.inputStream.readInt(), this.inputStream.readInt(), this.inputStream.readInt());
                }
                catch (IOException e) {
                    SWT.error(39, e);
                }
            }
            return new PaletteData(31744, 992, 31);
        }
        if (depth == 24) {
            return new PaletteData(255, 65280, 0xFF0000);
        }
        if (this.compression == 3) {
            try {
                return new PaletteData(this.inputStream.readInt(), this.inputStream.readInt(), this.inputStream.readInt());
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
        }
        return new PaletteData(65280, 0xFF0000, -16777216);
    }

    PaletteData paletteFromBytes(byte[] bytes, int numColors) {
        int bytesOffset = 0;
        RGB[] colors = new RGB[numColors];
        int i = 0;
        while (i < numColors) {
            colors[i] = new RGB(bytes[bytesOffset + 2] & 0xFF, bytes[bytesOffset + 1] & 0xFF, bytes[bytesOffset] & 0xFF);
            bytesOffset += 4;
            ++i;
        }
        return new PaletteData(colors);
    }

    static byte[] paletteToBytes(PaletteData pal) {
        int n = pal.colors == null ? 0 : (pal.colors.length < 256 ? pal.colors.length : 256);
        byte[] bytes = new byte[n * 4];
        int offset = 0;
        int i = 0;
        while (i < n) {
            RGB col = pal.colors[i];
            bytes[offset] = (byte)col.blue;
            bytes[offset + 1] = (byte)col.green;
            bytes[offset + 2] = (byte)col.red;
            offset += 4;
            ++i;
        }
        return bytes;
    }

    int unloadData(ImageData image, byte[] data, OutputStream out, int comp) {
        int totalSize = 0;
        try {
            if (comp == 0) {
                return this.unloadDataNoCompression(image, data, out);
            }
            int bpl = (image.width * image.depth + 7) / 8;
            int bmpBpl = (bpl + 3) / 4 * 4;
            int imageBpl = image.bytesPerLine;
            byte[] buf = new byte[bmpBpl * 2];
            int srcOffset = imageBpl * (image.height - 1);
            if (data == null) {
                data = image.data;
            }
            totalSize = 0;
            byte[] buf2 = new byte[32768];
            int buf2Offset = 0;
            int y = image.height - 1;
            while (y >= 0) {
                int lineSize = this.compress(comp, data, srcOffset, bpl, buf, y == 0);
                if (buf2Offset + lineSize > buf2.length) {
                    out.write(buf2, 0, buf2Offset);
                    buf2Offset = 0;
                }
                System.arraycopy(buf, 0, buf2, buf2Offset, lineSize);
                buf2Offset += lineSize;
                totalSize += lineSize;
                srcOffset -= imageBpl;
                --y;
            }
            if (buf2Offset > 0) {
                out.write(buf2, 0, buf2Offset);
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        return totalSize;
    }

    int unloadDataNoCompression(ImageData image, byte[] data, OutputStream out) {
        int bmpBpl = 0;
        try {
            int bpl = (image.width * image.depth + 7) / 8;
            bmpBpl = (bpl + 3) / 4 * 4;
            int linesPerBuf = 32678 / bmpBpl;
            byte[] buf = new byte[linesPerBuf * bmpBpl];
            if (data == null) {
                data = image.data;
            }
            int imageBpl = image.bytesPerLine;
            int dataIndex = imageBpl * (image.height - 1);
            if (image.depth == 16) {
                int y = 0;
                while (y < image.height) {
                    int count = image.height - y;
                    if (linesPerBuf < count) {
                        count = linesPerBuf;
                    }
                    int bufOffset = 0;
                    int i = 0;
                    while (i < count) {
                        int wIndex = 0;
                        while (wIndex < bpl) {
                            buf[bufOffset + wIndex + 1] = data[dataIndex + wIndex + 1];
                            buf[bufOffset + wIndex] = data[dataIndex + wIndex];
                            wIndex += 2;
                        }
                        bufOffset += bmpBpl;
                        dataIndex -= imageBpl;
                        ++i;
                    }
                    out.write(buf, 0, bufOffset);
                    y += linesPerBuf;
                }
            } else {
                int y = 0;
                while (y < image.height) {
                    int tmp = image.height - y;
                    int count = tmp < linesPerBuf ? tmp : linesPerBuf;
                    int bufOffset = 0;
                    int i = 0;
                    while (i < count) {
                        System.arraycopy(data, dataIndex, buf, bufOffset, bpl);
                        bufOffset += bmpBpl;
                        dataIndex -= imageBpl;
                        ++i;
                    }
                    out.write(buf, 0, bufOffset);
                    y += linesPerBuf;
                }
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        return bmpBpl * image.height;
    }

    void unloadIntoByteStream(ImageLoader loader) {
        byte[] rgbs;
        int numCols;
        int comp;
        ImageData image = loader.data[0];
        if (image.depth != 1 && image.depth != 4 && image.depth != 8 && image.depth != 16 && image.depth != 24 && image.depth != 32) {
            SWT.error(38);
        }
        if (!((comp = this.compression) == 0 || comp == 1 && image.depth == 8 || comp == 2 && image.depth == 4)) {
            SWT.error(40);
        }
        PaletteData pal = image.palette;
        if (image.depth == 16 || image.depth == 24 || image.depth == 32) {
            if (!pal.isDirect) {
                SWT.error(40);
            }
            numCols = 0;
            rgbs = null;
        } else {
            if (pal.isDirect) {
                SWT.error(40);
            }
            numCols = pal.colors.length;
            rgbs = WinBMPFileFormat.paletteToBytes(pal);
        }
        int headersSize = 54;
        int[] fileHeader = new int[]{19778, 0, 0, 0, headersSize};
        if (rgbs != null) {
            fileHeader[4] = fileHeader[4] + rgbs.length;
        }
        byte[] iData = null;
        if (pal.isDirect && !this.isPaletteBMP(pal, image.depth)) {
            iData = new byte[image.data.length];
            this.convertPixelsToBGR(image, iData);
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        this.unloadData(image, iData, out, comp);
        byte[] data = out.toByteArray();
        fileHeader[1] = fileHeader[4] + data.length;
        try {
            this.outputStream.writeShort(fileHeader[0]);
            this.outputStream.writeInt(fileHeader[1]);
            this.outputStream.writeShort(fileHeader[2]);
            this.outputStream.writeShort(fileHeader[3]);
            this.outputStream.writeInt(fileHeader[4]);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        try {
            this.outputStream.writeInt(40);
            this.outputStream.writeInt(image.width);
            this.outputStream.writeInt(image.height);
            this.outputStream.writeShort(1);
            this.outputStream.writeShort((short)image.depth);
            this.outputStream.writeInt(comp);
            this.outputStream.writeInt(data.length);
            this.outputStream.writeInt(this.pelsPerMeter.x);
            this.outputStream.writeInt(this.pelsPerMeter.y);
            this.outputStream.writeInt(numCols);
            this.outputStream.writeInt(this.importantColors);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        if (numCols > 0) {
            try {
                this.outputStream.write(rgbs);
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
        }
        try {
            this.outputStream.write(data);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }

    void flipScanLines(byte[] data, int stride, int height) {
        int i1 = 0;
        int i2 = (height - 1) * stride;
        int i = 0;
        while (i < height / 2) {
            int index = 0;
            while (index < stride) {
                byte b = data[index + i1];
                data[index + i1] = data[index + i2];
                data[index + i2] = b;
                ++index;
            }
            i1 += stride;
            i2 -= stride;
            ++i;
        }
    }
}

