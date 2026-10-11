/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.graphics.Transform
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.progress;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Transform;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.internal.TrimUtil;
import org.eclipse.ui.internal.progress.AbstractProgressViewer;

public class ProgressCanvasViewer
extends AbstractProgressViewer {
    Canvas canvas;
    Object[] displayedItems = new Object[0];
    private static final List EMPTY_LIST = new ArrayList();
    private FontMetrics fontMetrics;
    private int numShowItems = 1;
    private int maxCharacterWidth;
    private int orientation = 256;

    ProgressCanvasViewer(Composite parent, int style, int itemsToShow, int numChars, int orientation) {
        this.orientation = orientation;
        this.numShowItems = itemsToShow;
        this.maxCharacterWidth = numChars;
        this.canvas = new Canvas(parent, style);
        this.hookControl((Control)this.canvas);
        GC gc = new GC((Drawable)this.canvas);
        gc.setFont(JFaceResources.getDefaultFont());
        this.fontMetrics = gc.getFontMetrics();
        gc.dispose();
        this.initializeListeners();
    }

    protected void hookControl(Control control) {
        control.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent event) {
                ProgressCanvasViewer.this.handleDispose(event);
            }
        });
    }

    protected Widget doFindInputItem(Object element) {
        return null;
    }

    protected Widget doFindItem(Object element) {
        return null;
    }

    protected void doUpdateItem(Widget item, Object element, boolean fullMap) {
        this.canvas.redraw();
    }

    protected List getSelectionFromWidget() {
        return EMPTY_LIST;
    }

    protected void internalRefresh(Object element) {
        this.displayedItems = this.getSortedChildren(this.getRoot());
        this.canvas.redraw();
    }

    public void reveal(Object element) {
    }

    protected void setSelectionToWidget(List l, boolean reveal) {
    }

    public Control getControl() {
        return this.canvas;
    }

    private void initializeListeners() {
        this.canvas.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent event) {
                GC gc = event.gc;
                Transform transform = null;
                if (ProgressCanvasViewer.this.orientation == 512) {
                    transform = new Transform((Device)event.display);
                    transform.translate((float)TrimUtil.TRIM_DEFAULT_HEIGHT, 0.0f);
                    transform.rotate(90.0f);
                }
                ILabelProvider labelProvider = (ILabelProvider)ProgressCanvasViewer.this.getLabelProvider();
                int itemCount = Math.min(ProgressCanvasViewer.this.displayedItems.length, ProgressCanvasViewer.this.numShowItems);
                int yOffset = 0;
                int xOffset = 0;
                if (ProgressCanvasViewer.this.numShowItems == 1) {
                    int size;
                    Rectangle clientArea = ProgressCanvasViewer.this.canvas.getParent().getClientArea();
                    if (ProgressCanvasViewer.this.orientation == 256) {
                        size = clientArea.height;
                        yOffset = size - ProgressCanvasViewer.this.fontMetrics.getHeight();
                        yOffset /= 2;
                    } else {
                        size = clientArea.width;
                        xOffset = size - ProgressCanvasViewer.this.fontMetrics.getHeight();
                        xOffset /= 2;
                    }
                }
                int i = 0;
                while (i < itemCount) {
                    String string = labelProvider.getText(ProgressCanvasViewer.this.displayedItems[i]);
                    if (string == null) {
                        string = "";
                    }
                    if (ProgressCanvasViewer.this.orientation == 256) {
                        gc.drawString(string, 2, yOffset + i * ProgressCanvasViewer.this.fontMetrics.getHeight(), true);
                    } else {
                        gc.setTransform(transform);
                        gc.drawString(string, xOffset + i * ProgressCanvasViewer.this.fontMetrics.getHeight(), 2, true);
                    }
                    ++i;
                }
                if (transform != null) {
                    transform.dispose();
                }
            }
        });
    }

    public void setLabelProvider(IBaseLabelProvider labelProvider) {
        Assert.isTrue((boolean)(labelProvider instanceof ILabelProvider));
        super.setLabelProvider(labelProvider);
    }

    public Point getSizeHints() {
        Display display = this.canvas.getDisplay();
        GC gc = new GC((Drawable)this.canvas);
        FontMetrics fm = gc.getFontMetrics();
        int charWidth = fm.getAverageCharWidth();
        int charHeight = fm.getHeight();
        int maxWidth = display.getBounds().width / 2;
        int maxHeight = display.getBounds().height / 6;
        int fontWidth = charWidth * this.maxCharacterWidth;
        int fontHeight = charHeight * this.numShowItems;
        if (maxWidth < fontWidth) {
            fontWidth = maxWidth;
        }
        if (maxHeight < fontHeight) {
            fontHeight = maxHeight;
        }
        gc.dispose();
        return new Point(fontWidth, fontHeight);
    }

    public void add(Object[] elements) {
        this.refresh(true);
    }

    public void remove(Object[] elements) {
        this.refresh(true);
    }
}

