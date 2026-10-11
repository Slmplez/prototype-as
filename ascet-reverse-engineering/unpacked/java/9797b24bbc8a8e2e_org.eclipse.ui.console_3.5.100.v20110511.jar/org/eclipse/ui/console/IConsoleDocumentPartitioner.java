/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocumentPartitioner
 *  org.eclipse.swt.custom.StyleRange
 */
package org.eclipse.ui.console;

import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.swt.custom.StyleRange;

public interface IConsoleDocumentPartitioner
extends IDocumentPartitioner {
    public boolean isReadOnly(int var1);

    public StyleRange[] getStyleRanges(int var1, int var2);
}

