/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ColumnLabelProvider;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IColorProvider;
import org.eclipse.jface.viewers.IFontProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ITreePathLabelProvider;
import org.eclipse.jface.viewers.IViewerLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerLabel;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;

class WrappedViewerLabelProvider
extends ColumnLabelProvider {
    private static ILabelProvider defaultLabelProvider = new LabelProvider();
    private ILabelProvider labelProvider = defaultLabelProvider;
    private IColorProvider colorProvider;
    private IFontProvider fontProvider;
    private IViewerLabelProvider viewerLabelProvider;
    private ITreePathLabelProvider treePathLabelProvider;

    public WrappedViewerLabelProvider(IBaseLabelProvider labelProvider) {
        this.setProviders(labelProvider);
    }

    public void setProviders(Object provider) {
        if (provider instanceof ITreePathLabelProvider) {
            this.treePathLabelProvider = (ITreePathLabelProvider)provider;
        }
        if (provider instanceof IViewerLabelProvider) {
            this.viewerLabelProvider = (IViewerLabelProvider)provider;
        }
        if (provider instanceof ILabelProvider) {
            this.labelProvider = (ILabelProvider)provider;
        }
        if (provider instanceof IColorProvider) {
            this.colorProvider = (IColorProvider)provider;
        }
        if (provider instanceof IFontProvider) {
            this.fontProvider = (IFontProvider)provider;
        }
    }

    public Font getFont(Object element) {
        if (this.fontProvider == null) {
            return null;
        }
        return this.fontProvider.getFont(element);
    }

    public Color getBackground(Object element) {
        if (this.colorProvider == null) {
            return null;
        }
        return this.colorProvider.getBackground(element);
    }

    public String getText(Object element) {
        return this.getLabelProvider().getText(element);
    }

    public Image getImage(Object element) {
        return this.getLabelProvider().getImage(element);
    }

    public Color getForeground(Object element) {
        if (this.colorProvider == null) {
            return null;
        }
        return this.colorProvider.getForeground(element);
    }

    ILabelProvider getLabelProvider() {
        return this.labelProvider;
    }

    IColorProvider getColorProvider() {
        return this.colorProvider;
    }

    IFontProvider getFontProvider() {
        return this.fontProvider;
    }

    public void update(ViewerCell cell) {
        Object element = cell.getElement();
        if (this.viewerLabelProvider == null && this.treePathLabelProvider == null) {
            cell.setText(this.getText(element));
            Image image = this.getImage(element);
            cell.setImage(image);
            if (this.colorProvider != null) {
                cell.setBackground(this.getBackground(element));
                cell.setForeground(this.getForeground(element));
            }
            if (this.fontProvider != null) {
                cell.setFont(this.getFont(element));
            }
            return;
        }
        ViewerLabel label = new ViewerLabel(cell.getText(), cell.getImage());
        if (this.treePathLabelProvider != null) {
            TreePath treePath = cell.getViewerRow().getTreePath();
            Assert.isNotNull((Object)treePath);
            this.treePathLabelProvider.updateLabel(label, treePath);
        } else if (this.viewerLabelProvider != null) {
            this.viewerLabelProvider.updateLabel(label, element);
        }
        if (!label.hasNewForeground() && this.colorProvider != null) {
            label.setForeground(this.getForeground(element));
        }
        if (!label.hasNewBackground() && this.colorProvider != null) {
            label.setBackground(this.getBackground(element));
        }
        if (!label.hasNewFont() && this.fontProvider != null) {
            label.setFont(this.getFont(element));
        }
        this.applyViewerLabel(cell, label);
    }

    private void applyViewerLabel(ViewerCell cell, ViewerLabel label) {
        if (label.hasNewText()) {
            cell.setText(label.getText());
        }
        if (label.hasNewImage()) {
            cell.setImage(label.getImage());
        }
        if (this.colorProvider != null || label.hasNewBackground()) {
            cell.setBackground(label.getBackground());
        }
        if (this.colorProvider != null || label.hasNewForeground()) {
            cell.setForeground(label.getForeground());
        }
        if (this.fontProvider != null || label.hasNewFont()) {
            cell.setFont(label.getFont());
        }
    }
}

