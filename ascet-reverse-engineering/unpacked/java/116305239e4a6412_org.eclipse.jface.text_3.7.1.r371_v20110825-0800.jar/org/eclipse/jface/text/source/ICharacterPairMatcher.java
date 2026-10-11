/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;

public interface ICharacterPairMatcher {
    public static final int RIGHT = 0;
    public static final int LEFT = 1;

    public void dispose();

    public void clear();

    public IRegion match(IDocument var1, int var2);

    public int getAnchor();
}

