/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text.rules;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.rules.ITokenScanner;

public interface IPartitionTokenScanner
extends ITokenScanner {
    public void setPartialRange(IDocument var1, int var2, int var3, String var4, int var5);
}

