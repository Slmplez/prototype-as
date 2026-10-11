/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface IAboutInfo
extends IProductObject {
    public static final String P_IMAGE = "image";
    public static final String P_TEXT = "text";

    public void setText(String var1);

    public String getText();

    public void setImagePath(String var1);

    public String getImagePath();
}

