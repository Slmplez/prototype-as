/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.viewers.DecorationContext;
import org.eclipse.jface.viewers.IColorDecorator;
import org.eclipse.jface.viewers.IColorProvider;
import org.eclipse.jface.viewers.IDecorationContext;
import org.eclipse.jface.viewers.IDelayedLabelDecorator;
import org.eclipse.jface.viewers.IFontDecorator;
import org.eclipse.jface.viewers.IFontProvider;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.ITreePathLabelProvider;
import org.eclipse.jface.viewers.IViewerLabelProvider;
import org.eclipse.jface.viewers.LabelDecorator;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.TreePath;
import org.eclipse.jface.viewers.ViewerLabel;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;

public class DecoratingLabelProvider
extends LabelProvider
implements ILabelProvider,
IViewerLabelProvider,
IColorProvider,
IFontProvider,
ITreePathLabelProvider {
    private ILabelProvider provider;
    private ILabelDecorator decorator;
    private ListenerList listeners = new ListenerList();
    private IDecorationContext decorationContext = DecorationContext.DEFAULT_CONTEXT;

    public DecoratingLabelProvider(ILabelProvider provider, ILabelDecorator decorator) {
        Assert.isNotNull((Object)provider);
        this.provider = provider;
        this.decorator = decorator;
    }

    public void addListener(ILabelProviderListener listener) {
        super.addListener(listener);
        this.provider.addListener(listener);
        if (this.decorator != null) {
            this.decorator.addListener(listener);
        }
        this.listeners.add((Object)listener);
    }

    public void dispose() {
        this.provider.dispose();
        if (this.decorator != null) {
            this.decorator.dispose();
        }
    }

    public Image getImage(Object element) {
        Image image = this.provider.getImage(element);
        if (this.decorator != null) {
            if (this.decorator instanceof LabelDecorator) {
                LabelDecorator ld2 = (LabelDecorator)this.decorator;
                Image decorated = ld2.decorateImage(image, element, this.getDecorationContext());
                if (decorated != null) {
                    return decorated;
                }
            } else {
                Image decorated = this.decorator.decorateImage(image, element);
                if (decorated != null) {
                    return decorated;
                }
            }
        }
        return image;
    }

    public ILabelDecorator getLabelDecorator() {
        return this.decorator;
    }

    public ILabelProvider getLabelProvider() {
        return this.provider;
    }

    public String getText(Object element) {
        String text = this.provider.getText(element);
        if (this.decorator != null) {
            if (this.decorator instanceof LabelDecorator) {
                LabelDecorator ld2 = (LabelDecorator)this.decorator;
                String decorated = ld2.decorateText(text, element, this.getDecorationContext());
                if (decorated != null) {
                    return decorated;
                }
            } else {
                String decorated = this.decorator.decorateText(text, element);
                if (decorated != null) {
                    return decorated;
                }
            }
        }
        return text;
    }

    public boolean isLabelProperty(Object element, String property) {
        if (this.provider.isLabelProperty(element, property)) {
            return true;
        }
        return this.decorator != null && this.decorator.isLabelProperty(element, property);
    }

    public void removeListener(ILabelProviderListener listener) {
        super.removeListener(listener);
        this.provider.removeListener(listener);
        if (this.decorator != null) {
            this.decorator.removeListener(listener);
        }
        this.listeners.remove((Object)listener);
    }

    public void setLabelDecorator(ILabelDecorator decorator) {
        ILabelDecorator oldDecorator = this.decorator;
        if (oldDecorator != decorator) {
            int i;
            Object[] listenerList = this.listeners.getListeners();
            if (oldDecorator != null) {
                i = 0;
                while (i < listenerList.length) {
                    oldDecorator.removeListener((ILabelProviderListener)listenerList[i]);
                    ++i;
                }
            }
            this.decorator = decorator;
            if (decorator != null) {
                i = 0;
                while (i < listenerList.length) {
                    decorator.addListener((ILabelProviderListener)listenerList[i]);
                    ++i;
                }
            }
            this.fireLabelProviderChanged(new LabelProviderChangedEvent(this));
        }
    }

    public void updateLabel(ViewerLabel settings, Object element) {
        IDelayedLabelDecorator delayedDecorator;
        ILabelDecorator currentDecorator = this.getLabelDecorator();
        String oldText = settings.getText();
        boolean decorationReady = true;
        if (currentDecorator instanceof IDelayedLabelDecorator && !(delayedDecorator = (IDelayedLabelDecorator)currentDecorator).prepareDecoration(element, oldText)) {
            decorationReady = false;
        }
        if (decorationReady || oldText == null || settings.getText().length() == 0) {
            settings.setText(this.getText(element));
        }
        Image oldImage = settings.getImage();
        if (decorationReady || oldImage == null) {
            settings.setImage(this.getImage(element));
        }
        if (decorationReady) {
            this.updateForDecorationReady(settings, element);
        }
    }

    protected void updateForDecorationReady(ViewerLabel settings, Object element) {
        if (this.decorator instanceof IColorDecorator) {
            IColorDecorator colorDecorator = (IColorDecorator)((Object)this.decorator);
            settings.setBackground(colorDecorator.decorateBackground(element));
            settings.setForeground(colorDecorator.decorateForeground(element));
        }
        if (this.decorator instanceof IFontDecorator) {
            settings.setFont(((IFontDecorator)((Object)this.decorator)).decorateFont(element));
        }
    }

    public Color getBackground(Object element) {
        if (this.provider instanceof IColorProvider) {
            return ((IColorProvider)((Object)this.provider)).getBackground(element);
        }
        return null;
    }

    public Font getFont(Object element) {
        if (this.provider instanceof IFontProvider) {
            return ((IFontProvider)((Object)this.provider)).getFont(element);
        }
        return null;
    }

    public Color getForeground(Object element) {
        if (this.provider instanceof IColorProvider) {
            return ((IColorProvider)((Object)this.provider)).getForeground(element);
        }
        return null;
    }

    public IDecorationContext getDecorationContext() {
        return this.decorationContext;
    }

    public void setDecorationContext(IDecorationContext decorationContext) {
        Assert.isNotNull((Object)decorationContext);
        this.decorationContext = decorationContext;
    }

    public void updateLabel(ViewerLabel settings, TreePath elementPath) {
        IDelayedLabelDecorator delayedDecorator;
        ILabelDecorator currentDecorator = this.getLabelDecorator();
        String oldText = settings.getText();
        Object element = elementPath.getLastSegment();
        boolean decorationReady = true;
        if (currentDecorator instanceof LabelDecorator) {
            LabelDecorator labelDecorator = (LabelDecorator)currentDecorator;
            if (!labelDecorator.prepareDecoration(element, oldText, this.getDecorationContext())) {
                decorationReady = false;
            }
        } else if (currentDecorator instanceof IDelayedLabelDecorator && !(delayedDecorator = (IDelayedLabelDecorator)currentDecorator).prepareDecoration(element, oldText)) {
            decorationReady = false;
        }
        settings.setHasPendingDecorations(!decorationReady);
        if (this.provider instanceof ITreePathLabelProvider) {
            ITreePathLabelProvider pprov = (ITreePathLabelProvider)((Object)this.provider);
            if (decorationReady || oldText == null || settings.getText().length() == 0) {
                pprov.updateLabel(settings, elementPath);
                this.decorateSettings(settings, elementPath);
            }
        } else {
            if (decorationReady || oldText == null || settings.getText().length() == 0) {
                settings.setText(this.getText(element));
            }
            Image oldImage = settings.getImage();
            if (decorationReady || oldImage == null) {
                settings.setImage(this.getImage(element));
            }
            if (decorationReady) {
                this.updateForDecorationReady(settings, element);
            }
        }
    }

    private void decorateSettings(ViewerLabel settings, TreePath elementPath) {
        Object element = elementPath.getLastSegment();
        if (this.decorator != null) {
            Font font;
            if (this.decorator instanceof LabelDecorator) {
                Image image;
                LabelDecorator labelDecorator = (LabelDecorator)this.decorator;
                String text = labelDecorator.decorateText(settings.getText(), element, this.getDecorationContext());
                if (text != null && text.length() > 0) {
                    settings.setText(text);
                }
                if ((image = labelDecorator.decorateImage(settings.getImage(), element, this.getDecorationContext())) != null) {
                    settings.setImage(image);
                }
            } else {
                Image image;
                String text = this.decorator.decorateText(settings.getText(), element);
                if (text != null && text.length() > 0) {
                    settings.setText(text);
                }
                if ((image = this.decorator.decorateImage(settings.getImage(), element)) != null) {
                    settings.setImage(image);
                }
            }
            if (this.decorator instanceof IColorDecorator) {
                Color foreground;
                IColorDecorator colorDecorator = (IColorDecorator)((Object)this.decorator);
                Color background = colorDecorator.decorateBackground(element);
                if (background != null) {
                    settings.setBackground(background);
                }
                if ((foreground = colorDecorator.decorateForeground(element)) != null) {
                    settings.setForeground(foreground);
                }
            }
            if (this.decorator instanceof IFontDecorator && (font = ((IFontDecorator)((Object)this.decorator)).decorateFont(element)) != null) {
                settings.setFont(font);
            }
        }
    }
}

