/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.MultiStatus
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.pde.internal.runtime.registry.model.BackendChangeListener;
import org.osgi.framework.BundleException;

public interface RegistryBackend {
    public void connect(IProgressMonitor var1);

    public void disconnect();

    public void setEnabled(long var1, boolean var3);

    public void start(long var1) throws BundleException;

    public void stop(long var1) throws BundleException;

    public MultiStatus diagnose(long var1);

    public void initializeBundles(IProgressMonitor var1);

    public void initializeExtensionPoints(IProgressMonitor var1);

    public void setRegistryListener(BackendChangeListener var1);

    public void initializeServices(IProgressMonitor var1);
}

