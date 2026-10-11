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
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.image.LEDataOutputStream;
import org.eclipse.swt.internal.image.PngChunk;
import org.eclipse.swt.internal.image.PngDeflater;

final class PngEncoder {
    static final byte[] SIGNATURE = new byte[]{-119, 80, 78, 71, 13, 10, 26, 10};
    static final byte[] TAG_IHDR = new byte[]{73, 72, 68, 82};
    static final byte[] TAG_PLTE = new byte[]{80, 76, 84, 69};
    static final byte[] TAG_TRNS = new byte[]{116, 82, 78, 83};
    static final byte[] TAG_IDAT = new byte[]{73, 68, 65, 84};
    static final byte[] TAG_IEND = new byte[]{73, 69, 78, 68};
    ByteArrayOutputStream bytes = new ByteArrayOutputStream(1024);
    PngChunk chunk;
    ImageLoader loader;
    ImageData data;
    int transparencyType;
    int width;
    int height;
    int bitDepth;
    int colorType;
    int compressionMethod = 0;
    int filterMethod = 0;
    int interlaceMethod = 0;

    public PngEncoder(ImageLoader loader) {
        this.loader = loader;
        this.data = loader.data[0];
        this.transparencyType = this.data.getTransparencyType();
        this.width = this.data.width;
        this.height = this.data.height;
        this.bitDepth = 8;
        this.colorType = 2;
        if (this.data.palette.isDirect) {
            if (this.transparencyType == 1) {
                this.colorType = 6;
            }
        } else {
            this.colorType = 3;
        }
        if (this.colorType != 2 && this.colorType != 3 && this.colorType != 6) {
            SWT.error(40);
        }
    }

    void writeShort(ByteArrayOutputStream baos, int theShort) {
        byte byte1 = (byte)(theShort >> 8 & 0xFF);
        byte byte2 = (byte)(theShort & 0xFF);
        byte[] temp = new byte[]{byte1, byte2};
        baos.write(temp, 0, 2);
    }

    void writeInt(ByteArrayOutputStream baos, int theInt) {
        byte byte1 = (byte)(theInt >> 24 & 0xFF);
        byte byte2 = (byte)(theInt >> 16 & 0xFF);
        byte byte3 = (byte)(theInt >> 8 & 0xFF);
        byte byte4 = (byte)(theInt & 0xFF);
        byte[] temp = new byte[]{byte1, byte2, byte3, byte4};
        baos.write(temp, 0, 4);
    }

    void writeChunk(byte[] tag, byte[] buffer) {
        int bufferLength = buffer != null ? buffer.length : 0;
        this.chunk = new PngChunk(bufferLength);
        this.writeInt(this.bytes, bufferLength);
        this.bytes.write(tag, 0, 4);
        this.chunk.setType(tag);
        if (bufferLength != 0) {
            this.bytes.write(buffer, 0, bufferLength);
            this.chunk.setData(buffer);
        } else {
            this.chunk.setCRC(this.chunk.computeCRC());
        }
        this.writeInt(this.bytes, this.chunk.getCRC());
    }

    void writeSignature() {
        this.bytes.write(SIGNATURE, 0, 8);
    }

    void writeHeader() {
        ByteArrayOutputStream baos = new ByteArrayOutputStream(13);
        this.writeInt(baos, this.width);
        this.writeInt(baos, this.height);
        baos.write(this.bitDepth);
        baos.write(this.colorType);
        baos.write(this.compressionMethod);
        baos.write(this.filterMethod);
        baos.write(this.interlaceMethod);
        this.writeChunk(TAG_IHDR, baos.toByteArray());
    }

    void writePalette() {
        RGB[] RGBs = this.data.palette.getRGBs();
        if (RGBs.length > 256) {
            SWT.error(40);
        }
        ByteArrayOutputStream baos = new ByteArrayOutputStream(RGBs.length);
        int i = 0;
        while (i < RGBs.length) {
            baos.write((byte)RGBs[i].red);
            baos.write((byte)RGBs[i].green);
            baos.write((byte)RGBs[i].blue);
            ++i;
        }
        this.writeChunk(TAG_PLTE, baos.toByteArray());
    }

