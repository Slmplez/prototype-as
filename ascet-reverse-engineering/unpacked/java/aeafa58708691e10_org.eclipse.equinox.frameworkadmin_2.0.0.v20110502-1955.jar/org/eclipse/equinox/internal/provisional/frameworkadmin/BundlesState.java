/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.frameworkadmin;

import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;

public interface BundlesState {
    public BundleInfo[] getExpectedState() throws FrameworkAdminRuntimeException;

    public BundleInfo[] getPrerequisteBundles(BundleInfo var1);

    public BundleInfo getSystemBundle();

    public BundleInfo[] getSystemFragmentedBundles();

    public String[] getUnsatisfiedConstraints(BundleInfo var1) throws FrameworkAdminRuntimeException;

    public void installBundle(BundleInfo var1) throws FrameworkAdminRuntimeException;

    public boolean isFullySupported();

    public boolean isResolved() throws FrameworkAdminRuntimeException;

    public boolean isResolved(BundleInfo var1) throws FrameworkAdminRuntimeException;

    public void resolve(boolean var1) throws FrameworkAdminRuntimeException;

    public void uninstallBundle(BundleInfo var1) throws FrameworkAdminRuntimeException;
}

