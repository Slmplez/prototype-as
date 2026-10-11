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
import org.eclipse.jface.viewers.DecorationContext;
import org.eclipse.jface.viewers.DelegatingStyledCellLabelProvider;
import org.eclipse.jface.viewers.IColorDecorator;
import org.eclipse.jface.viewers.IDecorationContext;
import org.eclipse.jface.viewers.IDelayedLabelDecorator;
import org.eclipse.jface.viewers.IFontDecorator;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.LabelDecorator;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.StyledCellLabelProvider;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;

public class DecoratingStyledCellLabelProvider
extends DelegatingStyledCellLabelProvider {
    private ILabelDecorator decorator;
    private IDecorationContext decorationContext = DecorationContext.DEFAULT_CONTEXT;
    private ILabelProviderListener labelProviderListener;

    public DecoratingStyledCellLabelProvider(DelegatingStyledCellLabelProvider.IStyledLabelProvider labelProvider, ILabelDecorator decorator, IDecorationContext decorationContext) {
        super(labelProvider);
        this.decorator = decorator;
        this.decorationContext = decorationContext != null ? decorationContext : DecorationContext.DEFAULT_CONTEXT;
        this.labelProviderListener = new ILabelProviderListener(){

            public void labelProviderChanged(LabelProviderChangedEvent event) {
                DecoratingStyledCellLabelProvider.this.fireLabelProviderChanged(event);
            }
        };
        labelProvider.addListener(this.labelProviderListener);
        if (decorator != null) {
            decorator.addListener(this.labelProviderListener);
        }
    }

    public IDecorationContext getDecorationContext() {
        return this.decorationContext;
    }

    public void setDecorationContext(IDecorationContext decorationContext) {
        Assert.isNotNull((Object)decorationContext);
        this.decorationContext = decorationContext;
    }

    private boolean waitForPendingDecoration(ViewerCell cell) {
        if (this.decorator == null) {
            return false;
        }
        Object element = cell.getElement();
        String oldText = cell.getText();
        boolean isDecorationPending = false;
        if (this.decorator instanceof LabelDecorator) {
            isDecorationPending = !((LabelDecorator)this.decorator).prepareDecoration(element, oldText, this.getDecorationContext());
        } else if (this.decorator instanceof IDelayedLabelDecorator) {
            boolean bl = isDecorationPending = !((IDelayedLabelDecorator)this.decorator).prepareDecoration(element, oldText);
        }
        if (isDecorationPending && oldText.length() == 0) {
            return false;
        }
        return isDecorationPending;
    }

    public void update(ViewerCell cell) {
        if (this.waitForPendingDecoration(cell)) {
            return;
        }
        super.update(cell);
    }

    public Color getForeground(Object element) {
        Color foreground;
        if (this.decorator instanceof IColorDecorator && (foreground = ((IColorDecorator)((Object)this.decorator)).decorateForeground(element)) != null) {
            return foreground;
        }
        return super.getForeground(element);
    }

    public Color getBackground(Object element) {
        Color color;
        if (this.decorator instanceof IColorDecorator && (color = ((IColorDecorator)((Object)this.decorator)).decorateBackground(element)) != null) {
            return color;
        }
        return super.getBackground(element);
    }

    public Font getFont(Object element) {
        Font font;
        if (this.decorator instanceof IFontDecorator && (font = ((IFontDecorator)((Object)this.decorator)).decorateFont(element)) != null) {
            return font;
        }
        return super.getFont(element);
    }

    public Image getImage(Object element) {
        Image image = super.getImage(element);
        if (this.decorator == null) {
            return image;
        }
        Image decorated = null;
        decorated = this.decorator instanceof LabelDecorator ? ((LabelDecorator)this.decorator).decorateImage(image, element, this.getDecorationContext()) : this.decorator.decorateImage(image, element);
        if (decorated != null) {
            return decorated;
        }
        return image;
    }

    protected StyledString getStyledText(Object element) {
        StyledString styledString = super.getStyledText(element);
        if (this.decorator == null) {
            return styledString;
        }
        String label = styledString.getString();
        String decorated = this.decorator instanceof LabelDecorator ? ((LabelDecorator)this.decorator).decorateText(label, element, this.getDecorationContext()) : this.decorator.decorateText(label, element);
        if (decorated == null) {
            return styledString;
        }
        StyledString.Styler style = this.getDecorationStyle(element);
        return StyledCellLabelProvider.styleDecoratedString(decorated, style, styledString);
    }

    protected StyledString.Styler getDecorationStyle(Object element) {
        return StyledString.DECORATIONS_STYLER;
    }

    public ILabelDecorator getLabelDecorator() {
        return this.decorator;
    }

    public void setLabelDecorator(ILabelDecorator newDecorator) {
        ILabelDecorator oldDecorator = this.decorator;
        if (oldDecorator != newDecorator) {
            if (oldDecorator != null) {
                oldDecorator.removeListener(this.labelProviderListener);
            }
            this.decorator = newDecorator;
            if (newDecorator != null) {
                newDecorator.addListener(this.labelProviderListener);
            }
        }
        this.fireLabelProviderChanged(new LabelProviderChangedEvent(this));
    }

    public void addListener(ILabelProviderListener listener) {
        super.addListener(listener);
        if (this.decorator != null) {
            this.decorator.addListener(this.labelProviderListener);
        }
    }

    public void removeListener(ILabelProviderListener listener) {
        super.removeListener(listener);
        if (this.decorator != null && !this.isListenerAttached()) {
            this.decorator.removeListener(this.labelProviderListener);
        }
    }

    public boolean isLabelProperty(Object element, String property) {
        if (super.isLabelProperty(element, property)) {
            return true;
        }
        return this.decorator != null && this.decorator.isLabelProperty(element, property);
    }

    public void dispose() {
        super.dispose();
        if (this.decorator != null) {
            this.decorator.removeListener(this.labelProviderListener);
            this.decorator.dispose();
            this.decorator = null;
        }
    }
}

