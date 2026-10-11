/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.ListenerList
 */
package org.eclipse.team.internal.core;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.team.core.RepositoryProvider;
import org.eclipse.team.internal.core.IRepositoryProviderListener;

public class RepositoryProviderManager
implements IRepositoryProviderListener {
    private static RepositoryProviderManager instance;
    private ListenerList listeners = new ListenerList();

    public static synchronized RepositoryProviderManager getInstance() {
        if (instance == null) {
            instance = new RepositoryProviderManager();
        }
        return instance;
    }

    public void providerMapped(RepositoryProvider provider) {
        Object[] allListeners = this.listeners.getListeners();
        int i = 0;
        while (i < allListeners.length) {
            IRepositoryProviderListener listener = (IRepositoryProviderListener)allListeners[i];
            listener.providerMapped(provider);
            ++i;
        }
    }

    public void providerUnmapped(IProject project) {
        Object[] allListeners = this.listeners.getListeners();
        int i = 0;
        while (i < allListeners.length) {
            IRepositoryProviderListener listener = (IRepositoryProviderListener)allListeners[i];
            listener.providerUnmapped(project);
            ++i;
        }
    }

    public void addListener(IRepositoryProviderListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeListener(IRepositoryProviderListener listener) {
        this.listeners.remove((Object)listener);
    }
}

