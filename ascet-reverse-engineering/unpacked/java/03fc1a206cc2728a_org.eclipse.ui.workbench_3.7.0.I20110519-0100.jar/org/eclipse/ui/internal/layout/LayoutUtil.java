/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.layout.ICachingLayout;

public class LayoutUtil {
    public static void resize(Control changedControl) {
        Composite parent = changedControl.getParent();
        Layout parentLayout = parent.getLayout();
        if (parentLayout instanceof ICachingLayout) {
            ((ICachingLayout)parentLayout).flush(changedControl);
        }
        if (parent instanceof Shell) {
            parent.layout(true);
        } else {
            Rectangle currentBounds = parent.getBounds();
            LayoutUtil.resize((Control)parent);
            if (currentBounds.equals((Object)parent.getBounds())) {
                parent.layout(true);
            }
        }
    }
}

