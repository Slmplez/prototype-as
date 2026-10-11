/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.DocumentEvent;

public interface IDocumentListener {
    public void documentAboutToBeChanged(DocumentEvent var1);

    public void documentChanged(DocumentEvent var1);
}

