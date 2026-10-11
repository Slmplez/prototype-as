/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Hashtable;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.forms.widgets.FormUtil;
import org.eclipse.ui.internal.forms.widgets.ObjectSegment;
import org.eclipse.ui.internal.forms.widgets.SelectionData;

public class ImageSegment
extends ObjectSegment {
    public static final String SEL_IMAGE_PREFIX = "isel.";

    public Image getImage(Hashtable objectTable) {
        return this.getImage(this.getObjectId(), objectTable);
    }

    private Image getImage(String key, Hashtable objectTable) {
        if (key == null) {
            return null;
        }
        Object obj = objectTable.get(key);
        if (obj == null) {
            return null;
        }
        if (obj instanceof Image) {
            return (Image)obj;
        }
        return null;
    }

    private Image getSelectedImage(Hashtable objectTable, SelectionData selData) {
        String key = SEL_IMAGE_PREFIX + this.getObjectId();
        Image image = this.getImage(key, objectTable);
        if (image == null && (image = FormUtil.createAlphaMashImage((Device)selData.display, this.getImage(objectTable))) != null) {
            objectTable.put(key, image);
        }
        return image;
    }

    public void paint(GC gc, boolean hover, Hashtable resourceTable, boolean selected, SelectionData selData, Rectangle repaintRegion) {
        Image image = this.getImage(resourceTable);
        int iwidth = 0;
        int iheight = 0;
        if (image == null) {
            return;
        }
        Rectangle rect = image.getBounds();
        iwidth = rect.width + (this.isSelectable() ? 2 : 0);
        iheight = rect.height + (this.isSelectable() ? 2 : 0);
        Rectangle bounds = this.getBounds();
        int ix = bounds.x + (this.isSelectable() ? 1 : 0);
        int iy = bounds.y + (this.isSelectable() ? 1 : 0);
        if (selData != null) {
            int leftOffset = selData.getLeftOffset(bounds.height);
            int rightOffset = selData.getRightOffset(bounds.height);
            boolean firstRow = selData.isFirstSelectionRow(bounds.y, bounds.height);
            boolean lastRow = selData.isLastSelectionRow(bounds.y, bounds.height);
            boolean selectedRow = selData.isSelectedRow(bounds.y, bounds.height);
            if (selectedRow) {
                if (firstRow && leftOffset > ix || lastRow && rightOffset < ix + iwidth / 2) {
                    this.drawClipImage(gc, image, ix, iy, repaintRegion);
                } else {
                    Color savedBg = gc.getBackground();
                    gc.setBackground(selData.bg);
                    int sx = ix;
                    int sy = iy;
                    if (repaintRegion != null) {
                        sx -= repaintRegion.x;
                        sy -= repaintRegion.y;
                    }
                    gc.fillRectangle(sx, sy, iwidth, iheight);
                    Image selImage = this.getSelectedImage(resourceTable, selData);
                    gc.drawImage(selImage, sx, sy);
                    gc.setBackground(savedBg);
                }
            } else {
                this.drawClipImage(gc, image, ix, iy, repaintRegion);
            }
        } else {
            this.drawClipImage(gc, image, ix, iy, repaintRegion);
        }
        if (selected) {
            int fx = bounds.x;
            int fy = bounds.y;
            if (repaintRegion != null) {
                fx -= repaintRegion.x;
                fy -= repaintRegion.y;
            }
            Color fg = gc.getForeground();
            gc.setForeground(gc.getBackground());
            gc.drawRectangle(bounds.x, bounds.y, bounds.width - 1, bounds.height - 1);
            gc.setForeground(fg);
            gc.drawFocus(fx, fy, bounds.width, bounds.height);
        }
    }

    private void drawClipImage(GC gc, Image image, int ix, int iy, Rectangle repaintRegion) {
        if (repaintRegion != null) {
            ix -= repaintRegion.x;
            iy -= repaintRegion.y;
        }
        gc.drawImage(image, ix, iy);
    }

    protected Point getObjectSize(Hashtable resourceTable, int wHint) {
        Image image = this.getImage(resourceTable);
        if (image == null) {
            return new Point(0, 0);
        }
        Rectangle ibounds = image.getBounds();
        return new Point(ibounds.width, ibounds.height);
    }
}

