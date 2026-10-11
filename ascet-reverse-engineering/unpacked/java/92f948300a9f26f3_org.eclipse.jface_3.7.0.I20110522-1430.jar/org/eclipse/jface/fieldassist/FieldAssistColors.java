/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.fieldassist;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public class FieldAssistColors {
    private static boolean DEBUG = false;
    private static Map requiredFieldColorMap = new HashMap();
    private static Map displays = new HashMap();

    public static RGB computeErrorFieldBackgroundRGB(Control control) {
        Color dest = control.getBackground();
        Color src = JFaceColors.getErrorText(control.getDisplay());
        int destRed = dest.getRed();
        int destGreen = dest.getGreen();
        int destBlue = dest.getBlue();
        int alpha = 25;
        destRed += (src.getRed() - destRed) * alpha / 255;
        destGreen += (src.getGreen() - destGreen) * alpha / 255;
        destBlue += (src.getBlue() - destBlue) * alpha / 255;
        return new RGB(destRed, destGreen, destBlue);
    }

    public static Color getRequiredFieldBackgroundColor(Control control) {
        final Display display = control.getDisplay();
        if (display.getHighContrast()) {
            return control.getBackground();
        }
        Object storedColor = requiredFieldColorMap.get(control.getBackground());
        if (storedColor != null) {
            return (Color)storedColor;
        }
        Color dest = control.getBackground();
        Color src = display.getSystemColor(7);
        int destRed = dest.getRed();
        int destGreen = dest.getGreen();
        int destBlue = dest.getBlue();
        int alpha = 38;
        destRed += (src.getRed() - destRed) * alpha / 255;
        destGreen += (src.getGreen() - destGreen) * alpha / 255;
        destBlue += (src.getBlue() - destBlue) * alpha / 255;
        Color color = new Color((Device)display, destRed, destGreen, destBlue);
        requiredFieldColorMap.put(dest, color);
        if (!displays.containsValue(display)) {
            display.disposeExec(new Runnable(){

                public void run() {
                    FieldAssistColors.disposeColors(display);
                }
            });
        }
        displays.put(color, display);
        return color;
    }

    private static void disposeColors(Display display) {
        Color color;
        ArrayList<Color> toBeRemoved = new ArrayList<Color>(1);
        if (DEBUG) {
            System.out.println("Display map is " + displays.toString());
            System.out.println("Color map is " + requiredFieldColorMap.toString());
        }
        Iterator i = displays.keySet().iterator();
        while (i.hasNext()) {
            color = (Color)i.next();
            if (!((Display)displays.get(color)).equals(display)) continue;
            toBeRemoved.add(color);
            ArrayList<Color> toBeRemovedFromRequiredMap = new ArrayList<Color>(1);
            Iterator iter = requiredFieldColorMap.keySet().iterator();
            while (iter.hasNext()) {
                Color bgColor = (Color)iter.next();
                if (!((Color)requiredFieldColorMap.get(bgColor)).equals((Object)color)) continue;
                toBeRemovedFromRequiredMap.add(bgColor);
            }
            int j = 0;
            while (j < toBeRemovedFromRequiredMap.size()) {
                requiredFieldColorMap.remove(toBeRemovedFromRequiredMap.get(j));
                ++j;
            }
        }
        int i2 = 0;
        while (i2 < toBeRemoved.size()) {
            color = (Color)toBeRemoved.get(i2);
            displays.remove(color);
            if (DEBUG) {
                System.out.println("Disposing color " + color.toString());
            }
            color.dispose();
            ++i2;
        }
        if (DEBUG) {
            System.out.println("Display map is " + displays.toString());
            System.out.println("Color map is " + requiredFieldColorMap.toString());
        }
    }
}

