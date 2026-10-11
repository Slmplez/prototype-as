/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;
import org.eclipse.pde.internal.core.ifeature.IFeatureURLElement;

public interface IFeatureURL
extends IFeatureObject {
    public void addDiscovery(IFeatureURLElement var1) throws CoreException;

    public void setUpdate(IFeatureURLElement var1) throws CoreException;

    public IFeatureURLElement[] getDiscoveries();

    public IFeatureURLElement getUpdate();

    public void removeDiscovery(IFeatureURLElement var1) throws CoreException;
}

