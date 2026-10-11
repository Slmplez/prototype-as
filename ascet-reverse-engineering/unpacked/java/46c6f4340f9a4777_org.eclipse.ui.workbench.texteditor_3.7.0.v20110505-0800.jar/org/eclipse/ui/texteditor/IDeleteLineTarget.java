/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;

interface IDeleteLineTarget {
    public void deleteLine(IDocument var1, int var2, int var3, int var4, boolean var5) throws BadLocationException;
}

