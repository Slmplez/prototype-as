/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.CellLabelProvider;
import org.eclipse.jface.viewers.IColorProvider;
import org.eclipse.jface.viewers.IFontProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;

public class ColumnLabelProvider
extends CellLabelProvider
implements IFontProvider,
IColorProvider,
ILabelProvider {
    public void update(ViewerCell cell) {
        Object element = cell.getElement();
        cell.setText(this.getText(element));
        Image image = this.getImage(element);
        cell.setImage(image);
        cell.setBackground(this.getBackground(element));
        cell.setForeground(this.getForeground(element));
        cell.setFont(this.getFont(element));
    }

    public Font getFont(Object element) {
        return null;
    }

    public Color getBackground(Object element) {
        return null;
    }

    public Color getForeground(Object element) {
        return null;
    }

    public Image getImage(Object element) {
        return null;
    }

    public String getText(Object element) {
        return element == null ? "" : element.toString();
    }
}