    void writeTransparency() {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        switch (this.transparencyType) {
            case 1: {
                byte[] alphas = new byte[this.data.palette.getRGBs().length];
                int y = 0;
                while (y < this.height) {
                    int x = 0;
                    while (x < this.width) {
                        int pixelValue = this.data.getPixel(x, y);
                        int alphaValue = this.data.getAlpha(x, y);
                        alphas[pixelValue] = (byte)alphaValue;
                        ++x;
                    }
                    ++y;
                }
                baos.write(alphas, 0, alphas.length);
                break;
            }
            case 4: {
                int pixel = this.data.transparentPixel;
                if (this.colorType == 2) {
                    int redMask = this.data.palette.redMask;
                    int redShift = this.data.palette.redShift;
                    int greenMask = this.data.palette.greenMask;
                    int greenShift = this.data.palette.greenShift;
                    int blueShift = this.data.palette.blueShift;
                    int blueMask = this.data.palette.blueMask;
                    int r = pixel & redMask;
                    r = redShift < 0 ? r >>> -redShift : r << redShift;
                    int g = pixel & greenMask;
                    g = greenShift < 0 ? g >>> -greenShift : g << greenShift;
                    int b = pixel & blueMask;
                    b = blueShift < 0 ? b >>> -blueShift : b << blueShift;
                    this.writeShort(baos, r);
                    this.writeShort(baos, g);
                    this.writeShort(baos, b);
                }
                if (this.colorType != 3) break;
                byte[] padding = new byte[pixel + 1];
                int i = 0;
                while (i < pixel) {
                    padding[i] = -1;
                    ++i;
                }
                padding[pixel] = 0;
                baos.write(padding, 0, padding.length);
            }
        }
        this.writeChunk(TAG_TRNS, baos.toByteArray());
    }

    void writeImageData() throws IOException {
        Object[] lineData;
        ByteArrayOutputStream baos = new ByteArrayOutputStream(1024);
        OutputStream os = Compatibility.newDeflaterOutputStream(baos);
        if (os == null) {
            os = baos;
        }
        if (this.colorType == 3) {
            lineData = new byte[this.width];
            int y = 0;
            while (y < this.height) {
                int filter = 0;
                os.write(filter);
                this.data.getPixels(0, y, this.width, (byte[])lineData, 0);
                os.write((byte[])lineData);
                ++y;
            }
        } else {
            lineData = new int[this.width];
            byte[] alphaData = null;
            if (this.colorType == 6) {
                alphaData = new byte[this.width];
            }
            int redMask = this.data.palette.redMask;
            int redShift = this.data.palette.redShift;
            int greenMask = this.data.palette.greenMask;
            int greenShift = this.data.palette.greenShift;
            int blueShift = this.data.palette.blueShift;
            int blueMask = this.data.palette.blueMask;
            byte[] lineBytes = new byte[this.width * (this.colorType == 6 ? 4 : 3)];
            int y = 0;
            while (y < this.height) {
                int filter = 0;
                os.write(filter);
                this.data.getPixels(0, y, this.width, (int[])lineData, 0);
                if (this.colorType == 6) {
                    this.data.getAlphas(0, y, this.width, alphaData, 0);
                }
                int offset = 0;
                int x = 0;
                while (x < lineData.length) {
                    byte pixel = lineData[x];
                    int r = pixel & redMask;
                    lineBytes[offset++] = (byte)(redShift < 0 ? r >>> -redShift : r << redShift);
                    int g = pixel & greenMask;
                    lineBytes[offset++] = (byte)(greenShift < 0 ? g >>> -greenShift : g << greenShift);
                    int b = pixel & blueMask;
                    lineBytes[offset++] = (byte)(blueShift < 0 ? b >>> -blueShift : b << blueShift);
                    if (this.colorType == 6) {
                        lineBytes[offset++] = alphaData[x];
                    }
                    ++x;
                }
                os.write(lineBytes);
                ++y;
            }
        }
        os.flush();
        os.close();
        byte[] compressed = baos.toByteArray();
        if (os == baos) {
            PngDeflater deflater = new PngDeflater();
            compressed = deflater.deflate(compressed);
        }
        this.writeChunk(TAG_IDAT, compressed);
    }

    void writeEnd() {
        this.writeChunk(TAG_IEND, null);
    }

    public void encode(LEDataOutputStream outputStream) {
        try {
            boolean type3Transparency;
            this.writeSignature();
            this.writeHeader();
            if (this.colorType == 3) {
                this.writePalette();
            }
            boolean transparencyAlpha = this.transparencyType == 1;
            boolean transparencyPixel = this.transparencyType == 4;
            boolean type2Transparency = this.colorType == 2 && transparencyPixel;
            boolean bl = type3Transparency = this.colorType == 3 && (transparencyAlpha || transparencyPixel);
            if (type2Transparency || type3Transparency) {
                this.writeTransparency();
            }
            this.writeImageData();
            this.writeEnd();
            outputStream.write(this.bytes.toByteArray());
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }
}

