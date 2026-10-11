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
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.LZWCodec;

public final class GIFFileFormat
extends FileFormat {
    String signature;
    int screenWidth;
    int screenHeight;
    int backgroundPixel;
    int bitsPerPixel;
    int defaultDepth;
    int disposalMethod = 0;
    int delayTime = 0;
    int transparentPixel = -1;
    int repeatCount = 1;
    static final int GIF_APPLICATION_EXTENSION_BLOCK_ID = 255;
    static final int GIF_GRAPHICS_CONTROL_BLOCK_ID = 249;
    static final int GIF_PLAIN_TEXT_BLOCK_ID = 1;
    static final int GIF_COMMENT_BLOCK_ID = 254;
    static final int GIF_EXTENSION_BLOCK_ID = 33;
    static final int GIF_IMAGE_BLOCK_ID = 44;
    static final int GIF_TRAILER_ID = 59;
    static final byte[] GIF89a = new byte[]{71, 73, 70, 56, 57, 97};
    static final byte[] NETSCAPE2_0 = new byte[]{78, 69, 84, 83, 67, 65, 80, 69, 50, 46, 48};

    static PaletteData grayRamp(int numGrays) {
        int n = numGrays - 1;
        RGB[] colors = new RGB[numGrays];
        int i = 0;
        while (i < numGrays) {
            byte intensity = (byte)(i * 3 * 256 / n);
            colors[i] = new RGB(intensity, intensity, intensity);
            ++i;
        }
        return new PaletteData(colors);
    }

    boolean isFileFormat(LEDataInputStream stream) {
        try {
            byte[] signature = new byte[3];
            stream.read(signature);
            stream.unread(signature);
            return signature[0] == 71 && signature[1] == 73 && signature[2] == 70;
        }
        catch (Exception exception) {
            return false;
        }
    }

    ImageData[] loadFromByteStream() {
        byte[] signature = new byte[3];
        byte[] versionBytes = new byte[3];
        byte[] block = new byte[7];
        try {
            this.inputStream.read(signature);
            if (signature[0] != 71 || signature[1] != 73 || signature[2] != 70) {
                SWT.error(40);
            }
            this.inputStream.read(versionBytes);
            this.inputStream.read(block);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        this.loader.logicalScreenWidth = this.screenWidth = block[0] & 0xFF | (block[1] & 0xFF) << 8;
        this.loader.logicalScreenHeight = this.screenHeight = block[2] & 0xFF | (block[3] & 0xFF) << 8;
        byte bitField = block[4];
        this.backgroundPixel = block[5] & 0xFF;
        this.bitsPerPixel = (bitField >> 4 & 7) + 1;
        this.defaultDepth = (bitField & 7) + 1;
        PaletteData palette = null;
        if ((bitField & 0x80) != 0) {
            palette = this.readPalette(1 << this.defaultDepth);
        } else {
            this.backgroundPixel = -1;
            this.defaultDepth = this.bitsPerPixel;
        }
        this.loader.backgroundPixel = this.backgroundPixel;
        this.getExtensions();
        int id = this.readID();
        ImageData[] images = new ImageData[]{};
        while (id == 44) {
            ImageData image = this.readImageBlock(palette);
            if (this.loader.hasListeners()) {
                this.loader.notifyListeners(new ImageLoaderEvent(this.loader, image, 3, true));
            }
            ImageData[] oldImages = images;
            images = new ImageData[oldImages.length + 1];
            System.arraycopy(oldImages, 0, images, 0, oldImages.length);
            images[images.length - 1] = image;
            try {
                id = this.inputStream.read();
                if (id > 0) {
                    this.inputStream.unread(new byte[]{(byte)id});
                }
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            this.getExtensions();
            id = this.readID();
        }
        return images;
    }

    int readID() {
        try {
            return this.inputStream.read();
        }
        catch (IOException e) {
            SWT.error(39, e);
            return -1;
        }
    }

    void getExtensions() {
        int id = this.readID();
        while (id != 44 && id != 59 && id > 0) {
            if (id == 33) {
                this.readExtension();
            } else {
                SWT.error(40);
            }
            id = this.readID();
        }
        if (id == 44 || id == 59) {
            try {
                this.inputStream.unread(new byte[]{(byte)id});
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
        }
    }

    byte[] readExtension() {
        int extensionID = this.readID();
        if (extensionID == 254) {
            return this.readCommentExtension();
        }
        if (extensionID == 1) {
            return this.readPlainTextExtension();
        }
        if (extensionID == 249) {
            return this.readGraphicsControlExtension();
        }
        if (extensionID == 255) {
            return this.readApplicationExtension();
        }
        try {
            int extSize = this.inputStream.read();
            if (extSize < 0) {
                SWT.error(40);
            }
            byte[] ext = new byte[extSize];
            this.inputStream.read(ext, 0, extSize);
            return ext;
        }
        catch (IOException e) {
            SWT.error(39, e);
            return null;
        }
    }

    byte[] readCommentExtension() {
        try {
            byte[] comment = new byte[]{};
            byte[] block = new byte[255];
            int size = this.inputStream.read();
            while (size > 0 && this.inputStream.read(block, 0, size) != -1) {
                byte[] oldComment = comment;
                comment = new byte[oldComment.length + size];
                System.arraycopy(oldComment, 0, comment, 0, oldComment.length);
                System.arraycopy(block, 0, comment, oldComment.length, size);
                size = this.inputStream.read();
            }
            return comment;
        }
        catch (Exception e) {
            SWT.error(39, e);
            return null;
        }
    }

    byte[] readPlainTextExtension() {
        try {
            this.inputStream.read();
            byte[] info = new byte[12];
            this.inputStream.read(info);
            byte[] text = new byte[]{};
            byte[] block = new byte[255];
            int size = this.inputStream.read();
            while (size > 0 && this.inputStream.read(block, 0, size) != -1) {
                byte[] oldText = text;
                text = new byte[oldText.length + size];
                System.arraycopy(oldText, 0, text, 0, oldText.length);
                System.arraycopy(block, 0, text, oldText.length, size);
                size = this.inputStream.read();
            }
            return text;
        }
        catch (Exception e) {
            SWT.error(39, e);
            return null;
        }
    }

    byte[] readGraphicsControlExtension() {
        try {
            this.inputStream.read();
            byte[] controlBlock = new byte[4];
            this.inputStream.read(controlBlock);
            byte bitField = controlBlock[0];
            this.disposalMethod = bitField >> 2 & 7;
            this.delayTime = controlBlock[1] & 0xFF | (controlBlock[2] & 0xFF) << 8;
            this.transparentPixel = (bitField & 1) != 0 ? controlBlock[3] & 0xFF : -1;
            this.inputStream.read();
            return controlBlock;
        }
        catch (Exception e) {
            SWT.error(39, e);
            return null;
        }
    }

    byte[] readApplicationExtension() {
        try {
            boolean authentic;
            int blockSize = this.inputStream.read();
            byte[] blockData = new byte[blockSize];
            this.inputStream.read(blockData);
            byte[] data = new byte[]{};
            byte[] block = new byte[255];
            int size = this.inputStream.read();
            while (size > 0 && this.inputStream.read(block, 0, size) != -1) {
                byte[] oldData = data;
                data = new byte[oldData.length + size];
                System.arraycopy(oldData, 0, data, 0, oldData.length);
                System.arraycopy(block, 0, data, oldData.length, size);
                size = this.inputStream.read();
            }
            boolean netscape = blockSize > 7 && blockData[0] == 78 && blockData[1] == 69 && blockData[2] == 84 && blockData[3] == 83 && blockData[4] == 67 && blockData[5] == 65 && blockData[6] == 80 && blockData[7] == 69;
            boolean bl = authentic = blockSize > 10 && blockData[8] == 50 && blockData[9] == 46 && blockData[10] == 48;
            if (netscape && authentic && data[0] == 1) {
                this.loader.repeatCount = this.repeatCount = data[1] & 0xFF | (data[2] & 0xFF) << 8;
            }
            return data;
        }
        catch (Exception e) {
            SWT.error(39, e);
            return null;
        }
    }

    ImageData readImageBlock(PaletteData defaultPalette) {
        PaletteData palette;
        int depth;
        boolean interlaced;
        byte[] block = new byte[9];
        try {
            this.inputStream.read(block);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        int left = block[0] & 0xFF | (block[1] & 0xFF) << 8;
        int top = block[2] & 0xFF | (block[3] & 0xFF) << 8;
        int width = block[4] & 0xFF | (block[5] & 0xFF) << 8;
        int height = block[6] & 0xFF | (block[7] & 0xFF) << 8;
        byte bitField = block[8];
        boolean bl = interlaced = (bitField & 0x40) != 0;
        if ((bitField & 0x80) != 0) {
            depth = (bitField & 7) + 1;
            palette = this.readPalette(1 << depth);
        } else {
            depth = this.defaultDepth;
            palette = defaultPalette;
        }
        if (this.transparentPixel > 1 << depth) {
            this.transparentPixel = -1;
        }
        if (depth != 1 && depth != 4 && depth != 8) {
            depth = depth < 4 ? 4 : 8;
        }
        if (palette == null) {
            palette = GIFFileFormat.grayRamp(1 << depth);
        }
        int initialCodeSize = -1;
        try {
            initialCodeSize = this.inputStream.read();
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        if (initialCodeSize < 0) {
            SWT.error(40);
        }
        ImageData image = ImageData.internal_new(width, height, depth, palette, 4, null, 0, null, null, -1, this.transparentPixel, 2, left, top, this.disposalMethod, this.delayTime);
        LZWCodec codec = new LZWCodec();
        codec.decode(this.inputStream, this.loader, image, interlaced, initialCodeSize);
        return image;
    }

    PaletteData readPalette(int numColors) {
        byte[] bytes = new byte[numColors * 3];
        try {
            if (this.inputStream.read(bytes) != bytes.length) {
                SWT.error(40);
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        RGB[] colors = new RGB[numColors];
        int i = 0;
        while (i < numColors) {
            colors[i] = new RGB(bytes[i * 3] & 0xFF, bytes[i * 3 + 1] & 0xFF, bytes[i * 3 + 2] & 0xFF);
            ++i;
        }
        return new PaletteData(colors);
    }

    void unloadIntoByteStream(ImageLoader loader) {
        ImageData[] data = loader.data;
        int frameCount = data.length;
        boolean multi = frameCount > 1;
        ImageData firstImage = data[0];
        int logicalScreenWidth = multi ? loader.logicalScreenWidth : firstImage.width;
        int logicalScreenHeight = multi ? loader.logicalScreenHeight : firstImage.height;
        int backgroundPixel = loader.backgroundPixel;
        int depth = firstImage.depth;
        PaletteData palette = firstImage.palette;
        RGB[] colors = palette.getRGBs();
        int globalTable = 1;
        if (depth != 1 && depth != 4 && depth != 8) {
            SWT.error(38);
        }
        int i = 0;
        while (i < frameCount) {
            if (data[i].palette.isDirect) {
                SWT.error(40);
            }
            if (multi) {
                if (data[i].height > logicalScreenHeight || data[i].width > logicalScreenWidth || data[i].depth != depth) {
                    SWT.error(40);
                }
                if (globalTable == 1) {
                    RGB[] rgbs = data[i].palette.getRGBs();
                    if (rgbs.length != colors.length) {
                        globalTable = 0;
                    } else {
                        int j = 0;
                        while (j < colors.length) {
                            if (rgbs[j].red != colors[j].red || rgbs[j].green != colors[j].green || rgbs[j].blue != colors[j].blue) {
                                globalTable = 0;
                            }
                            ++j;
                        }
                    }
                }
            }
            ++i;
        }
        try {
            this.outputStream.write(GIF89a);
            int bitField = globalTable * 128 + (depth - 1) * 16 + depth - 1;
            this.outputStream.writeShort((short)logicalScreenWidth);
            this.outputStream.writeShort((short)logicalScreenHeight);
            this.outputStream.write(bitField);
            this.outputStream.write(backgroundPixel);
            this.outputStream.write(0);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        if (globalTable == 1) {
            this.writePalette(palette, depth);
        }
        if (multi) {
            int repeatCount = loader.repeatCount;
            try {
                this.outputStream.write(33);
                this.outputStream.write(255);
                this.outputStream.write(NETSCAPE2_0.length);
                this.outputStream.write(NETSCAPE2_0);
                this.outputStream.write(3);
                this.outputStream.write(1);
                this.outputStream.writeShort((short)repeatCount);
                this.outputStream.write(0);
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
        }
        int frame = 0;
        while (frame < frameCount) {
            if (multi || data[frame].transparentPixel != -1) {
                this.writeGraphicsControlBlock(data[frame]);
            }
            int x = data[frame].x;
            int y = data[frame].y;
            int width = data[frame].width;
            int height = data[frame].height;
            try {
                this.outputStream.write(44);
                byte[] block = new byte[]{(byte)(x & 0xFF), (byte)(x >> 8 & 0xFF), (byte)(y & 0xFF), (byte)(y >> 8 & 0xFF), (byte)(width & 0xFF), (byte)(width >> 8 & 0xFF), (byte)(height & 0xFF), (byte)(height >> 8 & 0xFF), (byte)(globalTable == 0 ? depth - 1 | 0x80 : 0)};
                this.outputStream.write(block);
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            if (globalTable == 0) {
                this.writePalette(data[frame].palette, depth);
            }
            try {
                this.outputStream.write(depth);
            }
            catch (IOException e) {
                SWT.error(39, e);
            }
            new LZWCodec().encode(this.outputStream, data[frame]);
            ++frame;
        }
        try {
            this.outputStream.write(59);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }

    void writeGraphicsControlBlock(ImageData image) {
        try {
            this.outputStream.write(33);
            this.outputStream.write(249);
            byte[] gcBlock = new byte[]{0, 0, 0, 0};
            if (image.transparentPixel != -1) {
                gcBlock[0] = 1;
                gcBlock[3] = (byte)image.transparentPixel;
            }
            if (image.disposalMethod != 0) {
                gcBlock[0] = (byte)(gcBlock[0] | (byte)((image.disposalMethod & 7) << 2));
            }
            if (image.delayTime != 0) {
                gcBlock[1] = (byte)(image.delayTime & 0xFF);
                gcBlock[2] = (byte)(image.delayTime >> 8 & 0xFF);
            }
            this.outputStream.write((byte)gcBlock.length);
            this.outputStream.write(gcBlock);
            this.outputStream.write(0);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }

    void writePalette(PaletteData palette, int depth) {
        byte[] bytes = new byte[(1 << depth) * 3];
        int offset = 0;
        int i = 0;
        while (i < palette.colors.length) {
            RGB color = palette.colors[i];
            bytes[offset] = (byte)color.red;
            bytes[offset + 1] = (byte)color.green;
            bytes[offset + 2] = (byte)color.blue;
            offset += 3;
            ++i;
        }
        try {
            this.outputStream.write(bytes);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }
}

