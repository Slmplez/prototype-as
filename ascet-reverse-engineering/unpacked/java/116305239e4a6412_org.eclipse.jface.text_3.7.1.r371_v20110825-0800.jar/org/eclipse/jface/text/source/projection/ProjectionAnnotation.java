/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.text.source.projection;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationPresentation;
import org.eclipse.jface.text.source.ImageUtilities;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Display;

public class ProjectionAnnotation
extends Annotation
implements IAnnotationPresentation {
    public static final String TYPE = "org.eclipse.projection";
    private static final int COLOR = 15;
    private static Image fgCollapsedImage;
    private static Image fgExpandedImage;
    private boolean fIsCollapsed = false;
    private boolean fIsRangeIndication = false;
    static /* synthetic */ Class class$0;

    public ProjectionAnnotation() {
        this(false);
    }

    public ProjectionAnnotation(boolean isCollapsed) {
        super(TYPE, false, null);
        this.fIsCollapsed = isCollapsed;
    }

    public void setRangeIndication(boolean rangeIndication) {
        this.fIsRangeIndication = rangeIndication;
    }

    private void drawRangeIndication(GC gc, Canvas canvas, Rectangle r) {
        int height = Math.min(r.y + r.height - 3, canvas.getSize().y);
        gc.setForeground(canvas.getDisplay().getSystemColor(15));
        gc.setLineWidth(0);
        gc.drawLine(r.x + 4, r.y + 12, r.x + 4, height);
        gc.drawLine(r.x + 4, height, r.x + r.width - 3, height);
    }

    public void paint(GC gc, Canvas canvas, Rectangle rectangle) {
        Image image = this.getImage(canvas.getDisplay());
        if (image != null) {
            ImageUtilities.drawImage(image, gc, canvas, rectangle, 0x1000000, 128);
            if (this.fIsRangeIndication) {
                FontMetrics fontMetrics = gc.getFontMetrics();
                int delta = (fontMetrics.getHeight() - image.getBounds().height) / 2;
                rectangle.y += delta;
                rectangle.height -= delta;
                this.drawRangeIndication(gc, canvas, rectangle);
            }
        }
    }

    public int getLayer() {
        return 0;
    }

    private Image getImage(Display display) {
        this.initializeImages(display);
        return this.isCollapsed() ? fgCollapsedImage : fgExpandedImage;
    }

    private void initializeImages(Display display) {
        if (fgCollapsedImage == null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.text.source.projection.ProjectionAnnotation");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ImageDescriptor descriptor = ImageDescriptor.createFromFile((Class)clazz, (String)"images/collapsed.png");
            fgCollapsedImage = descriptor.createImage((Device)display);
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.jface.text.source.projection.ProjectionAnnotation");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            descriptor = ImageDescriptor.createFromFile((Class)clazz2, (String)"images/expanded.png");
            fgExpandedImage = descriptor.createImage((Device)display);
            display.disposeExec((Runnable)new DisplayDisposeRunnable());
        }
    }

    public boolean isCollapsed() {
        return this.fIsCollapsed;
    }

    public void markCollapsed() {
        this.fIsCollapsed = true;
    }

    public void markExpanded() {
        this.fIsCollapsed = false;
    }

    private static class DisplayDisposeRunnable
    implements Runnable {
        private DisplayDisposeRunnable() {
        }

        public void run() {
            if (fgCollapsedImage != null) {
                fgCollapsedImage.dispose();
                fgCollapsedImage = null;
            }
            if (fgExpandedImage != null) {
                fgExpandedImage.dispose();
                fgExpandedImage = null;
            }
        }
    }
}

