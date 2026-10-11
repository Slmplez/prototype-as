/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.layout;

import java.util.List;
import org.eclipse.ui.internal.layout.IWindowTrim;

public interface ITrimManager {
    public static final int TOP = 128;
    public static final int BOTTOM = 1024;
    public static final int LEFT = 16384;
    public static final int RIGHT = 131072;
    public static final int NONTRIM = -1;

    public void addTrim(int var1, IWindowTrim var2);

    public void addTrim(int var1, IWindowTrim var2, IWindowTrim var3);

    public void removeTrim(IWindowTrim var1);

    public IWindowTrim getTrim(String var1);

    public int[] getAreaIds();

    public List getAreaTrim(int var1);

    public void updateAreaTrim(int var1, List var2, boolean var3);

    public List getAllTrim();

    public void setTrimVisible(IWindowTrim var1, boolean var2);

    public void forceLayout();
}

