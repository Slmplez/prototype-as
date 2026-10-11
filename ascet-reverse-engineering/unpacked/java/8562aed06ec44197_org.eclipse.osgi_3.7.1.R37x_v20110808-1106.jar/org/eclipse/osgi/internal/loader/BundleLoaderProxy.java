/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.util.KeyedHashSet;
import org.eclipse.osgi.framework.util.SecureAction;
import org.eclipse.osgi.internal.composite.CompositeBase;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.FilteredSourcePackage;
import org.eclipse.osgi.internal.loader.PackageSource;
import org.eclipse.osgi.internal.loader.SingleSourcePackage;
import org.eclipse.osgi.internal.loader.SystemBundleLoader;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.BundleReference;
import org.osgi.framework.Version;
import org.osgi.service.packageadmin.RequiredBundle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BundleLoaderProxy
implements RequiredBundle,
BundleReference {
    static SecureAction secureAction = AccessController.doPrivileged(SecureAction.createSecureAction());
    private BundleLoader loader;
    private final BundleHost bundle;
    private final BundleDescription description;
    private final BundleData data;
    private boolean stale = false;
    private final KeyedHashSet pkgSources;
    static /* synthetic */ Class class$0;

    public BundleLoaderProxy(BundleHost bundle, BundleDescription description) {
        this.bundle = bundle;
        this.description = description;
        this.pkgSources = new KeyedHashSet(false);
        this.data = bundle.getBundleData();
    }

    public BundleLoader getBundleLoader() {
        if (System.getSecurityManager() == null) {
            return this.getBundleLoader0();
        }
        return AccessController.doPrivileged(new PrivilegedAction<BundleLoader>(){

            @Override
            public BundleLoader run() {
                return BundleLoaderProxy.this.getBundleLoader0();
            }
        });
    }

    synchronized BundleLoader getBundleLoader0() {
        if (this.loader != null) {
            return this.loader;
        }
        if (this.bundle.isResolved()) {
            try {
                this.loader = this.bundle.getBundleId() == 0L ? new SystemBundleLoader(this.bundle, this) : new BundleLoader(this.bundle, this);
            }
            catch (BundleException e) {
                this.bundle.getFramework().publishFrameworkEvent(2, this.bundle, e);
                return null;
            }
        }
        return this.loader;
    }

    public BundleLoader getBasicBundleLoader() {
        return this.loader;
    }

    public AbstractBundle getBundleHost() {
        return this.bundle;
    }

    void setStale() {
        this.stale = true;
    }

    public boolean isStale() {
        return this.stale;
    }

    public String toString() {
        String symbolicName = this.bundle.getSymbolicName();
        StringBuffer sb = new StringBuffer(symbolicName == null ? this.bundle.getBundleData().getLocation() : symbolicName);
        sb.append("; ").append("bundle-version");
        sb.append("=\"").append(this.description.getVersion().toString()).append("\"");
        return sb.toString();
    }

    @Override
    public Bundle getBundle() {
        if (this.isStale()) {
            return null;
        }
        return this.bundle;
    }

    public BundleData getBundleData() {
        return this.data;
    }

    @Override
    public Bundle[] getRequiringBundles() {
        if (this.isStale()) {
            return null;
        }
        BundleDescription[] dependents = this.description.getDependents();
        if (dependents == null || dependents.length == 0) {
            return new Bundle[0];
        }
        ArrayList<Bundle> result = new ArrayList<Bundle>(dependents.length);
        int i = 0;
        while (i < dependents.length) {
            this.addRequirers(dependents[i], result);
            ++i;
        }
        return result.toArray(new Bundle[result.size()]);
    }

    void addRequirers(BundleDescription dependent, List<Bundle> result) {
        if (dependent.getHost() != null) {
            return;
        }
        BundleLoaderProxy dependentProxy = this.getBundleLoader().getLoaderProxy(dependent);
        if (dependentProxy == null) {
            return;
        }
        if (result.contains(dependentProxy.bundle)) {
            return;
        }
        BundleLoader dependentLoader = dependentProxy.getBundleLoader();
        BundleLoaderProxy[] requiredBundles = dependentLoader.requiredBundles;
        int[] reexportTable = dependentLoader.reexportTable;
        if (requiredBundles == null) {
            return;
        }
        int size = reexportTable == null ? 0 : reexportTable.length;
        int reexportIndex = 0;
        int i = 0;
        while (i < requiredBundles.length) {
            if (requiredBundles[i] == this) {
                result.add(dependentProxy.bundle);
                if (reexportIndex < size && reexportTable[reexportIndex] == i) {
                    ++reexportIndex;
                    BundleDescription[] dependents = dependent.getDependents();
                    if (dependents == null) {
                        return;
                    }
                    int j = 0;
                    while (j < dependents.length) {
                        dependentProxy.addRequirers(dependents[j], result);
                        ++j;
                    }
                }
                return;
            }
            ++i;
        }
    }

    @Override
    public String getSymbolicName() {
        return this.description.getSymbolicName();
    }

    @Override
    public Version getVersion() {
        return this.description.getVersion();
    }

    @Override
    public boolean isRemovalPending() {
        return this.description.isRemovalPending();
    }

    public BundleDescription getBundleDescription() {
        return this.description;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    PackageSource getPackageSource(String pkgName) {
        PackageSource pkgSource = (PackageSource)this.pkgSources.getByKey(pkgName);
        if (pkgSource == null) {
            pkgSource = new SingleSourcePackage(pkgName, this);
            KeyedHashSet keyedHashSet = this.pkgSources;
            synchronized (keyedHashSet) {
                this.pkgSources.add(pkgSource);
            }
        }
        return pkgSource;
    }

    public boolean inUse() {
        return this.description.getDependents().length > 0 || this.bundle instanceof CompositeBase && this.description.getResolvedImports().length > 0;
    }

    boolean forceSourceCreation(ExportPackageDescription export) {
        boolean strict = "strict".equals(secureAction.getProperty("osgi.resolverMode"));
        return export.getDirective("include") != null || export.getDirective("exclude") != null || strict && export.getDirective("x-friends") != null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public PackageSource createPackageSource(ExportPackageDescription export, boolean storeSource) {
        boolean strict;
        PackageSource pkgSource = null;
        String includes = (String)export.getDirective("include");
        String excludes = (String)export.getDirective("exclude");
        String[] friends = (String[])export.getDirective("x-friends");
        if (friends != null && !(strict = "strict".equals(secureAction.getProperty("osgi.resolverMode")))) {
            friends = null;
        }
        if (includes != null || excludes != null || friends != null) {
            pkgSource = new FilteredSourcePackage(export.getName(), this, includes, excludes, friends);
        }
        if (storeSource) {
            if (pkgSource != null && this.pkgSources.getByKey(export.getName()) == null) {
                KeyedHashSet keyedHashSet = this.pkgSources;
                synchronized (keyedHashSet) {
                    this.pkgSources.add(pkgSource);
                }
            }
        } else if (pkgSource == null) {
            pkgSource = this.getPackageSource(export.getName());
            Class<?> clazz = pkgSource.getClass();
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.osgi.internal.loader.SingleSourcePackage");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz != clazz2) {
                return new SingleSourcePackage(export.getName(), this);
            }
        }
        return pkgSource;
    }
}

