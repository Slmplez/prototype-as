/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.graphics.ImageLoaderListener;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.image.FileFormat;

public class ImageLoader {
    public ImageData[] data;
    public int logicalScreenWidth;
    public int logicalScreenHeight;
    public int backgroundPixel;
    public int repeatCount;
    Vector imageLoaderListeners;

    public ImageLoader() {
        this.reset();
    }

    void reset() {
        this.data = null;
        this.logicalScreenWidth = 0;
        this.logicalScreenHeight = 0;
        this.backgroundPixel = -1;
        this.repeatCount = 1;
    }

    public ImageData[] load(InputStream stream) {
        if (stream == null) {
            SWT.error(4);
        }
        this.reset();
        this.data = FileFormat.load(stream, this);
        return this.data;
    }

    /*
     * Loose catch block
     */
    public ImageData[] load(String filename) {
        if (filename == null) {
            SWT.error(4);
        }
        InputStream stream = null;
        stream = Compatibility.newFileInputStream(filename);
        ImageData[] imageDataArray = this.load(stream);
        try {
            if (stream != null) {
                stream.close();
            }
        }
        catch (IOException iOException) {}
        return imageDataArray;
        catch (IOException e) {
            try {
                SWT.error(39, e);
            }
            catch (Throwable throwable) {
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException iOException) {}
        }
        return null;
    }

    public void save(OutputStream stream, int format) {
        if (stream == null) {
            SWT.error(4);
        }
        FileFormat.save(stream, format, this);
    }

    public void save(String filename, int format) {
        if (filename == null) {
            SWT.error(4);
        }
        OutputStream stream = null;
        try {
            stream = Compatibility.newFileOutputStream(filename);
        }
        catch (IOException e) {
            SWT.error(39, e);
        }
        this.save(stream, format);
        try {
            stream.close();
        }
        catch (IOException iOException) {}
    }

    public void addImageLoaderListener(ImageLoaderListener listener) {
        if (listener == null) {
            SWT.error(4);
        }
        if (this.imageLoaderListeners == null) {
            this.imageLoaderListeners = new Vector();
        }
        this.imageLoaderListeners.addElement(listener);
    }

    public void removeImageLoaderListener(ImageLoaderListener listener) {
        if (listener == null) {
            SWT.error(4);
        }
        if (this.imageLoaderListeners == null) {
            return;
        }
        this.imageLoaderListeners.removeElement(listener);
    }

    public boolean hasListeners() {
        return this.imageLoaderListeners != null && this.imageLoaderListeners.size() > 0;
    }

    public void notifyListeners(ImageLoaderEvent event) {
        if (!this.hasListeners()) {
            return;
        }
        int size = this.imageLoaderListeners.size();
        int i = 0;
        while (i < size) {
            ImageLoaderListener listener = (ImageLoaderListener)this.imageLoaderListeners.elementAt(i);
            listener.imageDataLoaded(event);
            ++i;
        }
    }
}

