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

import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;

public class ViewerLabel {
    private String newText = null;
    private Image newImage = null;
    private boolean imageUpdated = false;
    private boolean textUpdated = false;
    private Color background = null;
    private Color foreground = null;
    private Font font = null;
    private String startText;
    private Image startImage;
    private boolean hasPendingDecorations;
    private String tooltipText;
    private Color tooltipForegroundColor;
    private Color tooltipBackgroundColor;
    private Point tooltipShift;

    public ViewerLabel(String initialText, Image initialImage) {
        this.startText = initialText;
        this.startImage = initialImage;
    }

    public final Image getImage() {
        if (this.imageUpdated) {
            return this.newImage;
        }
        return this.startImage;
    }

    public final void setImage(Image image) {
        this.imageUpdated = true;
        this.newImage = image;
    }

    public final String getText() {
        if (this.textUpdated) {
            return this.newText;
        }
        return this.startText;
    }

    public final void setText(String text) {
        this.newText = text;
        this.textUpdated = true;
    }

    public boolean hasNewImage() {
        if (this.startImage == null) {
            return this.newImage != null;
        }
        if (this.imageUpdated) {
            return !this.startImage.equals((Object)this.newImage);
        }
        return false;
    }

    public boolean hasNewText() {
        if (this.startText == null) {
            return this.newText != null;
        }
        if (this.textUpdated) {
            return !this.startText.equals(this.newText);
        }
        return false;
    }

    public boolean hasNewBackground() {
        return this.background != null;
    }

    public boolean hasNewForeground() {
        return this.foreground != null;
    }

    public boolean hasNewFont() {
        return this.font != null;
    }

    public Color getBackground() {
        return this.background;
    }

    public void setBackground(Color background) {
        this.background = background;
    }

    public Font getFont() {
        return this.font;
    }

    public void setFont(Font font) {
        this.font = font;
    }

    public Color getForeground() {
        return this.foreground;
    }

    public void setForeground(Color foreground) {
        this.foreground = foreground;
    }

    void setHasPendingDecorations(boolean hasPendingDecorations) {
        this.hasPendingDecorations = hasPendingDecorations;
    }

    boolean hasPendingDecorations() {
        return this.hasPendingDecorations;
    }

    public String getTooltipText() {
        return this.tooltipText;
    }

    public void setTooltipText(String tooltipText) {
        this.tooltipText = tooltipText;
    }

    public boolean hasNewTooltipText() {
        return this.tooltipText != null;
    }

    public Color getTooltipBackgroundColor() {
        return this.tooltipBackgroundColor;
    }

    public void setTooltipBackgroundColor(Color tooltipBackgroundColor) {
        this.tooltipBackgroundColor = tooltipBackgroundColor;
    }

    public boolean hasNewTooltipBackgroundColor() {
        return this.tooltipBackgroundColor != null;
    }

    public Color getTooltipForegroundColor() {
        return this.tooltipForegroundColor;
    }

    public void setTooltipForegroundColor(Color tooltipForegroundColor) {
        this.tooltipForegroundColor = tooltipForegroundColor;
    }

    public boolean hasNewTooltipForegroundColor() {
        return this.tooltipForegroundColor != null;
    }

    public Point getTooltipShift() {
        return this.tooltipShift;
    }

    public void setTooltipShift(Point tooltipShift) {
        this.tooltipShift = tooltipShift;
    }

    public boolean hasTooltipShift() {
        return this.tooltipShift != null;
    }
}

