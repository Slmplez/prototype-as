/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.VersionConstraint;

public interface StateHelper {
    public static final int ACCESS_ENCOURAGED = 1;
    public static final int ACCESS_DISCOURAGED = 2;
    public static final int VISIBLE_INCLUDE_EE_PACKAGES = 1;
    public static final int VISIBLE_INCLUDE_ALL_HOST_WIRES = 2;

    public BundleDescription[] getDependentBundles(BundleDescription[] var1);

    public BundleDescription[] getPrerequisites(BundleDescription[] var1);

    public VersionConstraint[] getUnsatisfiedConstraints(BundleDescription var1);

    public VersionConstraint[] getUnsatisfiedLeaves(BundleDescription[] var1);

    public boolean isResolvable(ImportPackageSpecification var1);

    public boolean isResolvable(BundleSpecification var1);

    public boolean isResolvable(HostSpecification var1);

    public Object[][] sortBundles(BundleDescription[] var1);

    public ExportPackageDescription[] getVisiblePackages(BundleDescription var1);

    public ExportPackageDescription[] getVisiblePackages(BundleDescription var1, int var2);

    public int getAccessCode(BundleDescription var1, ExportPackageDescription var2);
}

