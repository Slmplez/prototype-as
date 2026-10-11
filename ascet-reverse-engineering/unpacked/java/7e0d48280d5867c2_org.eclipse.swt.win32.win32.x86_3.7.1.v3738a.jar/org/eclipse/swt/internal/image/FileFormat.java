/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.image;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.internal.image.LEDataOutputStream;

public abstract class FileFormat {
    static final String FORMAT_PACKAGE = "org.eclipse.swt.internal.image";
    static final String FORMAT_SUFFIX = "FileFormat";
    static final String[] FORMATS = new String[]{"WinBMP", "WinBMP", "GIF", "WinICO", "JPEG", "PNG", "TIFF", "OS2BMP"};
    LEDataInputStream inputStream;
    LEDataOutputStream outputStream;
    ImageLoader loader;
    int compression;

    abstract boolean isFileFormat(LEDataInputStream var1);

    abstract ImageData[] loadFromByteStream();

    public ImageData[] loadFromStream(LEDataInputStream stream) {
        try {
            this.inputStream = stream;
            return this.loadFromByteStream();
        }
        catch (Exception e) {
            if (e instanceof IOException) {
                SWT.error(39, e);
            } else {
                SWT.error(40, e);
            }
            return null;
        }
    }

    public static ImageData[] load(InputStream is, ImageLoader loader) {
        FileFormat fileFormat = null;
        LEDataInputStream stream = new LEDataInputStream(is);
        boolean isSupported = false;
        int i = 1;
        while (i < FORMATS.length) {
            if (FORMATS[i] != null) {
                try {
                    Class<?> clazz = Class.forName("org.eclipse.swt.internal.image." + FORMATS[i] + FORMAT_SUFFIX);
                    fileFormat = (FileFormat)clazz.newInstance();
                    if (fileFormat.isFileFormat(stream)) {
                        isSupported = true;
                        break;
                    }
                }
                catch (ClassNotFoundException classNotFoundException) {
                    FileFormat.FORMATS[i] = null;
                }
                catch (Exception exception) {}
            }
            ++i;
        }
        if (!isSupported) {
            SWT.error(42);
        }
        fileFormat.loader = loader;
        return fileFormat.loadFromStream(stream);
    }

    public static void save(OutputStream os, int format, ImageLoader loader) {
        if (format < 0 || format >= FORMATS.length) {
            SWT.error(42);
        }
        if (FORMATS[format] == null) {
            SWT.error(42);
        }
        if (loader.data == null || loader.data.length < 1) {
            SWT.error(5);
        }
        LEDataOutputStream stream = new LEDataOutputStream(os);
        FileFormat fileFormat = null;
        try {
            Class<?> clazz = Class.forName("org.eclipse.swt.internal.image." + FORMATS[format] + FORMAT_SUFFIX);
            fileFormat = (FileFormat)clazz.newInstance();
        }
        catch (Exception exception) {
            SWT.error(42);
        }
        if (format == 1) {
            switch (loader.data[0].depth) {
                case 8: {
                    fileFormat.compression = 1;
                    break;
                }
                case 4: {
                    fileFormat.compression = 2;
                }
            }
        }
        fileFormat.unloadIntoStream(loader, stream);
    }

    abstract void unloadIntoByteStream(ImageLoader var1);

    public void unloadIntoStream(ImageLoader loader, LEDataOutputStream stream) {
        try {
            this.outputStream = stream;
            this.unloadIntoByteStream(loader);
            this.outputStream.flush();
        }
        catch (Exception e) {
            try {
                this.outputStream.flush();
            }
            catch (Exception exception) {}
            SWT.error(39, e);
        }
    }
}

