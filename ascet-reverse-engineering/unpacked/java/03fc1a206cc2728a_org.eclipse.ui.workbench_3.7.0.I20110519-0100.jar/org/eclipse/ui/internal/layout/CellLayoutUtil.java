/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.layout.CellData;

class CellLayoutUtil {
    private static Point zero = new Point(0, 0);
    private static Point minimumShellSize;
    private static CellData defaultData;

    static {
        defaultData = new CellData();
    }

    CellLayoutUtil() {
    }

    static Point computeMinimumSize(Composite toCompute) {
        if (toCompute instanceof Shell) {
            if (minimumShellSize == null) {
                Shell testShell = new Shell((Shell)toCompute, 2160);
                testShell.setSize(0, 0);
                minimumShellSize = testShell.getSize();
                testShell.dispose();
            }
            return minimumShellSize;
        }
        return zero;
    }

    static CellData getData(Control control) {
        Object layoutData = control.getLayoutData();
        CellData data = null;
        if (layoutData instanceof CellData) {
            data = (CellData)layoutData;
        } else if (layoutData instanceof GridData) {
            data = new CellData((GridData)layoutData);
        }
        if (data == null) {
            data = defaultData;
        }
        return data;
    }
}

