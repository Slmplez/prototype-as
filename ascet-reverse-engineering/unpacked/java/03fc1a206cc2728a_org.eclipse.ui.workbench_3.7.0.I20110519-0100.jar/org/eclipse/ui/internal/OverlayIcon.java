/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.CompositeImageDescriptor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.resource.CompositeImageDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.internal.util.Util;

public class OverlayIcon
extends CompositeImageDescriptor {
    private Point fSize = null;
    private ImageDescriptor fBase = null;
    private ImageDescriptor fOverlay = null;

    public OverlayIcon(ImageDescriptor base, ImageDescriptor overlay, Point size) {
        this.fBase = base;
        this.fOverlay = overlay;
        this.fSize = size;
    }

    protected void drawCompositeImage(int width, int height) {
        ImageData bg;
        if (this.fBase == null || (bg = this.fBase.getImageData()) == null) {
            bg = DEFAULT_IMAGE_DATA;
        }
        this.drawImage(bg, 0, 0);
        if (this.fOverlay != null) {
            this.drawTopRight(this.fOverlay);
        }
    }

    protected void drawTopRight(ImageDescriptor overlay) {
        if (overlay == null) {
            return;
        }
        int x = this.getSize().x;
        ImageData id = overlay.getImageData();
        this.drawImage(id, x -= id.width, 0);
    }

    protected Point getSize() {
        return this.fSize;
    }

    public int hashCode() {
        return Util.hashCode(this.fBase) * 17 + Util.hashCode(this.fOverlay);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof OverlayIcon)) {
            return false;
        }
        OverlayIcon overlayIcon = (OverlayIcon)((Object)obj);
        return Util.equals(this.fBase, overlayIcon.fBase) && Util.equals(this.fOverlay, overlayIcon.fOverlay) && Util.equals(this.fSize, overlayIcon.fSize);
    }
}

