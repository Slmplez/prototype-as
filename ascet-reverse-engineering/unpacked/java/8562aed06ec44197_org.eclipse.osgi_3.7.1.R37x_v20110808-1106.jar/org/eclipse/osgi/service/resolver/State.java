/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import java.util.Collection;
import java.util.Dictionary;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.Resolver;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.StateDelta;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.eclipse.osgi.service.resolver.StateWire;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;
import org.osgi.framework.hooks.resolver.ResolverHookFactory;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface State {
    public boolean addBundle(BundleDescription var1);

    public StateDelta compare(State var1) throws BundleException;

    public BundleDescription removeBundle(long var1);

    public boolean removeBundle(BundleDescription var1);

    public boolean updateBundle(BundleDescription var1);

    public StateDelta getChanges();

    public BundleDescription[] getBundles();

    public BundleDescription getBundle(long var1);

    public BundleDescription getBundle(String var1, Version var2);

    public BundleDescription getBundleByLocation(String var1);

    public long getTimeStamp();

    public void setTimeStamp(long var1);

    public boolean isResolved();

    public void resolveConstraint(VersionConstraint var1, BaseDescription var2);

    public void resolveBundle(BundleDescription var1, boolean var2, BundleDescription[] var3, ExportPackageDescription[] var4, BundleDescription[] var5, ExportPackageDescription[] var6);

    public void resolveBundle(BundleDescription var1, boolean var2, BundleDescription[] var3, ExportPackageDescription[] var4, ExportPackageDescription[] var5, BundleDescription[] var6, ExportPackageDescription[] var7);

    public void resolveBundle(BundleDescription var1, boolean var2, BundleDescription[] var3, ExportPackageDescription[] var4, ExportPackageDescription[] var5, GenericDescription[] var6, BundleDescription[] var7, ExportPackageDescription[] var8, GenericDescription[] var9, Map<String, List<StateWire>> var10);

    public void removeBundleComplete(BundleDescription var1);

    public void addResolverError(BundleDescription var1, int var2, String var3, VersionConstraint var4);

    public void removeResolverErrors(BundleDescription var1);

    public ResolverError[] getResolverErrors(BundleDescription var1);

    public Resolver getResolver();

    public void setResolver(Resolver var1);

    public StateDelta resolve(boolean var1);

    public StateDelta resolve();

    public StateDelta resolve(BundleDescription[] var1);

    public StateDelta resolve(BundleDescription[] var1, boolean var2);

    public void setOverrides(Object var1);

    public BundleDescription[] getResolvedBundles();

    public BundleDescription[] getRemovalPending();

    public Collection<BundleDescription> getDependencyClosure(Collection<BundleDescription> var1);

    public boolean isEmpty();

    public ExportPackageDescription[] getExportedPackages();

    public BundleDescription[] getBundles(String var1);

    public StateObjectFactory getFactory();

    public ExportPackageDescription linkDynamicImport(BundleDescription var1, String var2);

    public void addDynamicImportPackages(BundleDescription var1, ImportPackageSpecification[] var2);

    public boolean setPlatformProperties(Dictionary<?, ?> var1);

    public boolean setPlatformProperties(Dictionary<?, ?>[] var1);

    public Dictionary[] getPlatformProperties();

    public ExportPackageDescription[] getSystemPackages();

    public StateHelper getStateHelper();

    public long getHighestBundleId();

    public void setNativePathsInvalid(NativeCodeDescription var1, boolean var2);

    public BundleDescription[] getDisabledBundles();

    public void addDisabledInfo(DisabledInfo var1);

    public void removeDisabledInfo(DisabledInfo var1);

    public DisabledInfo[] getDisabledInfos(BundleDescription var1);

    public DisabledInfo getDisabledInfo(BundleDescription var1, String var2);

    public void setResolverHookFactory(ResolverHookFactory var1);
}

