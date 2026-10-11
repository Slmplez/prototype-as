/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.viewers;

import java.util.Arrays;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IColorProvider;
import org.eclipse.jface.viewers.IFontProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.StyledCellLabelProvider;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;

public class DelegatingStyledCellLabelProvider
extends StyledCellLabelProvider {
    private IStyledLabelProvider styledLabelProvider;

    public DelegatingStyledCellLabelProvider(IStyledLabelProvider labelProvider) {
        if (labelProvider == null) {
            throw new IllegalArgumentException("Label provider must not be null");
        }
        this.styledLabelProvider = labelProvider;
    }

    public void update(ViewerCell cell) {
        Object[] newStyleRanges;
        Object element = cell.getElement();
        StyledString styledString = this.getStyledText(element);
        String newText = styledString.toString();
        Object[] oldStyleRanges = cell.getStyleRanges();
        Object[] objectArray = newStyleRanges = this.isOwnerDrawEnabled() ? styledString.getStyleRanges() : null;
        if (!Arrays.equals(oldStyleRanges, newStyleRanges)) {
            cell.setStyleRanges((StyleRange[])newStyleRanges);
            if (cell.getText().equals(newText)) {
                cell.setText("");
            }
        }
        cell.setText(newText);
        cell.setImage(this.getImage(element));
        cell.setFont(this.getFont(element));
        cell.setForeground(this.getForeground(element));
        cell.setBackground(this.getBackground(element));
    }

    public Color getForeground(Object element) {
        if (this.styledLabelProvider instanceof IColorProvider) {
            return ((IColorProvider)((Object)this.styledLabelProvider)).getForeground(element);
        }
        return null;
    }

    public Color getBackground(Object element) {
        if (this.styledLabelProvider instanceof IColorProvider) {
            return ((IColorProvider)((Object)this.styledLabelProvider)).getBackground(element);
        }
        return null;
    }

    public Font getFont(Object element) {
        if (this.styledLabelProvider instanceof IFontProvider) {
            return ((IFontProvider)((Object)this.styledLabelProvider)).getFont(element);
        }
        return null;
    }

    public Image getImage(Object element) {
        return this.styledLabelProvider.getImage(element);
    }

    protected StyledString getStyledText(Object element) {
        return this.styledLabelProvider.getStyledText(element);
    }

    public IStyledLabelProvider getStyledStringProvider() {
        return this.styledLabelProvider;
    }

    public void addListener(ILabelProviderListener listener) {
        super.addListener(listener);
        this.styledLabelProvider.addListener(listener);
    }

    public void removeListener(ILabelProviderListener listener) {
        super.removeListener(listener);
        this.styledLabelProvider.removeListener(listener);
    }

    public boolean isLabelProperty(Object element, String property) {
        return this.styledLabelProvider.isLabelProperty(element, property);
    }

    public void dispose() {
        super.dispose();
        this.styledLabelProvider.dispose();
    }

    public static interface IStyledLabelProvider
    extends IBaseLabelProvider {
        public StyledString getStyledText(Object var1);

        public Image getImage(Object var1);
    }
}

