/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.presentations;

import org.eclipse.jface.action.IMenuManager;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.presentations.IPresentablePart;

public interface IStackPresentationSite {
    public static final int STATE_MINIMIZED = 0;
    public static final int STATE_MAXIMIZED = 1;
    public static final int STATE_RESTORED = 2;

    public void setState(int var1);

    public int getState();

    public boolean supportsState(int var1);

    public void dragStart(IPresentablePart var1, Point var2, boolean var3);

    public void close(IPresentablePart[] var1);

    public void dragStart(Point var1, boolean var2);

    public boolean isCloseable(IPresentablePart var1);

    public boolean isPartMoveable(IPresentablePart var1);

    public boolean isStackMoveable();

    public void selectPart(IPresentablePart var1);

    public IPresentablePart getSelectedPart();

    public void addSystemActions(IMenuManager var1);

    public void flushLayout();

    public IPresentablePart[] getPartList();

    public String getProperty(String var1);
}

