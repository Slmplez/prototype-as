/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;

public class TrimUtil {
    public static final int TRIM_DEFAULT_HEIGHT;

    static {
        Shell s = new Shell(Display.getCurrent(), 0);
        s.setLayout((Layout)new GridLayout());
        ToolBar t = new ToolBar((Composite)s, 0);
        t.setLayoutData((Object)new GridData(4, 4, true, true));
        ToolItem ti = new ToolItem(t, 8);
        ti.setImage(JFaceResources.getImageRegistry().get("dialog_messasge_info_image"));
        s.layout();
        int toolItemHeight = t.computeSize((int)-1, (int)-1).y;
        GC gc = new GC((Drawable)s);
        Point fontSize = gc.textExtent("Wg");
        gc.dispose();
        TRIM_DEFAULT_HEIGHT = Math.max(toolItemHeight, fontSize.y);
        s.dispose();
    }
}

