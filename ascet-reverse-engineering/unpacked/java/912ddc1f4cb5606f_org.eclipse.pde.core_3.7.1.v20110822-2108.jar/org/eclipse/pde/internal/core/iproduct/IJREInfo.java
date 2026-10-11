/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.internal.core.iproduct;

import java.io.File;
import org.eclipse.core.runtime.IPath;
import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface IJREInfo
extends IProductObject {
    public IPath getJREContainerPath(String var1);

    public File getJVMLocation(String var1);

    public void setJREContainerPath(String var1, IPath var2);

    public boolean includeJREWithProduct(String var1);

    public void setIncludeJREWithProduct(String var1, boolean var2);
}

