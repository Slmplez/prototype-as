/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.spi;

import org.eclipse.core.runtime.IContributor;

public interface IDynamicExtensionRegistry {
    public void removeContributor(IContributor var1, Object var2);

    public boolean hasContributor(IContributor var1);

    public IContributor[] getAllContributors();
}

