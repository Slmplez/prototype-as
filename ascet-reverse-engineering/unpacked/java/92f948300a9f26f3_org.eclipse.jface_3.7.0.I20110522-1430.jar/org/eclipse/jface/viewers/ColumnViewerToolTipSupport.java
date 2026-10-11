/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.CellLabelProvider;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.jface.viewers.ViewerRow;
import org.eclipse.jface.window.DefaultToolTip;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;

public class ColumnViewerToolTipSupport
extends DefaultToolTip {
    private ColumnViewer viewer;
    private static final String VIEWER_CELL_KEY = "org.eclipse.jface_VIEWER_CELL_KEY";
    private static final int DEFAULT_SHIFT_X = 10;
    private static final int DEFAULT_SHIFT_Y = 0;

    protected ColumnViewerToolTipSupport(ColumnViewer viewer, int style, boolean manualActivation) {
        super(viewer.getControl(), style, manualActivation);
        this.viewer = viewer;
    }

    public static void enableFor(ColumnViewer viewer) {
        new ColumnViewerToolTipSupport(viewer, 2, false);
    }

    public static void enableFor(ColumnViewer viewer, int style) {
        new ColumnViewerToolTipSupport(viewer, style, false);
    }

    protected Object getToolTipArea(Event event) {
        return this.viewer.getCell(new Point(event.x, event.y));
    }

    protected Composite createToolTipContentArea(Event event, Composite parent) {
        ViewerCell cell = (ViewerCell)this.getData(VIEWER_CELL_KEY);
        this.setData(VIEWER_CELL_KEY, null);
        return this.createViewerToolTipContentArea(event, cell, parent);
    }

    protected Composite createViewerToolTipContentArea(Event event, ViewerCell cell, Composite parent) {
        return super.createToolTipContentArea(event, parent);
    }

    protected boolean shouldCreateToolTip(Event event) {
        if (!super.shouldCreateToolTip(event)) {
            return false;
        }
        boolean rv = false;
        ViewerRow row = this.viewer.getViewerRow(new Point(event.x, event.y));
        this.viewer.getControl().setToolTipText("");
        Point point = new Point(event.x, event.y);
        if (row != null) {
            Object element = row.getItem().getData();
            ViewerCell cell = row.getCell(point);
            if (cell == null) {
                return false;
            }
            ViewerColumn viewPart = this.viewer.getViewerColumn(cell.getColumnIndex());
            if (viewPart == null) {
                return false;
            }
            CellLabelProvider labelProvider = viewPart.getLabelProvider();
            boolean useNative = labelProvider.useNativeToolTip(element);
            String text = labelProvider.getToolTipText(element);
            Image img = null;
            if (!useNative) {
                img = labelProvider.getToolTipImage(element);
            }
            if (useNative || text == null && img == null) {
                this.viewer.getControl().setToolTipText(text);
                rv = false;
            } else {
                this.setPopupDelay(labelProvider.getToolTipDisplayDelayTime(element));
                this.setHideDelay(labelProvider.getToolTipTimeDisplayed(element));
                Point shift = labelProvider.getToolTipShift(element);
                if (shift == null) {
                    this.setShift(new Point(10, 0));
                } else {
                    this.setShift(new Point(shift.x, shift.y));
                }
                this.setData(VIEWER_CELL_KEY, cell);
                this.setText(text);
                this.setImage(img);
                this.setStyle(labelProvider.getToolTipStyle(element));
                this.setForegroundColor(labelProvider.getToolTipForegroundColor(element));
                this.setBackgroundColor(labelProvider.getToolTipBackgroundColor(element));
                this.setFont(labelProvider.getToolTipFont(element));
                rv = this.getText(event) != null || this.getImage(event) != null;
            }
        }
        return rv;
    }

    protected void afterHideToolTip(Event event) {
        super.afterHideToolTip(event);
        this.setData(VIEWER_CELL_KEY, null);
        if (event != null && event.widget != this.viewer.getControl()) {
            this.viewer.getControl().setFocus();
        }
    }
}

