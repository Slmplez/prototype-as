/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;

public interface IRepairableDocumentExtension {
    public boolean isLineInformationRepairNeeded(int var1, int var2, String var3) throws BadLocationException;
}

