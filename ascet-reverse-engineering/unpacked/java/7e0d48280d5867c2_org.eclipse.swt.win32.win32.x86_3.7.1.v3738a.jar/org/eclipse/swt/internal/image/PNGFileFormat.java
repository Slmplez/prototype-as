/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngChunkReader;
import org.eclipse.swt.internal.image.PngDecodingDataStream;
import org.eclipse.swt.internal.image.PngEncoder;
import org.eclipse.swt.internal.image.PngIdatChunk;
import org.eclipse.swt.internal.image.PngIhdrChunk;
import org.eclipse.swt.internal.image.PngInputStream;
import org.eclipse.swt.internal.image.PngPlteChunk;
import org.eclipse.swt.internal.image.PngTrnsChunk;

public final class PNGFileFormat
extends FileFormat {
    static final int SIGNATURE_LENGTH = 8;
    static final int PRIME = 65521;
    PngIhdrChunk headerChunk;
    PngPlteChunk paletteChunk;
    ImageData imageData;
    byte[] data;
    byte[] alphaPalette;
    byte headerByte1;
    byte headerByte2;
    int adler;

    void readSignature() throws IOException {
        byte[] signature = new byte[8];
        this.inputStream.read(signature);
    }

    ImageData[] loadFromByteStream() {
        try {
            this.readSignature();
            PngChunkReader chunkReader = new PngChunkReader(this.inputStream);
            this.headerChunk = chunkReader.getIhdrChunk();
            int width = this.headerChunk.getWidth();
            int height = this.headerChunk.getHeight();
            if (width <= 0 || height <= 0) {
                SWT.error(40);
            }
            int imageSize = this.getAlignedBytesPerRow() * height;
            this.data = new byte[imageSize];
            this.imageData = ImageData.internal_new(width, height, this.headerChunk.getSwtBitsPerPixel(), new PaletteData(0, 0, 0), 4, this.data, 0, null, null, -1, -1, 5, 0, 0, 0, 0);
            if (this.headerChunk.usesDirectColor()) {
                this.imageData.palette = this.headerChunk.getPaletteData();
            }
            while (chunkReader.hasMoreChunks()) {
                this.readNextChunk(chunkReader);
            }
            return new ImageData[]{this.imageData};
        }
        catch (IOException iOException) {
            SWT.error(40);
            return null;
        }
    }

    void readNextChunk(PngChunkReader chunkReader) throws IOException {
        PngChunk chunk = chunkReader.readNextChunk();
        switch (chunk.getChunkType()) {
            case 3: {
                break;
            }
            case 1: {
                if (this.headerChunk.usesDirectColor()) break;
                this.paletteChunk = (PngPlteChunk)chunk;
                this.imageData.palette = this.paletteChunk.getPaletteData();
                break;
            }
            case 5: {
                PngTrnsChunk trnsChunk = (PngTrnsChunk)chunk;
                if (trnsChunk.getTransparencyType(this.headerChunk) == 0) {
                    this.imageData.transparentPixel = trnsChunk.getSwtTransparentPixel(this.headerChunk);
                    break;
                }
                this.alphaPalette = trnsChunk.getAlphaValues(this.headerChunk, this.paletteChunk);
                int transparentCount = 0;
                int transparentPixel = -1;
                int i = 0;
                while (i < this.alphaPalette.length) {
                    if ((this.alphaPalette[i] & 0xFF) != 255) {
                        ++transparentCount;
                        transparentPixel = i;
                    }
                    ++i;
                }
                if (transparentCount == 0) {
                    this.alphaPalette = null;
                    break;
                }
                if (transparentCount != true || this.alphaPalette[transparentPixel] != 0) break;
                this.alphaPalette = null;
                this.imageData.transparentPixel = transparentPixel;
                break;
            }
            case 2: {
                if (chunkReader.readPixelData()) {
                    SWT.error(40);
                    break;
                }
                PngIdatChunk dataChunk = (PngIdatChunk)chunk;
                this.readPixelData(dataChunk, chunkReader);
                break;
            }
            default: {
                if (!chunk.isCritical()) break;
                SWT.error(20);
            }
        }
    }

    void unloadIntoByteStream(ImageLoader loader) {
        PngEncoder encoder = new PngEncoder(loader);
        encoder.encode(this.outputStream);
    }

    boolean isFileFormat(LEDataInputStream stream) {
        byte[] signature;
        block15: {
            block14: {
                block13: {
                    block12: {
                        block11: {
                            block10: {
                                block9: {
                                    try {
                                        signature = new byte[8];
                                        stream.read(signature);
                                        stream.unread(signature);
                                        if ((signature[0] & 0xFF) == 137) break block9;
                                        return false;
                                    }
                                    catch (Exception exception) {
                                        return false;
                                    }
                                }
                                if ((signature[1] & 0xFF) == 80) break block10;
                                return false;
                            }
                            if ((signature[2] & 0xFF) == 78) break block11;
                            return false;
                        }
                        if ((signature[3] & 0xFF) == 71) break block12;
                        return false;
                    }
                    if ((signature[4] & 0xFF) == 13) break block13;
                    return false;
                }
                if ((signature[5] & 0xFF) == 10) break block14;
                return false;
            }
            if ((signature[6] & 0xFF) == 26) break block15;
            return false;
        }
        return (signature[7] & 0xFF) == 10;
    }

    byte[] validateBitDepth(byte[] data) {
        if (this.headerChunk.getBitDepth() > 8) {
            byte[] result = new byte[data.length / 2];
            PNGFileFormat.compress16BitDepthTo8BitDepth(data, 0, result, 0, result.length);
            return result;
        }
        return data;
    }

    void setPixelData(byte[] data, ImageData imageData) {
        switch (this.headerChunk.getColorType()) {
            case 4: {
                int width = imageData.width;
                int height = imageData.height;
                int destBytesPerLine = imageData.bytesPerLine;
                int srcBytesPerLine = this.getAlignedBytesPerRow();
                if (this.headerChunk.getBitDepth() > 8) {
                    srcBytesPerLine /= 2;
                }
                byte[] rgbData = new byte[destBytesPerLine * height];
                byte[] alphaData = new byte[width * height];
                int y = 0;
                while (y < height) {
                    int srcIndex = srcBytesPerLine * y;
                    int destIndex = destBytesPerLine * y;
                    int destAlphaIndex = width * y;
                    int x = 0;
                    while (x < width) {
                        byte grey = data[srcIndex];
                        byte alpha = data[srcIndex + 1];
                        rgbData[destIndex + 0] = grey;
                        rgbData[destIndex + 1] = grey;
                        rgbData[destIndex + 2] = grey;
                        alphaData[destAlphaIndex] = alpha;
                        srcIndex += 2;
                        destIndex += 3;
                        ++destAlphaIndex;
                        ++x;
                    }
                    ++y;
                }
                imageData.data = rgbData;
                imageData.alphaData = alphaData;
                break;
            }
            case 6: {
                int width = imageData.width;
                int height = imageData.height;
                int destBytesPerLine = imageData.bytesPerLine;
                int srcBytesPerLine = this.getAlignedBytesPerRow();
                if (this.headerChunk.getBitDepth() > 8) {
                    srcBytesPerLine /= 2;
                }
                byte[] rgbData = new byte[destBytesPerLine * height];
                byte[] alphaData = new byte[width * height];
                int y = 0;
                while (y < height) {
                    int srcIndex = srcBytesPerLine * y;
                    int destIndex = destBytesPerLine * y;
                    int destAlphaIndex = width * y;
                    int x = 0;
                    while (x < width) {
                        rgbData[destIndex + 0] = data[srcIndex + 0];
                        rgbData[destIndex + 1] = data[srcIndex + 1];
                        rgbData[destIndex + 2] = data[srcIndex + 2];
                        alphaData[destAlphaIndex] = data[srcIndex + 3];
                        srcIndex += 4;
                        destIndex += 3;
                        ++destAlphaIndex;
                        ++x;
                    }
                    ++y;
                }
                imageData.data = rgbData;
                imageData.alphaData = alphaData;
                break;
            }
            case 3: {
                imageData.data = data;
                if (this.alphaPalette == null) break;
                int size = imageData.width * imageData.height;
                byte[] alphaData = new byte[size];
                byte[] pixelData = new byte[size];
                imageData.getPixels(0, 0, size, pixelData, 0);
                int i = 0;
                while (i < pixelData.length) {
                    alphaData[i] = this.alphaPalette[pixelData[i] & 0xFF];
                    ++i;
                }
                imageData.alphaData = alphaData;
                break;
            }
            default: {
                int height = imageData.height;
                int destBytesPerLine = imageData.bytesPerLine;
                int srcBytesPerLine = this.getAlignedBytesPerRow();
                if (this.headerChunk.getBitDepth() > 8) {
                    srcBytesPerLine /= 2;
                }
                if (destBytesPerLine != srcBytesPerLine) {
                    int y = 0;
                    while (y < height) {
                        System.arraycopy(data, y * srcBytesPerLine, imageData.data, y * destBytesPerLine, srcBytesPerLine);
                        ++y;
                    }
                    break;
                }
                imageData.data = data;
            }
        }
    }

    void setImageDataValues(byte[] data, ImageData imageData) {
        byte[] result = this.validateBitDepth(data);
        this.setPixelData(result, imageData);
    }

    void readPixelData(PngIdatChunk chunk, PngChunkReader chunkReader) throws IOException {
        InputStream stream = new PngInputStream(chunk, chunkReader);
        boolean use3_2 = System.getProperty("org.eclipse.swt.internal.image.PNGFileFormat_3.2") != null;
        InputStream inflaterStream = use3_2 ? null : Compatibility.newInflaterInputStream(stream);
        stream = inflaterStream != null ? inflaterStream : new PngDecodingDataStream(stream);
        byte interlaceMethod = this.headerChunk.getInterlaceMethod();
        if (interlaceMethod == 0) {
            this.readNonInterlacedImage(stream);
        } else {
            this.readInterlacedImage(stream);
        }
        while (stream.available() > 0) {
            stream.read();
        }
        stream.close();
    }

    int getAlignedBytesPerRow() {
        return (this.getBytesPerRow(this.headerChunk.getWidth()) + 3) / 4 * 4;
    }

    int getBytesPerRow() {
        return this.getBytesPerRow(this.headerChunk.getWidth());
    }

    int getBytesPerPixel() {
        int bitsPerPixel = this.headerChunk.getBitsPerPixel();
        return (bitsPerPixel + 7) / 8;
    }

    int getBytesPerRow(int rowWidthInPixels) {
        int bitsPerPixel = this.headerChunk.getBitsPerPixel();
        int bitsPerRow = bitsPerPixel * rowWidthInPixels;
        int bitsPerByte = 8;
        return (bitsPerRow + (bitsPerByte - 1)) / bitsPerByte;
    }

    void readInterlaceFrame(InputStream inputStream, int rowInterval, int columnInterval, int startRow, int startColumn, int frameCount) throws IOException {
        int width = this.headerChunk.getWidth();
        int alignedBytesPerRow = this.getAlignedBytesPerRow();
        int height = this.headerChunk.getHeight();
        if (startRow >= height || startColumn >= width) {
            return;
        }
        int pixelsPerRow = (width - startColumn + columnInterval - 1) / columnInterval;
        int bytesPerRow = this.getBytesPerRow(pixelsPerRow);
        byte[] row1 = new byte[bytesPerRow];
        byte[] row2 = new byte[bytesPerRow];
        byte[] currentRow = row1;
        byte[] lastRow = row2;
        int row = startRow;
        while (row < height) {
            byte filterType = (byte)inputStream.read();
            int read = 0;
            while (read != bytesPerRow) {
                read += inputStream.read(currentRow, read, bytesPerRow - read);
            }
            this.filterRow(currentRow, lastRow, filterType);
            if (this.headerChunk.getBitDepth() >= 8) {
                int bytesPerPixel = this.getBytesPerPixel();
                int dataOffset = row * alignedBytesPerRow + startColumn * bytesPerPixel;
                int rowOffset = 0;
                while (rowOffset < currentRow.length) {
                    int byteOffset = 0;
                    while (byteOffset < bytesPerPixel) {
                        this.data[dataOffset + byteOffset] = currentRow[rowOffset + byteOffset];
                        ++byteOffset;
                    }
                    dataOffset += columnInterval * bytesPerPixel;
                    rowOffset += bytesPerPixel;
                }
            } else {
                int bitsPerPixel = this.headerChunk.getBitDepth();
                int pixelsPerByte = 8 / bitsPerPixel;
                int column = startColumn;
                int rowBase = row * alignedBytesPerRow;
                int valueMask = 0;
                int i = 0;
                while (i < bitsPerPixel) {
                    valueMask <<= 1;
                    valueMask |= 1;
                    ++i;
                }
                int maxShift = 8 - bitsPerPixel;
                int byteOffset = 0;
                while (byteOffset < currentRow.length) {
                    int bitOffset = maxShift;
                    while (bitOffset >= 0) {
                        if (column < width) {
                            int dataOffset = rowBase + column * bitsPerPixel / 8;
                            int value = currentRow[byteOffset] >> bitOffset & valueMask;
                            int dataShift = maxShift - bitsPerPixel * (column % pixelsPerByte);
                            int n = dataOffset;
                            this.data[n] = (byte)(this.data[n] | value << dataShift);
                        }
                        column += columnInterval;
                        bitOffset -= bitsPerPixel;
                    }
                    ++byteOffset;
                }
            }
            currentRow = currentRow == row1 ? row2 : row1;
            lastRow = lastRow == row1 ? row2 : row1;
            row += rowInterval;
        }
        this.setImageDataValues(this.data, this.imageData);
        this.fireInterlacedFrameEvent(frameCount);
    }

    void readInterlacedImage(InputStream inputStream) throws IOException {
        this.readInterlaceFrame(inputStream, 8, 8, 0, 0, 0);
        this.readInterlaceFrame(inputStream, 8, 8, 0, 4, 1);
        this.readInterlaceFrame(inputStream, 8, 4, 4, 0, 2);
        this.readInterlaceFrame(inputStream, 4, 4, 0, 2, 3);
        this.readInterlaceFrame(inputStream, 4, 2, 2, 0, 4);
        this.readInterlaceFrame(inputStream, 2, 2, 0, 1, 5);
        this.readInterlaceFrame(inputStream, 2, 1, 1, 0, 6);
    }

    void fireInterlacedFrameEvent(int frameCount) {
        if (this.loader.hasListeners()) {
            ImageData image = (ImageData)this.imageData.clone();
            boolean finalFrame = frameCount == 6;
            this.loader.notifyListeners(new ImageLoaderEvent(this.loader, image, frameCount, finalFrame));
        }
    }

    void readNonInterlacedImage(InputStream inputStream) throws IOException {
        int dataOffset = 0;
        int alignedBytesPerRow = this.getAlignedBytesPerRow();
        int bytesPerRow = this.getBytesPerRow();
        byte[] row1 = new byte[bytesPerRow];
        byte[] row2 = new byte[bytesPerRow];
        byte[] currentRow = row1;
        byte[] lastRow = row2;
        int height = this.headerChunk.getHeight();
        int row = 0;
        while (row < height) {
            byte filterType = (byte)inputStream.read();
            int read = 0;
            while (read != bytesPerRow) {
                read += inputStream.read(currentRow, read, bytesPerRow - read);
            }
            this.filterRow(currentRow, lastRow, filterType);
            System.arraycopy(currentRow, 0, this.data, dataOffset, bytesPerRow);
            dataOffset += alignedBytesPerRow;
            currentRow = currentRow == row1 ? row2 : row1;
            lastRow = lastRow == row1 ? row2 : row1;
            ++row;
        }
        this.setImageDataValues(this.data, this.imageData);
    }

    static void compress16BitDepthTo8BitDepth(byte[] source, int sourceOffset, byte[] destination, int destinationOffset, int numberOfValues) {
        int i = 0;
        while (i < numberOfValues) {
            byte compressedValue;
            int sourceIndex = sourceOffset + 2 * i;
            int destinationIndex = destinationOffset + i;
            destination[destinationIndex] = compressedValue = source[sourceIndex];
            ++i;
        }
    }

    static int compress16BitDepthTo8BitDepth(int value) {
        return value >> 8;
    }

    void filterRow(byte[] row, byte[] previousRow, int filterType) {
        int byteOffset = this.headerChunk.getFilterByteOffset();
        switch (filterType) {
            case 0: {
                break;
            }
            case 1: {
                int i = byteOffset;
                while (i < row.length) {
                    int current = row[i] & 0xFF;
                    int left = row[i - byteOffset] & 0xFF;
                    row[i] = (byte)(current + left & 0xFF);
                    ++i;
                }
                break;
            }
            case 2: {
                int i = 0;
                while (i < row.length) {
                    int current = row[i] & 0xFF;
                    int above = previousRow[i] & 0xFF;
                    row[i] = (byte)(current + above & 0xFF);
                    ++i;
                }
                break;
            }
            case 3: {
                int i = 0;
                while (i < row.length) {
                    int left = i < byteOffset ? 0 : row[i - byteOffset] & 0xFF;
                    int above = previousRow[i] & 0xFF;
                    int current = row[i] & 0xFF;
                    row[i] = (byte)(current + (left + above) / 2 & 0xFF);
                    ++i;
                }
                break;
            }
            case 4: {
                int i = 0;
                while (i < row.length) {
                    int left = i < byteOffset ? 0 : row[i - byteOffset] & 0xFF;
                    int aboveLeft = i < byteOffset ? 0 : previousRow[i - byteOffset] & 0xFF;
                    int above = previousRow[i] & 0xFF;
                    int a = Math.abs(above - aboveLeft);
                    int b = Math.abs(left - aboveLeft);
                    int c = Math.abs(left - aboveLeft + above - aboveLeft);
                    int preductor = 0;
                    preductor = a <= b && a <= c ? left : (b <= c ? above : aboveLeft);
                    int currentValue = row[i] & 0xFF;
                    row[i] = (byte)(currentValue + preductor & 0xFF);
                    ++i;
                }
                break;
            }
        }
    }
}

