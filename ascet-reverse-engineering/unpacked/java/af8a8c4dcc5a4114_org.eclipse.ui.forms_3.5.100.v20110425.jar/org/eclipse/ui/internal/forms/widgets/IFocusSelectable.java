/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.Hashtable;
import org.eclipse.swt.graphics.Rectangle;

public interface IFocusSelectable {
    public boolean isFocusSelectable(Hashtable var1);

    public boolean setFocus(Hashtable var1, boolean var2);

    public Rectangle getBounds();
}

