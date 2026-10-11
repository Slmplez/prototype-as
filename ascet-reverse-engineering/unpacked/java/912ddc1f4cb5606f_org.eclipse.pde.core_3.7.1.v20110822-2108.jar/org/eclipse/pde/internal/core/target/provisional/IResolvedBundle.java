/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 */
package org.eclipse.pde.internal.core.target.provisional;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;

public interface IResolvedBundle {
    public static final int STATUS_PLUGIN_DOES_NOT_EXIST = 100;
    public static final int STATUS_FEATURE_DOES_NOT_EXIST = 110;
    public static final int STATUS_VERSION_DOES_NOT_EXIST = 101;
    public static final int STATUS_INVALID_MANIFEST = 102;

    public BundleInfo getBundleInfo();

    public IBundleContainer getParentContainer();

    public void setParentContainer(IBundleContainer var1);

    public boolean isSourceBundle();

    public BundleInfo getSourceTarget();

    public IStatus getStatus();

    public boolean isOptional();

    public boolean isFragment();
}

