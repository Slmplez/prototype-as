/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.source.ILineDiffInfo;

public interface ILineDiffer {
    public ILineDiffInfo getLineInfo(int var1);

    public void revertLine(int var1) throws BadLocationException;

    public void revertBlock(int var1) throws BadLocationException;

    public void revertSelection(int var1, int var2) throws BadLocationException;

    public int restoreAfterLine(int var1) throws BadLocationException;
}

