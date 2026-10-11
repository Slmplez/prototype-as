/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import java.util.Map;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BundleDescription
extends BaseDescription,
BundleRevision {
    @Override
    public String getSymbolicName();

    public Map<String, Object> getAttributes();

    public String getLocation();

    public BundleSpecification[] getRequiredBundles();

    public ExportPackageDescription[] getExportPackages();

    public ImportPackageSpecification[] getImportPackages();

    public ImportPackageSpecification[] getAddedDynamicImportPackages();

    public GenericSpecification[] getGenericRequires();

    public GenericDescription[] getGenericCapabilities();

    public boolean hasDynamicImports();

    public ExportPackageDescription[] getSelectedExports();

    public GenericDescription[] getSelectedGenericCapabilities();

    public BundleDescription[] getResolvedRequires();

    public ExportPackageDescription[] getResolvedImports();

    public GenericDescription[] getResolvedGenericRequires();

    public boolean isResolved();

    public State getContainingState();

    public String toString();

    public HostSpecification getHost();

    public long getBundleId();

    public BundleDescription[] getFragments();

    public boolean isSingleton();

    public boolean isRemovalPending();

    public BundleDescription[] getDependents();

    public Object getUserObject();

    public void setUserObject(Object var1);

    public String getPlatformFilter();

    public boolean attachFragments();

    public boolean dynamicFragments();

    public String[] getExecutionEnvironments();

    public NativeCodeSpecification getNativeCodeSpecification();

    public ExportPackageDescription[] getSubstitutedExports();
}

