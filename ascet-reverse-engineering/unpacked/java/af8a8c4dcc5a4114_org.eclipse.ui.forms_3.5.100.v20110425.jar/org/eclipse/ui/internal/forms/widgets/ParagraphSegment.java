/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Hashtable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.forms.widgets.Locator;
import org.eclipse.ui.internal.forms.widgets.SelectionData;

public abstract class ParagraphSegment {
    public abstract boolean advanceLocator(GC var1, int var2, Locator var3, Hashtable var4, boolean var5);

    public abstract void layout(GC var1, int var2, Locator var3, Hashtable var4, boolean var5);

    public abstract void paint(GC var1, boolean var2, Hashtable var3, boolean var4, SelectionData var5, Rectangle var6);

    public abstract void computeSelection(GC var1, Hashtable var2, SelectionData var3);

    public abstract boolean contains(int var1, int var2);

    public abstract boolean intersects(Rectangle var1);

    public String getTooltipText() {
        return null;
    }

    public void clearCache(String fontId) {
    }
}

