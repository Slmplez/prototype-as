/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public class DragHandle
extends Composite
implements PaintListener {
    Cursor dragCursor;
    Image handleImage;
    ImageDescriptor descriptor;
    private boolean isHorizontal;
    private static int margin = 2;

    public DragHandle(Composite parent) {
        super(parent, 0);
        this.dragCursor = new Cursor((Device)parent.getDisplay(), 5);
        this.addPaintListener(this);
        this.descriptor = AbstractUIPlugin.imageDescriptorFromPlugin(WorkbenchPlugin.PI_WORKBENCH, "icons/misc/handle.gif");
        this.handleImage = new Image((Device)parent.getDisplay(), 4, 4);
        GC context = new GC((Drawable)this.handleImage);
        context.setForeground(parent.getDisplay().getSystemColor(22));
        context.drawPoint(0, 0);
        context.drawPoint(2, 0);
        context.drawPoint(3, 0);
        context.drawPoint(3, 1);
        context.drawPoint(0, 2);
        context.drawPoint(3, 2);
        context.drawPoint(0, 3);
        context.drawPoint(1, 3);
        context.drawPoint(2, 3);
        context.drawPoint(3, 3);
        context.setForeground(parent.getDisplay().getSystemColor(18));
        context.drawPoint(1, 0);
        context.drawPoint(0, 1);
        context.setForeground(parent.getDisplay().getSystemColor(17));
        context.drawPoint(1, 1);
        context.setForeground(parent.getDisplay().getSystemColor(20));
        context.drawPoint(1, 2);
        context.drawPoint(2, 1);
        context.drawPoint(2, 2);
        context.dispose();
        this.setCursor(this.dragCursor);
    }

    public void paintControl(PaintEvent e) {
        Point size = this.getSize();
        if (this.handleImage != null) {
            Rectangle ibounds = this.handleImage.getBounds();
            int x = (size.x - 2 * margin) % ibounds.width / 2 + margin;
            int y = (size.y - 2 * margin) % ibounds.height / 2 + margin;
            do {
                e.gc.drawImage(this.handleImage, x, y);
            } while (!(this.isHorizontal ? (x += ibounds.width) + ibounds.width > size.x - margin : (y += ibounds.height) + ibounds.height > size.y - margin));
        }
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        Point result = new Point(wHint, hHint);
        Rectangle ibounds = this.handleImage.getBounds();
        if (wHint == -1) {
            result.x = ibounds.width + 2 * margin;
        }
        if (hHint == -1) {
            result.y = ibounds.height + 2 * margin;
        }
        return result;
    }

    public void setHorizontal(boolean isHorizontal) {
        this.isHorizontal = isHorizontal;
    }

    public void dispose() {
        if (this.isDisposed()) {
            return;
        }
        super.dispose();
        this.dragCursor.dispose();
        this.handleImage.dispose();
        JFaceResources.getResources().destroyImage(this.descriptor);
    }
}

