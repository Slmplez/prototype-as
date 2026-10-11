/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceColors
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.forms;

import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.forms.widgets.FormsResources;

public class HyperlinkSettings {
    public static final int UNDERLINE_NEVER = 1;
    public static final int UNDERLINE_HOVER = 2;
    public static final int UNDERLINE_ALWAYS = 3;
    private int hyperlinkUnderlineMode = 3;
    private Color background;
    private Color foreground;
    private Color activeBackground;
    private Color activeForeground;

    public HyperlinkSettings(Display display) {
        this.initializeDefaultForegrounds(display);
    }

    public void initializeDefaultForegrounds(Display display) {
        Color fg = JFaceColors.getHyperlinkText((Display)display);
        Color afg = JFaceColors.getActiveHyperlinkText((Display)display);
        if (fg == null) {
            fg = display.getSystemColor(9);
        }
        this.setForeground(fg);
        this.setActiveForeground(afg);
    }

    public Color getActiveBackground() {
        return this.activeBackground;
    }

    public Color getActiveForeground() {
        return this.activeForeground;
    }

    public Color getBackground() {
        return this.background;
    }

    public Cursor getBusyCursor() {
        return FormsResources.getBusyCursor();
    }

    public Cursor getTextCursor() {
        return FormsResources.getTextCursor();
    }

    public Color getForeground() {
        return this.foreground;
    }

    public Cursor getHyperlinkCursor() {
        return FormsResources.getHandCursor();
    }

    public int getHyperlinkUnderlineMode() {
        return this.hyperlinkUnderlineMode;
    }

    public void setActiveBackground(Color newActiveBackground) {
        this.activeBackground = newActiveBackground;
    }

    public void setActiveForeground(Color newActiveForeground) {
        this.activeForeground = newActiveForeground;
    }

    public void setBackground(Color newBackground) {
        this.background = newBackground;
    }

    public void setForeground(Color newForeground) {
        this.foreground = newForeground;
    }

    public void setHyperlinkUnderlineMode(int mode) {
        this.hyperlinkUnderlineMode = mode;
    }
}

