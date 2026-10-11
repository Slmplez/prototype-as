/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.DeviceResourceDescriptor
 *  org.eclipse.jface.resource.DeviceResourceException
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.viewers.StyledCellLabelProvider
 *  org.eclipse.jface.viewers.StyledString
 *  org.eclipse.jface.viewers.StyledString$Styler
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.graphics.TextLayout
 *  org.eclipse.swt.graphics.TextStyle
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.viewers.StyledCellLabelProvider;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.quickaccess.CommandElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;

class QuickAccessEntry {
    boolean firstInCategory;
    boolean lastInCategory;
    QuickAccessElement element;
    QuickAccessProvider provider;
    int[][] elementMatchRegions;
    int[][] providerMatchRegions;

    QuickAccessEntry(QuickAccessElement element, QuickAccessProvider provider, int[][] elementMatchRegions, int[][] providerMatchRegions) {
        this.element = element;
        this.provider = provider;
        this.elementMatchRegions = elementMatchRegions;
        this.providerMatchRegions = providerMatchRegions;
    }

    Image getImage(QuickAccessElement element, ResourceManager resourceManager) {
        Image image = this.findOrCreateImage(element.getImageDescriptor(), resourceManager);
        if (image == null) {
            image = WorkbenchImages.getImage("IMG_OBJ_ELEMENT");
        }
        return image;
    }

    private Image findOrCreateImage(ImageDescriptor imageDescriptor, ResourceManager resourceManager) {
        if (imageDescriptor == null) {
            return null;
        }
        Image image = (Image)resourceManager.find((DeviceResourceDescriptor)imageDescriptor);
        if (image == null) {
            try {
                image = resourceManager.createImage(imageDescriptor);
            }
            catch (DeviceResourceException e) {
                WorkbenchPlugin.log(e);
            }
        }
        return image;
    }

    public void measure(Event event, TextLayout textLayout, ResourceManager resourceManager, TextStyle boldStyle) {
        Table table = ((TableItem)event.item).getParent();
        textLayout.setFont(table.getFont());
        event.width = 0;
        switch (event.index) {
            case 0: {
                if (this.firstInCategory || this.providerMatchRegions.length > 0) {
                    textLayout.setText(this.provider.getName());
                    if (boldStyle == null) break;
                    int i = 0;
                    while (i < this.providerMatchRegions.length) {
                        int[] matchRegion = this.providerMatchRegions[i];
                        textLayout.setStyle(boldStyle, matchRegion[0], matchRegion[1]);
                        ++i;
                    }
                    break;
                }
                textLayout.setText("");
                break;
            }
            case 1: {
                Image image = this.getImage(this.element, resourceManager);
                Rectangle imageRect = image.getBounds();
                event.width += imageRect.width + 4;
                event.height = Math.max(event.height, imageRect.height + 2);
                textLayout.setText(this.element.getLabel());
                if (boldStyle == null) break;
                int i = 0;
                while (i < this.elementMatchRegions.length) {
                    int[] matchRegion = this.elementMatchRegions[i];
                    textLayout.setStyle(boldStyle, matchRegion[0], matchRegion[1]);
                    ++i;
                }
                break;
            }
        }
        Rectangle rect = textLayout.getBounds();
        event.width += rect.width + 4;
        event.height = Math.max(event.height, rect.height + 2);
    }

    public void paint(Event event, TextLayout textLayout, ResourceManager resourceManager, TextStyle boldStyle, Color grayColor) {
        Table table = ((TableItem)event.item).getParent();
        textLayout.setFont(table.getFont());
        switch (event.index) {
            case 0: {
                if (!this.firstInCategory && this.providerMatchRegions.length <= 0) break;
                textLayout.setText(this.provider.getName());
                if (boldStyle != null) {
                    int i = 0;
                    while (i < this.providerMatchRegions.length) {
                        int[] matchRegion = this.providerMatchRegions[i];
                        textLayout.setStyle(boldStyle, matchRegion[0], matchRegion[1]);
                        ++i;
                    }
                }
                if (grayColor != null && this.providerMatchRegions.length > 0 && !this.firstInCategory) {
                    event.gc.setForeground(grayColor);
                }
                Rectangle availableBounds = ((TableItem)event.item).getTextBounds(event.index);
                Rectangle requiredBounds = textLayout.getBounds();
                textLayout.draw(event.gc, availableBounds.x + 1, availableBounds.y + (availableBounds.height - requiredBounds.height) / 2);
                break;
            }
            case 1: {
                CommandElement commandElement;
                String binding;
                String label = this.element.getLabel();
                if (this.element instanceof CommandElement && (binding = (commandElement = (CommandElement)this.element).getBinding()) != null) {
                    StyledString styledString = StyledCellLabelProvider.styleDecoratedString((String)label, (StyledString.Styler)StyledString.QUALIFIER_STYLER, (StyledString)new StyledString(commandElement.getCommand()));
                    StyleRange[] styleRanges = styledString.getStyleRanges();
                    int i = 0;
                    while (i < styleRanges.length) {
                        textLayout.setStyle((TextStyle)styleRanges[i], styleRanges[i].start, styleRanges[i].start + styleRanges[i].length);
                        ++i;
                    }
                }
                Image image = this.getImage(this.element, resourceManager);
                event.gc.drawImage(image, event.x + 1, event.y + 1);
                textLayout.setText(label);
                if (boldStyle != null) {
                    int i = 0;
                    while (i < this.elementMatchRegions.length) {
                        int[] matchRegion = this.elementMatchRegions[i];
                        textLayout.setStyle(boldStyle, matchRegion[0], matchRegion[1]);
                        ++i;
                    }
                }
                Rectangle availableBounds = ((TableItem)event.item).getTextBounds(event.index);
                Rectangle requiredBounds = textLayout.getBounds();
                textLayout.draw(event.gc, availableBounds.x + 1 + image.getBounds().width, availableBounds.y + (availableBounds.height - requiredBounds.height) / 2);
            }
        }
        if (this.lastInCategory) {
            if (grayColor != null) {
                event.gc.setForeground(grayColor);
            }
            Rectangle bounds = ((TableItem)event.item).getBounds(event.index);
            event.gc.drawLine(Math.max(0, bounds.x - 1), bounds.y + bounds.height - 1, bounds.x + bounds.width, bounds.y + bounds.height - 1);
        }
    }

    public void erase(Event event) {
        event.detail &= 0xFFFFFFEF;
    }
}

