/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.resource;

import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public class JFaceColors {
    public static Color getBannerBackground(Display display) {
        return display.getSystemColor(25);
    }

    public static Color getBannerForeground(Display display) {
        return display.getSystemColor(24);
    }

    public static Color getErrorBackground(Display display) {
        return display.getSystemColor(22);
    }

    public static Color getErrorBorder(Display display) {
        return display.getSystemColor(17);
    }

    public static Color getErrorText(Display display) {
        return JFaceResources.getColorRegistry().get("ERROR_COLOR");
    }

    public static Color getHyperlinkText(Display display) {
        return JFaceResources.getColorRegistry().get("HYPERLINK_COLOR");
    }

    public static Color getActiveHyperlinkText(Display display) {
        return JFaceResources.getColorRegistry().get("ACTIVE_HYPERLINK_COLOR");
    }

    public static void clearColor(String colorName) {
    }

    public static void disposeColors() {
    }

    public static void setColors(Control control, Color foreground, Color background) {
        if (foreground != null) {
            control.setForeground(foreground);
        }
        if (background != null) {
            control.setBackground(background);
        }
    }
}

