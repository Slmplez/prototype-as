/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.internal.image.FileFormat;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.TIFFDirectory;
import org.eclipse.swt.internal.image.TIFFRandomFileAccess;

public final class TIFFFileFormat
extends FileFormat {
    boolean isFileFormat(LEDataInputStream stream) {
        byte[] header;
        block3: {
            try {
                header = new byte[4];
                stream.read(header);
                stream.unread(header);
                if (header[0] == header[1]) break block3;
                return false;
            }
            catch (Exception exception) {
                return false;
            }
        }
        return header[0] == 73 && header[2] == 42 && header[3] == 0 || header[0] == 77 && header[2] == 0 && header[3] == 42;
    }

    ImageData[] loadFromByteStream() {
        byte[] header = new byte[8];
        ImageData[] images = new ImageData[]{};
        TIFFRandomFileAccess file = new TIFFRandomFileAccess(this.inputStream);
        try {
            file.read(header);
            if (header[0] != header[1]) {
                SWT.error(40);
            }
            if (!(header[0] == 73 && header[2] == 42 && header[3] == 0 || header[0] == 77 && header[2] == 0 && header[3] == 42)) {
                SWT.error(40);
            }
            boolean isLittleEndian = header[0] == 73;
            int offset = isLittleEndian ? header[4] & 0xFF | (header[5] & 0xFF) << 8 | (header[6] & 0xFF) << 16 | (header[7] & 0xFF) << 24 : header[7] & 0xFF | (header[6] & 0xFF) << 8 | (header[5] & 0xFF) << 16 | (header[4] & 0xFF) << 24;
            while (offset != 0) {
                file.seek(offset);
                TIFFDirectory directory = new TIFFDirectory(file, isLittleEndian, this.loader);
                int[] nextIFDOffset = new int[1];
                ImageData image = directory.read(nextIFDOffset);
                offset = nextIFDOffset[0];
                ImageData[] oldImages = images;
                images = new ImageData[oldImages.length + 1];
                System.arraycopy(oldImages, 0, images, 0, oldImages.length);
                images[images.length - 1] = image;
            }
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        return images;
    }

    void unloadIntoByteStream(ImageLoader loader) {
        ImageData image = loader.data[0];
        TIFFDirectory directory = new TIFFDirectory(image);
        try {
            directory.writeToStream(this.outputStream);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
    }
}

