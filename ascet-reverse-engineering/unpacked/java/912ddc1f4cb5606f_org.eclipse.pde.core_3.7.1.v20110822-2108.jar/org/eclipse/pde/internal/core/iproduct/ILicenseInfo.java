/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface ILicenseInfo
extends IProductObject {
    public String getLicense();

    public void setLicense(String var1);

    public String getURL();

    public void setURL(String var1);
}

