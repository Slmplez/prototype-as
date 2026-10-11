/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.swt.graphics.Color;

public final class DefaultTabFolderColors {
    Color foreground;
    int[] percentages;
    Color[] background;
    boolean vertical;

    public DefaultTabFolderColors() {
    }

    public DefaultTabFolderColors(Color fgColor, Color[] bgColors, int[] percentages, boolean vertical) {
        this.foreground = fgColor;
        this.background = bgColors;
        this.percentages = percentages;
        this.vertical = vertical;
    }

    public DefaultTabFolderColors setForeground(Color fg) {
        this.foreground = fg;
        return this;
    }

    public DefaultTabFolderColors setBackground(Color[] background, int[] percentages, boolean vertical) {
        this.background = background;
        this.percentages = percentages;
        this.vertical = vertical;
        return this;
    }
}

