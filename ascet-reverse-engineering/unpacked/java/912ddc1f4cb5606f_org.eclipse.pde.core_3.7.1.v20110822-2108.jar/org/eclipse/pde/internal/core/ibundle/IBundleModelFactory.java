/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ibundle;

import org.eclipse.pde.internal.core.ibundle.IManifestHeader;

public interface IBundleModelFactory {
    public IManifestHeader createHeader();

    public IManifestHeader createHeader(String var1, String var2);
}

