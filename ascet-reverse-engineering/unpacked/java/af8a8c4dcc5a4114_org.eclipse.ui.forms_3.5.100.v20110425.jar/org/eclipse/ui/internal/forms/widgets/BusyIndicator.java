/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.forms.widgets;

import java.io.IOException;
import java.net.URL;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.osgi.framework.Bundle;

public final class BusyIndicator
extends Canvas {
    private static final int MARGIN = 0;
    private static final int IMAGE_COUNT = 8;
    private static final int MILLISECONDS_OF_DELAY = 180;
    private Image[] imageCache;
    private Image image;
    private Display dpy = this.getDisplay();
    private Runnable timer = new Runnable(){

        public void run() {
            if (BusyIndicator.this.isDisposed()) {
                return;
            }
            BusyIndicator.this.redraw();
            if (!BusyIndicator.this.busy) {
                return;
            }
            BusyIndicator.this.update();
            if (BusyIndicator.this.isDisposed()) {
                return;
            }
            BusyIndicator.this.imageIndex = (BusyIndicator.this.imageIndex + 1) % 8;
            BusyIndicator.this.dpy.timerExec(180, (Runnable)this);
        }
    };
    private boolean busy;
    private int imageIndex;

    public BusyIndicator(Composite parent, int style) {
        super(parent, style | 0x20000000);
        this.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent event) {
                BusyIndicator.this.onPaint(event);
            }
        });
        this.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                BusyIndicator.this.clearImages();
            }
        });
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        Point size = new Point(0, 0);
        if (this.image != null) {
            Rectangle ibounds = this.image.getBounds();
            size.x = ibounds.width;
            size.y = ibounds.height;
        }
        if (this.isBusy()) {
            Rectangle bounds = this.getImage(0).getBounds();
            size.x = Math.max(size.x, bounds.width);
            size.y = Math.max(size.y, bounds.height);
        }
        size.x += 0;
        size.y += 0;
        return size;
    }

    public boolean forceFocus() {
        return false;
    }

    public Image getImage() {
        return this.image;
    }

    public boolean isBusy() {
        return this.busy;
    }

    void onPaint(PaintEvent event) {
        Image activeImage;
        Rectangle rect = this.getClientArea();
        if (rect.width == 0 || rect.height == 0) {
            return;
        }
        if (this.isBusy()) {
            activeImage = this.getImage(this.imageIndex);
        } else {
            this.clearImages();
            activeImage = this.image;
        }
        if (activeImage != null) {
            GC gc = event.gc;
            Rectangle ibounds = activeImage.getBounds();
            gc.drawImage(activeImage, rect.width / 2 - ibounds.width / 2, rect.height / 2 - ibounds.height / 2);
        }
    }

    public synchronized void setBusy(boolean busy) {
        if (this.busy == busy) {
            return;
        }
        this.busy = busy;
        this.imageIndex = 0;
        this.dpy.asyncExec(this.timer);
    }

    public void setImage(Image image) {
        if (image != this.image && !this.isDisposed()) {
            this.image = image;
            this.redraw();
        }
    }

    private ImageDescriptor createImageDescriptor(String relativePath) {
        Bundle bundle = Platform.getBundle((String)"org.eclipse.ui.forms");
        URL url = FileLocator.find((Bundle)bundle, (IPath)new Path(relativePath), null);
        if (url == null) {
            return null;
        }
        try {
            url = FileLocator.resolve((URL)url);
            return ImageDescriptor.createFromURL((URL)url);
        }
        catch (IOException iOException) {
            return null;
        }
    }

    private Image getImage(int index) {
        if (this.imageCache == null) {
            this.imageCache = new Image[8];
        }
        if (this.imageCache[index] == null) {
            ImageDescriptor descriptor = this.createImageDescriptor("$nl$/icons/progress/ani/" + (index + 1) + ".png");
            this.imageCache[index] = descriptor.createImage();
        }
        return this.imageCache[index];
    }

    private void clearImages() {
        if (this.imageCache != null) {
            int index = 0;
            while (index < 8) {
                if (this.imageCache[index] != null && !this.imageCache[index].isDisposed()) {
                    this.imageCache[index].dispose();
                    this.imageCache[index] = null;
                }
                ++index;
            }
        }
    }
}

