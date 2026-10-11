/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.source.VerticalRulerEvent;
import org.eclipse.swt.widgets.Menu;

public interface IVerticalRulerListener {
    public void annotationSelected(VerticalRulerEvent var1);

    public void annotationDefaultSelected(VerticalRulerEvent var1);

    public void annotationContextMenuAboutToShow(VerticalRulerEvent var1, Menu var2);
}

