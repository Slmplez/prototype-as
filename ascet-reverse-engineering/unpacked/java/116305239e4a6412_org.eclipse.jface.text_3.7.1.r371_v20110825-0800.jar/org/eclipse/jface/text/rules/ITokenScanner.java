/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text.rules;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.rules.IToken;

public interface ITokenScanner {
    public void setRange(IDocument var1, int var2, int var3);

    public IToken nextToken();

    public int getTokenOffset();

    public int getTokenLength();
}

