/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ibundle;

import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;

public interface IBundle {
    public void setHeader(String var1, String var2);

    public void renameHeader(String var1, String var2);

    public String getHeader(String var1);

    public IManifestHeader getManifestHeader(String var1);

    public IBundleModel getModel();

    public String getLocalization();

    public void setLocalization(String var1);
}

