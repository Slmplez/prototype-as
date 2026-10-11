/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.CompositeImageDescriptor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.pde.internal.runtime;

import org.eclipse.jface.resource.CompositeImageDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;

public class OverlayIcon
extends CompositeImageDescriptor {
    static final int DEFAULT_WIDTH = 16;
    static final int DEFAULT_HEIGHT = 16;
    private Point fSize = null;
    private ImageDescriptor fBase;
    private ImageDescriptor[][] fOverlays;

    public OverlayIcon(ImageDescriptor base, ImageDescriptor[][] overlays) {
        this.fBase = base;
        if (this.fBase == null) {
            this.fBase = ImageDescriptor.getMissingImageDescriptor();
        }
        this.fOverlays = overlays;
        this.fSize = new Point(16, 16);
    }

    public OverlayIcon(ImageDescriptor base, ImageDescriptor[][] overlays, Point size) {
        this.fBase = base;
        if (this.fBase == null) {
            this.fBase = ImageDescriptor.getMissingImageDescriptor();
        }
        this.fOverlays = overlays;
        this.fSize = size;
    }

    protected void drawBottomLeft(ImageDescriptor[] overlays) {
        if (overlays == null) {
            return;
        }
        int length = overlays.length;
        int x = 0;
        int i = 0;
        while (i < 3) {
            if (i < length && overlays[i] != null) {
                ImageData id = overlays[i].getImageData();
                this.drawImage(id, x, this.getSize().y - id.height);
                x += id.width;
            }
            ++i;
        }
    }

    protected void drawBottomRight(ImageDescriptor[] overlays) {
        if (overlays == null) {
            return;
        }
        int length = overlays.length;
        int x = this.getSize().x;
        int i = 2;
        while (i >= 0) {
            if (i < length && overlays[i] != null) {
                ImageData id = overlays[i].getImageData();
                this.drawImage(id, x -= id.width, this.getSize().y - id.height);
            }
            --i;
        }
    }

    protected void drawCompositeImage(int width, int height) {
        ImageData bg = this.fBase.getImageData();
        this.drawImage(bg, 0, 0);
        if (this.fOverlays != null) {
            if (this.fOverlays.length > 0) {
                this.drawTopRight(this.fOverlays[0]);
            }
            if (this.fOverlays.length > 1) {
                this.drawBottomRight(this.fOverlays[1]);
            }
            if (this.fOverlays.length > 2) {
                this.drawBottomLeft(this.fOverlays[2]);
            }
            if (this.fOverlays.length > 3) {
                this.drawTopLeft(this.fOverlays[3]);
            }
        }
    }

    protected void drawTopLeft(ImageDescriptor[] overlays) {
        if (overlays == null) {
            return;
        }
        int length = overlays.length;
        int x = 0;
        int i = 0;
        while (i < 3) {
            if (i < length && overlays[i] != null) {
                ImageData id = overlays[i].getImageData();
                this.drawImage(id, x, 0);
                x += id.width;
            }
            ++i;
        }
    }

    protected void drawTopRight(ImageDescriptor[] overlays) {
        if (overlays == null) {
            return;
        }
        int length = overlays.length;
        int x = this.getSize().x;
        int i = 2;
        while (i >= 0) {
            if (i < length && overlays[i] != null) {
                ImageData id = overlays[i].getImageData();
                this.drawImage(id, x -= id.width, 0);
            }
            --i;
        }
    }

    protected Point getSize() {
        return this.fSize;
    }
}

