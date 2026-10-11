/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ITableColorProvider;
import org.eclipse.jface.viewers.ITableFontProvider;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.WrappedViewerLabelProvider;

class TableColumnViewerLabelProvider
extends WrappedViewerLabelProvider {
    private ITableLabelProvider tableLabelProvider;
    private ITableColorProvider tableColorProvider;
    private ITableFontProvider tableFontProvider;

    public TableColumnViewerLabelProvider(IBaseLabelProvider labelProvider) {
        super(labelProvider);
        if (labelProvider instanceof ITableLabelProvider) {
            this.tableLabelProvider = (ITableLabelProvider)labelProvider;
        }
        if (labelProvider instanceof ITableColorProvider) {
            this.tableColorProvider = (ITableColorProvider)((Object)labelProvider);
        }
        if (labelProvider instanceof ITableFontProvider) {
            this.tableFontProvider = (ITableFontProvider)((Object)labelProvider);
        }
    }

    public void update(ViewerCell cell) {
        Object element = cell.getElement();
        int index = cell.getColumnIndex();
        if (this.tableLabelProvider == null) {
            cell.setText(this.getLabelProvider().getText(element));
            cell.setImage(this.getLabelProvider().getImage(element));
        } else {
            cell.setText(this.tableLabelProvider.getColumnText(element, index));
            cell.setImage(this.tableLabelProvider.getColumnImage(element, index));
        }
        if (this.tableColorProvider == null) {
            if (this.getColorProvider() != null) {
                cell.setBackground(this.getColorProvider().getBackground(element));
                cell.setForeground(this.getColorProvider().getForeground(element));
            }
        } else {
            cell.setBackground(this.tableColorProvider.getBackground(element, index));
            cell.setForeground(this.tableColorProvider.getForeground(element, index));
        }
        if (this.tableFontProvider == null) {
            if (this.getFontProvider() != null) {
                cell.setFont(this.getFontProvider().getFont(element));
            }
        } else {
            cell.setFont(this.tableFontProvider.getFont(element, index));
        }
    }
}

