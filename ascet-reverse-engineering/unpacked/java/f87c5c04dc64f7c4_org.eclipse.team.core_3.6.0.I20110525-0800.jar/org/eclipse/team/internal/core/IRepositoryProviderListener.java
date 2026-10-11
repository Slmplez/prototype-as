/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 */
package org.eclipse.team.internal.core;

import org.eclipse.core.resources.IProject;
import org.eclipse.team.core.RepositoryProvider;

public interface IRepositoryProviderListener {
    public void providerMapped(RepositoryProvider var1);

    public void providerUnmapped(IProject var1);
}

