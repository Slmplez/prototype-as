/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IRegion;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;

public interface IFindReplaceTargetExtension {
    public void beginSession();

    public void endSession();

    public IRegion getScope();

    public void setScope(IRegion var1);

    public Point getLineSelection();

    public void setSelection(int var1, int var2);

    public void setScopeHighlightColor(Color var1);

    public void setReplaceAllMode(boolean var1);
}

