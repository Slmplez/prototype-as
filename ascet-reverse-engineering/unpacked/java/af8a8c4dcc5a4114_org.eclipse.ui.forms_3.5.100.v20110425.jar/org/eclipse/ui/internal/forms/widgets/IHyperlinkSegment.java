/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.internal.forms.widgets.IFocusSelectable;

public interface IHyperlinkSegment
extends IFocusSelectable {
    public String getHref();

    public String getText();

    public void paintFocus(GC var1, Color var2, Color var3, boolean var4, Rectangle var5);

    public boolean contains(int var1, int var2);

    public boolean intersects(Rectangle var1);
}

