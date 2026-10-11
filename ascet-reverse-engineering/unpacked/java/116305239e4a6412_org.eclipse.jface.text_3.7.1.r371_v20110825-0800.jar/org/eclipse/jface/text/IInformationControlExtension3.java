/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.jface.text;

import org.eclipse.swt.graphics.Rectangle;

public interface IInformationControlExtension3 {
    public Rectangle getBounds();

    public Rectangle computeTrim();

    public boolean restoresSize();

    public boolean restoresLocation();
}

