/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextSelection;

public interface IBlockTextSelection
extends ITextSelection {
    public int getStartColumn();

    public int getEndColumn();

    public String getText();

    public IRegion[] getRegions();
}

