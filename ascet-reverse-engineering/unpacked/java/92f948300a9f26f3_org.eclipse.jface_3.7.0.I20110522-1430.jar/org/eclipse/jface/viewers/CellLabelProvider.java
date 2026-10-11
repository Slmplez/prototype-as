/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.BaseLabelProvider;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ITableColorProvider;
import org.eclipse.jface.viewers.ITableFontProvider;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.TableColumnViewerLabelProvider;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.jface.viewers.WrappedViewerLabelProvider;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;

public abstract class CellLabelProvider
extends BaseLabelProvider {
    static CellLabelProvider createViewerLabelProvider(ColumnViewer viewer, IBaseLabelProvider labelProvider) {
        boolean noColumnTreeViewer;
        boolean bl = noColumnTreeViewer = viewer instanceof AbstractTreeViewer && viewer.doGetColumnCount() == 0;
        if (!noColumnTreeViewer && (labelProvider instanceof ITableLabelProvider || labelProvider instanceof ITableColorProvider || labelProvider instanceof ITableFontProvider)) {
            return new TableColumnViewerLabelProvider(labelProvider);
        }
        if (labelProvider instanceof CellLabelProvider) {
            return (CellLabelProvider)labelProvider;
        }
        return new WrappedViewerLabelProvider(labelProvider);
    }

    public Image getToolTipImage(Object object) {
        return null;
    }

    public String getToolTipText(Object element) {
        return null;
    }

    public Color getToolTipBackgroundColor(Object object) {
        return null;
    }

    public Color getToolTipForegroundColor(Object object) {
        return null;
    }

    public Font getToolTipFont(Object object) {
        return null;
    }

    public Point getToolTipShift(Object object) {
        return null;
    }

    public boolean useNativeToolTip(Object object) {
        return false;
    }

    public int getToolTipTimeDisplayed(Object object) {
        return 0;
    }

    public int getToolTipDisplayDelayTime(Object object) {
        return 0;
    }

    public int getToolTipStyle(Object object) {
        return 32;
    }

    public abstract void update(ViewerCell var1);

    protected void initialize(ColumnViewer viewer, ViewerColumn column) {
    }

    public void dispose(ColumnViewer viewer, ViewerColumn column) {
        this.dispose();
    }
}

