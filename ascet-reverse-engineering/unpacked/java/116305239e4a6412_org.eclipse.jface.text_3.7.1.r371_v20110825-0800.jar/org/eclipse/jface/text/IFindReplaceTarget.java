/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.text;

import org.eclipse.swt.graphics.Point;

public interface IFindReplaceTarget {
    public boolean canPerformFind();

    public int findAndSelect(int var1, String var2, boolean var3, boolean var4, boolean var5);

    public Point getSelection();

    public String getSelectionText();

    public boolean isEditable();

    public void replaceSelection(String var1);
}

