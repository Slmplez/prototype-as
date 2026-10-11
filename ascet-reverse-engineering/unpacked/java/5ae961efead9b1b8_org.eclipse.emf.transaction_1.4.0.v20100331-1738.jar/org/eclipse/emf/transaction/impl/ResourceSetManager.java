/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.transaction.impl;

import java.util.Collection;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.osgi.util.NLS;

public final class ResourceSetManager {
    private static final ResourceSetManager INSTANCE = new ResourceSetManager();
    private final Map<Resource, Boolean> loadingResources = new WeakHashMap<Resource, Boolean>();
    private final Map<Resource, Boolean> loadedResources = new WeakHashMap<Resource, Boolean>();
    private final Map<Resource, Boolean> unloadingResources = new WeakHashMap<Resource, Boolean>();

    private ResourceSetManager() {
    }

    public static ResourceSetManager getInstance() {
        return INSTANCE;
    }

    public synchronized void observe(ResourceSet rset) {
        for (Resource next : rset.getResources()) {
            this.observe(next);
        }
    }

    public synchronized void observe(ResourceSet rset, Notification notification) {
        if (notification.getFeatureID(null) == 0) {
            Object newValue = notification.getNewValue();
            Object oldValue = notification.getOldValue();
            switch (notification.getEventType()) {
                case 1: 
                case 2: {
                    if (newValue != null) {
                        this.observe((Resource)newValue);
                    }
                    if (oldValue == null) break;
                    this.setUnloaded((Resource)oldValue);
                    break;
                }
                case 3: {
                    if (newValue == null) break;
                    this.observe((Resource)newValue);
                    break;
                }
                case 5: {
                    if (newValue == null) break;
                    Collection resources = (Collection)newValue;
                    for (Resource next : resources) {
                        this.observe(next);
                    }
                    break;
                }
                case 4: {
                    if (oldValue == null) break;
                    this.setUnloaded((Resource)oldValue);
                    break;
                }
                case 6: {
                    if (oldValue == null) break;
                    Collection resources = (Collection)oldValue;
                    for (Resource next : resources) {
                        this.setUnloaded(next);
                    }
                    break;
                }
            }
        }
    }

    private synchronized void observe(Resource res) {
        if (res.isLoaded()) {
            this.setLoaded(res);
        } else {
            this.setUnloaded(res);
        }
    }

    public synchronized void observe(Resource res, Notification notification) {
        switch (notification.getFeatureID(null)) {
            case 4: {
                if (notification.getNewBooleanValue()) {
                    this.setLoaded(res);
                    break;
                }
                if (res.isLoaded()) {
                    this.setLoaded(res);
                    EMFTransactionPlugin.getPlugin().log(new Status(2, EMFTransactionPlugin.getPluginId(), 100, NLS.bind((String)Messages.reloadDuringUnload, (Object)res.getURI()), null));
                    break;
                }
                this.setUnloaded(res);
                break;
            }
            case 2: {
                if (!this.isLoaded(res) && res.isLoaded()) {
                    this.setLoading(res);
                    break;
                }
                if (!this.isLoaded(res) || res.isLoaded()) break;
                this.setUnloading(res);
            }
        }
    }

    public synchronized boolean isLoaded(Resource res) {
        return this.loadedResources.containsKey(res);
    }

    public synchronized boolean isLoading(Resource res) {
        return this.loadingResources.containsKey(res);
    }

    public synchronized boolean isUnloading(Resource res) {
        return this.unloadingResources.containsKey(res);
    }

    public synchronized boolean isUnloaded(Resource res) {
        return !this.isLoaded(res) && !this.isLoading(res) && !this.isUnloading(res);
    }

    private void setLoaded(Resource res) {
        this.loadedResources.put(res, Boolean.TRUE);
        this.loadingResources.remove(res);
        this.unloadingResources.remove(res);
    }

    private void setLoading(Resource res) {
        this.loadingResources.put(res, Boolean.TRUE);
        this.loadedResources.remove(res);
        this.unloadingResources.remove(res);
    }

    private void setUnloading(Resource res) {
        this.unloadingResources.put(res, Boolean.TRUE);
        this.loadedResources.remove(res);
        this.loadingResources.remove(res);
    }

    private void setUnloaded(Resource res) {
        this.loadedResources.remove(res);
        this.loadingResources.remove(res);
        this.unloadingResources.remove(res);
    }
}

