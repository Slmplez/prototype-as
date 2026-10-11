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
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;

public final class OS2BMPFileFormat
extends FileFormat {
    static final int BMPFileHeaderSize = 14;
    static final int BMPHeaderFixedSize = 12;
    int width;
    int height;
    int bitCount;

    boolean isFileFormat(LEDataInputStream stream) {
        try {
            byte[] header = new byte[18];
            stream.read(header);
            stream.unread(header);
            int infoHeaderSize = header[14] & 0xFF | (header[15] & 0xFF) << 8 | (header[16] & 0xFF) << 16 | (header[17] & 0xFF) << 24;
            return header[0] == 66 && header[1] == 77 && infoHeaderSize == 12;
        }
        catch (Exception exception) {
            return false;
        }
    }

    byte[] loadData(byte[] infoHeader) {
        int stride = (this.width * this.bitCount + 7) / 8;
        stride = (stride + 3) / 4 * 4;
        byte[] data = this.loadData(infoHeader, stride);
        this.flipScanLines(data, stride, this.height);
        return data;
    }

    byte[] loadData(byte[] infoHeader, int stride) {
        int dataSize = this.height * stride;
        byte[] data = new byte[dataSize];
        try {
            if (this.inputStream.read(data) != dataSize) {
                SWT.error(40);
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
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
        byte[] infoHeader = new byte[12];
        try {
            this.inputStream.read(infoHeader);
        }
        catch (Exception e) {
            SWT.error(39, e);
        }
        this.width = infoHeader[4] & 0xFF | (infoHeader[5] & 0xFF) << 8;
        this.height = infoHeader[6] & 0xFF | (infoHeader[7] & 0xFF) << 8;
        this.bitCount = infoHeader[10] & 0xFF | (infoHeader[11] & 0xFF) << 8;
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
        int type = 7;
        return new ImageData[]{ImageData.internal_new(this.width, this.height, this.bitCount, palette, 4, data, 0, null, null, -1, -1, type, 0, 0, 0, 0)};
    }

    PaletteData loadPalette(byte[] infoHeader) {
        if (this.bitCount <= 8) {
            int numColors = 1 << this.bitCount;
            byte[] buf = new byte[numColors * 3];
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
        if (this.bitCount == 16) {
            return new PaletteData(31744, 992, 31);
        }
        if (this.bitCount == 24) {
            return new PaletteData(255, 65280, 0xFF0000);
        }
        return new PaletteData(65280, 0xFF0000, -16777216);
    }

    PaletteData paletteFromBytes(byte[] bytes, int numColors) {
        int bytesOffset = 0;
        RGB[] colors = new RGB[numColors];
        int i = 0;
        while (i < numColors) {
            colors[i] = new RGB(bytes[bytesOffset + 2] & 0xFF, bytes[bytesOffset + 1] & 0xFF, bytes[bytesOffset] & 0xFF);
            bytesOffset += 3;
            ++i;
        }
        return new PaletteData(colors);
    }

    static byte[] paletteToBytes(PaletteData pal) {
        int n = pal.colors == null ? 0 : (pal.colors.length < 256 ? pal.colors.length : 256);
        byte[] bytes = new byte[n * 3];
        int offset = 0;
        int i = 0;
        while (i < n) {
            RGB col = pal.colors[i];
            bytes[offset] = (byte)col.blue;
            bytes[offset + 1] = (byte)col.green;
            bytes[offset + 2] = (byte)col.red;
            offset += 3;
            ++i;
        }
        return bytes;
    }

    int unloadData(ImageData image, OutputStream out) {
        int bmpBpl = 0;
        try {
            int bpl = (image.width * image.depth + 7) / 8;
            bmpBpl = (bpl + 3) / 4 * 4;
            int linesPerBuf = 32678 / bmpBpl;
            byte[] buf = new byte[linesPerBuf * bmpBpl];
            byte[] data = image.data;
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
        ImageData image = loader.data[0];
        if (image.depth != 1 && image.depth != 4 && image.depth != 8 && image.depth != 16 && image.depth != 24 && image.depth != 32) {
            SWT.error(38);
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
            rgbs = OS2BMPFileFormat.paletteToBytes(pal);
        }
        int headersSize = 26;
        int[] fileHeader = new int[]{19778, 0, 0, 0, headersSize};
        if (rgbs != null) {
            fileHeader[4] = fileHeader[4] + rgbs.length;
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        this.unloadData(image, out);
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
            this.outputStream.writeInt(12);
            this.outputStream.writeShort(image.width);
            this.outputStream.writeShort(image.height);
            this.outputStream.writeShort(1);
            this.outputStream.writeShort((short)image.depth);
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

