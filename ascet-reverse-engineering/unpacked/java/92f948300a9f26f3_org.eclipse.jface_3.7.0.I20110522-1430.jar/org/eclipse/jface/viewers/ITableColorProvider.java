/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 */
package org.eclipse.jface.viewers;

import org.eclipse.swt.graphics.Color;

public interface ITableColorProvider {
    public Color getForeground(Object var1, int var2);

    public Color getBackground(Object var1, int var2);
}

