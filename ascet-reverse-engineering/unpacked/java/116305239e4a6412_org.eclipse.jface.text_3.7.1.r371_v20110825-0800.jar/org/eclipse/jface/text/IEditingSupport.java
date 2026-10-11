/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IRegion;

public interface IEditingSupport {
    public boolean isOriginator(DocumentEvent var1, IRegion var2);

    public boolean ownsFocusShell();
}

