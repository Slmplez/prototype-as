/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.WinBMPFileFormat;

public final class WinICOFileFormat
extends FileFormat {
    byte[] bitInvertData(byte[] data, int startIndex, int endIndex) {
        int i = startIndex;
        while (i < endIndex) {
            data[i] = (byte)(255 - data[i - startIndex]);
            ++i;
        }
        return data;
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
            System.arraycopy(data, srcIndex, newData, destIndex, newBpl);
            srcIndex += bpl;
            destIndex += newBpl;
            ++y;
        }
        return newData;
    }

    int iconSize(ImageData i) {
        int shapeDataStride = (i.width * i.depth + 31) / 32 * 4;
        int maskDataStride = (i.width + 31) / 32 * 4;
        int dataSize = (shapeDataStride + maskDataStride) * i.height;
        int paletteSize = i.palette.colors != null ? i.palette.colors.length * 4 : 0;
        return 40 + paletteSize + dataSize;
    }

    boolean isFileFormat(LEDataInputStream stream) {
        try {
            byte[] header = new byte[4];
            stream.read(header);
            stream.unread(header);
            return header[0] == 0 && header[1] == 0 && header[2] == 1 && header[3] == 0;
        }
        catch (Exception exception) {
            return false;
        }
    }

    boolean isValidIcon(ImageData i) {
        switch (i.depth) {
            case 1: 
            case 4: 
            case 8: {
                if (i.palette.isDirect) {
                    return false;
                }
                int size = i.palette.colors.length;
                return size == 2 || size == 16 || size == 32 || size == 256;
            }
            case 24: 
            case 32: {
                return i.palette.isDirect;
            }
        }
        return false;
    }

    int loadFileHeader(LEDataInputStream byteStream) {
        int numIcons;
        int[] fileHeader = new int[3];
        try {
            fileHeader[0] = byteStream.readShort();
            fileHeader[1] = byteStream.readShort();
            fileHeader[2] = byteStream.readShort();
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        if (fileHeader[0] != 0 || fileHeader[1] != 1) {
            SWT.error(40);
        }
        if ((numIcons = fileHeader[2]) <= 0) {
            SWT.error(40);
        }
        return numIcons;
    }

    int loadFileHeader(LEDataInputStream byteStream, boolean hasHeader) {
        int numIcons;
        int[] fileHeader = new int[3];
        try {
            if (hasHeader) {
                fileHeader[0] = byteStream.readShort();
                fileHeader[1] = byteStream.readShort();
            } else {
                fileHeader[0] = 0;
                fileHeader[1] = 1;
            }
            fileHeader[2] = byteStream.readShort();
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        if (fileHeader[0] != 0 || fileHeader[1] != 1) {
            SWT.error(40);
        }
        if ((numIcons = fileHeader[2]) <= 0) {
            SWT.error(40);
        }
        return numIcons;
    }

    ImageData[] loadFromByteStream() {
        int numIcons = this.loadFileHeader(this.inputStream);
        int[][] headers = this.loadIconHeaders(numIcons);
        ImageData[] icons = new ImageData[headers.length];
        int i = 0;
        while (i < icons.length) {
            icons[i] = this.loadIcon(headers[i]);
            ++i;
        }
        return icons;
    }

    ImageData loadIcon(int[] iconHeader) {
        byte[] infoHeader = this.loadInfoHeader(iconHeader);
        WinBMPFileFormat bmpFormat = new WinBMPFileFormat();
        bmpFormat.inputStream = this.inputStream;
        PaletteData palette = bmpFormat.loadPalette(infoHeader);
        byte[] shapeData = bmpFormat.loadData(infoHeader);
        int width = infoHeader[4] & 0xFF | (infoHeader[5] & 0xFF) << 8 | (infoHeader[6] & 0xFF) << 16 | (infoHeader[7] & 0xFF) << 24;
        int height = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
        if (height < 0) {
            height = -height;
        }
        int depth = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
        infoHeader[14] = 1;
        infoHeader[15] = 0;
        byte[] maskData = bmpFormat.loadData(infoHeader);
        maskData = WinICOFileFormat.convertPad(maskData, width, height, 1, 4, 2);
        this.bitInvertData(maskData, 0, maskData.length);
        return ImageData.internal_new(width, height, depth, palette, 4, shapeData, 2, maskData, null, -1, -1, 3, 0, 0, 0, 0);
    }

    int[][] loadIconHeaders(int numIcons) {
        int[][] headers = new int[numIcons][7];
        try {
            int i = 0;
            while (i < numIcons) {
                headers[i][0] = this.inputStream.read();
                headers[i][1] = this.inputStream.read();
                headers[i][2] = this.inputStream.readShort();
                headers[i][3] = this.inputStream.readShort();
                headers[i][4] = this.inputStream.readShort();
                headers[i][5] = this.inputStream.readInt();
                headers[i][6] = this.inputStream.readInt();
                ++i;
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        return headers;
    }

    byte[] loadInfoHeader(int[] iconHeader) {
        int width = iconHeader[0];
        int height = iconHeader[1];
        int numColors = iconHeader[2];
        if (numColors == 0) {
            numColors = 256;
        }
        if (numColors != 2 && numColors != 8 && numColors != 16 && numColors != 32 && numColors != 256) {
            SWT.error(40);
        }
        if (this.inputStream.getPosition() < iconHeader[6]) {
            try {
                this.inputStream.skip(iconHeader[6] - this.inputStream.getPosition());
            }
            catch (IOException e) {
                SWT.error(39, e);
                return null;
            }
        }
        byte[] infoHeader = new byte[40];
        try {
            this.inputStream.read(infoHeader);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        if ((infoHeader[12] & 0xFF | (infoHeader[13] & 0xFF) << 8) != 1) {
            SWT.error(40);
        }
        int infoWidth = infoHeader[4] & 0xFF | (infoHeader[5] & 0xFF) << 8 | (infoHeader[6] & 0xFF) << 16 | (infoHeader[7] & 0xFF) << 24;
        int infoHeight = infoHeader[8] & 0xFF | (infoHeader[9] & 0xFF) << 8 | (infoHeader[10] & 0xFF) << 16 | (infoHeader[11] & 0xFF) << 24;
        int bitCount = infoHeader[14] & 0xFF | (infoHeader[15] & 0xFF) << 8;
        if (height == infoHeight && bitCount == 1) {
            height /= 2;
        }
        if (width != infoWidth || height * 2 != infoHeight || bitCount != 1 && bitCount != 4 && bitCount != 8 && bitCount != 24 && bitCount != 32) {
            SWT.error(40);
        }
        infoHeader[8] = (byte)(height & 0xFF);
        infoHeader[9] = (byte)(height >> 8 & 0xFF);
        infoHeader[10] = (byte)(height >> 16 & 0xFF);
        infoHeader[11] = (byte)(height >> 24 & 0xFF);
        return infoHeader;
    }

    void unloadIcon(ImageData icon) {
        int sizeImage = ((icon.width * icon.depth + 31) / 32 * 4 + (icon.width + 31) / 32 * 4) * icon.height;
        try {
            this.outputStream.writeInt(40);
            this.outputStream.writeInt(icon.width);
            this.outputStream.writeInt(icon.height * 2);
            this.outputStream.writeShort(1);
            this.outputStream.writeShort((short)icon.depth);
            this.outputStream.writeInt(0);
            this.outputStream.writeInt(sizeImage);
            this.outputStream.writeInt(0);
            this.outputStream.writeInt(0);
            this.outputStream.writeInt(icon.palette.colors != null ? icon.palette.colors.length : 0);
            this.outputStream.writeInt(0);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        byte[] rgbs = WinBMPFileFormat.paletteToBytes(icon.palette);
        try {
            this.outputStream.write(rgbs);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        this.unloadShapeData(icon);
        this.unloadMaskData(icon);
    }

    void unloadIconHeader(ImageData i) {
        int headerSize = 16;
        int offset = headerSize + 6;
        int iconSize = this.iconSize(i);
        try {
            this.outputStream.write(i.width);
            this.outputStream.write(i.height);
            this.outputStream.writeShort(i.palette.colors != null ? i.palette.colors.length : 0);
            this.outputStream.writeShort(0);
            this.outputStream.writeShort(0);
            this.outputStream.writeInt(iconSize);
            this.outputStream.writeInt(offset);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }

    void unloadIntoByteStream(ImageLoader loader) {
        ImageData image = loader.data[0];
        if (!this.isValidIcon(image)) {
            SWT.error(40);
        }
        try {
            this.outputStream.writeShort(0);
            this.outputStream.writeShort(1);
            this.outputStream.writeShort(1);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        this.unloadIconHeader(image);
        this.unloadIcon(image);
    }

    void unloadMaskData(ImageData icon) {
        ImageData mask = icon.getTransparencyMask();
        int bpl = (icon.width + 7) / 8;
        int pad = mask.scanlinePad;
        int srcBpl = (bpl + pad - 1) / pad * pad;
        int destBpl = (bpl + 3) / 4 * 4;
        byte[] buf = new byte[destBpl];
        int offset = (icon.height - 1) * srcBpl;
        byte[] data = mask.data;
        try {
            int i = 0;
            while (i < icon.height) {
                System.arraycopy(data, offset, buf, 0, bpl);
                this.bitInvertData(buf, 0, bpl);
                this.outputStream.write(buf, 0, destBpl);
                offset -= srcBpl;
                ++i;
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }

    void unloadShapeData(ImageData icon) {
        int bpl = (icon.width * icon.depth + 7) / 8;
        int pad = icon.scanlinePad;
        int srcBpl = (bpl + pad - 1) / pad * pad;
        int destBpl = (bpl + 3) / 4 * 4;
        byte[] buf = new byte[destBpl];
        int offset = (icon.height - 1) * srcBpl;
        byte[] data = icon.data;
        try {
            int i = 0;
            while (i < icon.height) {
                System.arraycopy(data, offset, buf, 0, bpl);
                this.outputStream.write(buf, 0, destBpl);
                offset -= srcBpl;
                ++i;
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }
}

