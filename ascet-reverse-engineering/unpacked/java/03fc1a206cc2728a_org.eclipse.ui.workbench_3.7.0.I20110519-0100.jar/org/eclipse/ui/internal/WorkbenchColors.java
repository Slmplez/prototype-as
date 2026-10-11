/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.widgets.Display;

public class WorkbenchColors {
    private static boolean init = false;
    private static Color[] workbenchColors;

    private static void disposeWorkbenchColors() {
        int i = 0;
        while (i < workbenchColors.length) {
            workbenchColors[i].dispose();
            ++i;
        }
        workbenchColors = null;
    }

    private static void initWorkbenchColors(Display d) {
        if (workbenchColors != null) {
            return;
        }
        workbenchColors = new Color[]{new Color((Device)d, 255, 255, 255), new Color((Device)d, 255, 251, 240), new Color((Device)d, 223, 223, 191), new Color((Device)d, 223, 191, 191), new Color((Device)d, 192, 220, 192), new Color((Device)d, 192, 192, 192), new Color((Device)d, 191, 191, 191), new Color((Device)d, 191, 191, 159), new Color((Device)d, 191, 159, 191), new Color((Device)d, 160, 160, 164), new Color((Device)d, 159, 159, 191), new Color((Device)d, 159, 159, 159), new Color((Device)d, 159, 159, 127), new Color((Device)d, 159, 127, 159), new Color((Device)d, 159, 127, 127), new Color((Device)d, 128, 128, 128), new Color((Device)d, 127, 159, 159), new Color((Device)d, 127, 159, 127), new Color((Device)d, 127, 127, 159), new Color((Device)d, 127, 127, 127), new Color((Device)d, 127, 127, 95), new Color((Device)d, 127, 95, 127), new Color((Device)d, 127, 95, 95), new Color((Device)d, 95, 127, 127), new Color((Device)d, 95, 127, 95), new Color((Device)d, 95, 95, 127), new Color((Device)d, 95, 95, 95), new Color((Device)d, 95, 95, 63), new Color((Device)d, 95, 63, 95), new Color((Device)d, 95, 63, 63), new Color((Device)d, 63, 95, 95), new Color((Device)d, 63, 95, 63), new Color((Device)d, 63, 63, 95), new Color((Device)d, 0, 0, 0), new Color((Device)d, 195, 204, 224), new Color((Device)d, 214, 221, 235), new Color((Device)d, 149, 168, 199), new Color((Device)d, 128, 148, 178), new Color((Device)d, 106, 128, 158), new Color((Device)d, 255, 255, 255), new Color((Device)d, 0, 0, 0), new Color((Device)d, 0, 0, 0), new Color((Device)d, 132, 130, 132), new Color((Device)d, 143, 141, 138), new Color((Device)d, 171, 168, 165), new Color((Device)d, 230, 226, 221)};
    }

    public static void shutdown() {
        if (!init) {
            return;
        }
        WorkbenchColors.disposeWorkbenchColors();
        init = false;
    }

    public static void startup() {
        if (init) {
            return;
        }
        init = true;
        Display display = Display.getDefault();
        WorkbenchColors.initWorkbenchColors(display);
    }
}

