/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.swt.graphics.Image;

public interface IContextInformation {
    public String getContextDisplayString();

    public Image getImage();

    public String getInformationDisplayString();

    public boolean equals(Object var1);
}

