/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text.formatter;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.formatter.IFormattingStrategy;

public interface IContentFormatter {
    public void format(IDocument var1, IRegion var2);

    public IFormattingStrategy getFormattingStrategy(String var1);
}

