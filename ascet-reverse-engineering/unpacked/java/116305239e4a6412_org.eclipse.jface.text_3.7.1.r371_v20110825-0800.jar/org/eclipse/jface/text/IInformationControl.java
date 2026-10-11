/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.text;

import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;

public interface IInformationControl {
    public void setInformation(String var1);

    public void setSizeConstraints(int var1, int var2);

    public Point computeSizeHint();

    public void setVisible(boolean var1);

    public void setSize(int var1, int var2);

    public void setLocation(Point var1);

    public void dispose();

    public void addDisposeListener(DisposeListener var1);

    public void removeDisposeListener(DisposeListener var1);

    public void setForegroundColor(Color var1);

    public void setBackgroundColor(Color var1);

    public boolean isFocusControl();

    public void setFocus();

    public void addFocusListener(FocusListener var1);

    public void removeFocusListener(FocusListener var1);
}

