/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 */
package org.eclipse.jface.text.presentation;

import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;

public interface IPresentationDamager {
    public void setDocument(IDocument var1);

    public IRegion getDamageRegion(ITypedRegion var1, DocumentEvent var2, boolean var3);
}

