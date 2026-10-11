/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.viewers.ISelection;

public interface IMarkSelection
extends ISelection {
    public IDocument getDocument();

    public int getOffset();

    public int getLength();
}

