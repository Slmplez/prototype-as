/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.emf.internal.ecore.proxymanagement;

import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.blacklist.ModelIndex;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.lookupresolver.EcoreIndex;

@Deprecated
public interface ProxyHelper {
    public boolean isIgnoreFragmentBasedProxies();

    public void setIgnoreFragmentBasedProxies(boolean var1);

    public EcoreIndex getLookupResolver();

    public ModelIndex getBlackList();
}

