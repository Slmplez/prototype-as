/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.jface.text;

import org.eclipse.jface.viewers.ISelection;

public interface ITextSelection
extends ISelection {
    public int getOffset();

    public int getLength();

    public int getStartLine();

    public int getEndLine();

    public String getText();
}

