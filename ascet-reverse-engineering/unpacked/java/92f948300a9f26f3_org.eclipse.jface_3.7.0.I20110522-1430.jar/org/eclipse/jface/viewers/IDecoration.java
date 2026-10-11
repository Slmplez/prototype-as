/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IDecorationContext;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;

public interface IDecoration {
    public static final int TOP_LEFT = 0;
    public static final int TOP_RIGHT = 1;
    public static final int BOTTOM_LEFT = 2;
    public static final int BOTTOM_RIGHT = 3;
    public static final int UNDERLAY = 4;
    public static final int REPLACE = 5;
    public static final String ENABLE_REPLACE = "org.eclipse.jface.viewers.IDecoration.disableReplace";

    public void addPrefix(String var1);

    public void addSuffix(String var1);

    public void addOverlay(ImageDescriptor var1);

    public void addOverlay(ImageDescriptor var1, int var2);

    public void setForegroundColor(Color var1);

    public void setBackgroundColor(Color var1);

    public void setFont(Font var1);

    public IDecorationContext getDecorationContext();
}

