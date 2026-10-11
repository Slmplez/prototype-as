/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.viewers;

import java.util.Arrays;
import org.eclipse.jface.resource.CompositeImageDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;

public class DecorationOverlayIcon
extends CompositeImageDescriptor {
    private Image base;
    private ImageDescriptor[] overlays;
    private Point size;

    public DecorationOverlayIcon(Image baseImage, ImageDescriptor[] overlaysArray, Point sizeValue) {
        this.base = baseImage;
        this.overlays = overlaysArray;
        this.size = sizeValue;
    }

    public DecorationOverlayIcon(Image baseImage, ImageDescriptor[] overlaysArray) {
        this(baseImage, overlaysArray, new Point(baseImage.getBounds().width, baseImage.getBounds().height));
    }

    public DecorationOverlayIcon(Image baseImage, ImageDescriptor overlayImage, int quadrant) {
        this(baseImage, DecorationOverlayIcon.createArrayFrom(overlayImage, quadrant));
    }

    private static ImageDescriptor[] createArrayFrom(ImageDescriptor overlayImage, int quadrant) {
        ImageDescriptor[] descs = new ImageDescriptor[5];
        descs[quadrant] = overlayImage;
        return descs;
    }

    private void drawOverlays(ImageDescriptor[] overlaysArray) {
        int i = 0;
        while (i < this.overlays.length) {
            ImageDescriptor overlay = overlaysArray[i];
            if (overlay != null) {
                ImageData overlayData = overlay.getImageData();
                if (overlayData == null) {
                    overlayData = ImageDescriptor.getMissingImageDescriptor().getImageData();
                }
                switch (i) {
                    case 0: {
                        this.drawImage(overlayData, 0, 0);
                        break;
                    }
                    case 1: {
                        this.drawImage(overlayData, this.size.x - overlayData.width, 0);
                        break;
                    }
                    case 2: {
                        this.drawImage(overlayData, 0, this.size.y - overlayData.height);
                        break;
                    }
                    case 3: {
                        this.drawImage(overlayData, this.size.x - overlayData.width, this.size.y - overlayData.height);
                    }
                }
            }
            ++i;
        }
    }

    public boolean equals(Object o) {
        if (!(o instanceof DecorationOverlayIcon)) {
            return false;
        }
        DecorationOverlayIcon other = (DecorationOverlayIcon)o;
        return this.base.equals((Object)other.base) && Arrays.equals(this.overlays, other.overlays);
    }

    public int hashCode() {
        int code = System.identityHashCode(this.base);
        int i = 0;
        while (i < this.overlays.length) {
            if (this.overlays[i] != null) {
                code ^= this.overlays[i].hashCode();
            }
            ++i;
        }
        return code;
    }

    protected void drawCompositeImage(int width, int height) {
        ImageDescriptor underlay;
        if (this.overlays.length > 4 && (underlay = this.overlays[4]) != null) {
            this.drawImage(underlay.getImageData(), 0, 0);
        }
        if (this.overlays.length > 5 && this.overlays[5] != null) {
            this.drawImage(this.overlays[5].getImageData(), 0, 0);
        } else {
            this.drawImage(this.base.getImageData(), 0, 0);
        }
        this.drawOverlays(this.overlays);
    }

    protected Point getSize() {
        return this.size;
    }

    protected int getTransparentPixel() {
        return this.base.getImageData().transparentPixel;
    }
}

