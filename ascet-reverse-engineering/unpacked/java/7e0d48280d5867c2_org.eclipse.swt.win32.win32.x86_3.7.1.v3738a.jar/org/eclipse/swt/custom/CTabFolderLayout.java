/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.custom.CTabFolderRenderer;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;

class CTabFolderLayout
extends Layout {
    CTabFolderLayout() {
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        int minHeight;
        CTabFolder folder = (CTabFolder)composite;
        CTabItem[] items = folder.items;
        CTabFolderRenderer renderer = folder.renderer;
        int tabW = 0;
        int selectedIndex = folder.selectedIndex;
        if (selectedIndex == -1) {
            selectedIndex = 0;
        }
        GC gc = new GC(folder);
        int i = 0;
        while (i < items.length) {
            if (folder.single) {
                tabW = Math.max(tabW, renderer.computeSize((int)i, (int)2, (GC)gc, (int)-1, (int)-1).x);
            } else {
                int state = 0;
                if (i == selectedIndex) {
                    state |= 2;
                }
                tabW += renderer.computeSize((int)i, (int)state, (GC)gc, (int)-1, (int)-1).x;
            }
            ++i;
        }
        tabW += 3;
        if (folder.showMax) {
            tabW += renderer.computeSize((int)-5, (int)0, (GC)gc, (int)-1, (int)-1).x;
        }
        if (folder.showMin) {
            tabW += renderer.computeSize((int)-6, (int)0, (GC)gc, (int)-1, (int)-1).x;
        }
        if (folder.single) {
            tabW += renderer.computeSize((int)-7, (int)0, (GC)gc, (int)-1, (int)-1).x;
        }
        if (folder.topRight != null) {
            Point pt = folder.topRight.computeSize(-1, folder.tabHeight, flushCache);
            tabW += 3 + pt.x;
        }
        gc.dispose();
        int controlW = 0;
        int controlH = 0;
        int i2 = 0;
        while (i2 < items.length) {
            Control control = items[i2].getControl();
            if (control != null && !control.isDisposed()) {
                Point size = control.computeSize(wHint, hHint, flushCache);
                controlW = Math.max(controlW, size.x);
                controlH = Math.max(controlH, size.y);
            }
            ++i2;
        }
        int minWidth = Math.max(tabW, controlW);
        int n = minHeight = folder.minimized ? 0 : controlH;
        if (minWidth == 0) {
            minWidth = 64;
        }
        if (minHeight == 0) {
            minHeight = 64;
        }
        if (wHint != -1) {
            minWidth = wHint;
        }
        if (hHint != -1) {
            minHeight = hHint;
        }
        return new Point(minWidth, minHeight);
    }

    protected boolean flushCache(Control control) {
        return true;
    }

    protected void layout(Composite composite, boolean flushCache) {
        Control control;
        CTabFolder folder = (CTabFolder)composite;
        if (folder.selectedIndex != -1 && (control = folder.items[folder.selectedIndex].getControl()) != null && !control.isDisposed()) {
            control.setBounds(folder.getClientArea());
        }
    }
}

