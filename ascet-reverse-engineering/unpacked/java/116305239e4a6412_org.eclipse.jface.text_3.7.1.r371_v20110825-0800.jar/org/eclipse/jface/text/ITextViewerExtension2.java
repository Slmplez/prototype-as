/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IAutoEditStrategy;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.ITextHover;
import org.eclipse.swt.graphics.Point;

public interface ITextViewerExtension2 {
    public static final int DEFAULT_HOVER_STATE_MASK = 255;

    public void invalidateTextPresentation(int var1, int var2);

    public void setTextHover(ITextHover var1, String var2, int var3);

    public void removeTextHovers(String var1);

    public ITextHover getCurrentTextHover();

    public Point getHoverEventLocation();

    public void prependAutoEditStrategy(IAutoEditStrategy var1, String var2);

    public void removeAutoEditStrategy(IAutoEditStrategy var1, String var2);

    public void addPainter(IPainter var1);

    public void removePainter(IPainter var1);
}

