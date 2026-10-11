/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.viewers.DecorationOverlayIcon
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.decorators;

import java.util.List;
import java.util.ListIterator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.viewers.DecorationOverlayIcon;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;

public class DecorationResult {
    private List prefixes;
    private List suffixes;
    private ImageDescriptor[] descriptors;
    private Color foregroundColor;
    private Color backgroundColor;
    private Font font;

    DecorationResult(List prefixList, List suffixList, ImageDescriptor[] imageDescriptors, Color resultForegroundColor, Color resultBackgroundColor, Font resultFont) {
        this.prefixes = prefixList;
        this.suffixes = suffixList;
        if (this.hasOverlays(imageDescriptors)) {
            this.descriptors = imageDescriptors;
        }
        this.foregroundColor = resultForegroundColor;
        this.backgroundColor = resultBackgroundColor;
        this.font = resultFont;
    }

    private boolean hasOverlays(ImageDescriptor[] imageDescriptors) {
        int i = 0;
        while (i < imageDescriptors.length) {
            if (imageDescriptors[i] != null) {
                return true;
            }
            ++i;
        }
        return false;
    }

    Image decorateWithOverlays(Image image, ResourceManager manager) {
        if (image == null || this.descriptors == null) {
            return image;
        }
        Rectangle bounds = image.getBounds();
        Point size = new Point(bounds.width, bounds.height);
        DecorationOverlayIcon icon = new DecorationOverlayIcon(image, this.descriptors, size);
        return manager.createImage((ImageDescriptor)icon);
    }

    public String decorateWithText(String text) {
        if (this.prefixes.isEmpty() && this.suffixes.isEmpty()) {
            return text;
        }
        StringBuffer result = new StringBuffer();
        ListIterator prefixIterator = this.prefixes.listIterator();
        while (prefixIterator.hasNext()) {
            result.append(prefixIterator.next());
        }
        result.append(text);
        ListIterator suffixIterator = this.suffixes.listIterator();
        while (suffixIterator.hasNext()) {
            result.append(suffixIterator.next());
        }
        return result.toString();
    }

    ImageDescriptor[] getDescriptors() {
        return this.descriptors;
    }

    List getPrefixes() {
        return this.prefixes;
    }

    List getSuffixes() {
        return this.suffixes;
    }

    Color getBackgroundColor() {
        return this.backgroundColor;
    }

    Font getFont() {
        return this.font;
    }

    Color getForegroundColor() {
        return this.foregroundColor;
    }
}

