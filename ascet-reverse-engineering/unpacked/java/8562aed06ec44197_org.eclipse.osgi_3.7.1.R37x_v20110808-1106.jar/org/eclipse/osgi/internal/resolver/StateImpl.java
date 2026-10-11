/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.framework.util.Headers;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.framework.util.KeyedHashSet;
import org.eclipse.osgi.internal.baseadaptor.StateManager;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.BundleSpecificationImpl;
import org.eclipse.osgi.internal.resolver.ExportPackageDescriptionImpl;
import org.eclipse.osgi.internal.resolver.GenericSpecificationImpl;
import org.eclipse.osgi.internal.resolver.HostSpecificationImpl;
import org.eclipse.osgi.internal.resolver.ImportPackageSpecificationImpl;
import org.eclipse.osgi.internal.resolver.NativeCodeDescriptionImpl;
import org.eclipse.osgi.internal.resolver.NativeCodeSpecificationImpl;
import org.eclipse.osgi.internal.resolver.ResolverErrorImpl;
import org.eclipse.osgi.internal.resolver.StateBuilder;
import org.eclipse.osgi.internal.resolver.StateDeltaImpl;
import org.eclipse.osgi.internal.resolver.StateHelperImpl;
import org.eclipse.osgi.internal.resolver.StateMsg;
import org.eclipse.osgi.internal.resolver.StateReader;
import org.eclipse.osgi.internal.resolver.VersionConstraintImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.Resolver;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.ResolverHookException;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateDelta;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.eclipse.osgi.service.resolver.StateWire;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.Version;
import org.osgi.framework.hooks.resolver.ResolverHook;
import org.osgi.framework.hooks.resolver.ResolverHookFactory;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class StateImpl
implements State {
    private static final String OSGI_OS = "osgi.os";
    private static final String OSGI_WS = "osgi.ws";
    private static final String OSGI_NL = "osgi.nl";
    private static final String OSGI_ARCH = "osgi.arch";
    public static final String[] PROPS = new String[]{"osgi.os", "osgi.ws", "osgi.nl", "osgi.arch", "org.osgi.framework.system.packages", "org.osgi.framework.system.packages.extra", "osgi.resolverMode", "org.osgi.framework.executionenvironment", "osgi.resolveOptional", "osgi.genericAliases", "org.osgi.framework.os.name", "org.osgi.framework.os.version", "org.osgi.framework.processor", "org.osgi.framework.language", "osgi.system.bundle", "org.osgi.framework.system.capabilities", "org.osgi.framework.system.capabilities.extra"};
    private static final DisabledInfo[] EMPTY_DISABLEDINFOS = new DisabledInfo[0];
    private transient Resolver resolver;
    private transient StateDeltaImpl changes;
    private transient boolean resolving = false;
    private transient LinkedList<BundleDescription> removalPendings = new LinkedList();
    private boolean resolved = true;
    private long timeStamp = System.currentTimeMillis();
    private final KeyedHashSet bundleDescriptions = new KeyedHashSet(false);
    private final Map<BundleDescription, List<ResolverError>> resolverErrors = new HashMap<BundleDescription, List<ResolverError>>();
    private StateObjectFactory factory;
    private final KeyedHashSet resolvedBundles = new KeyedHashSet();
    private final Map<BundleDescription, List<DisabledInfo>> disabledBundles = new HashMap<BundleDescription, List<DisabledInfo>>();
    private boolean fullyLoaded = false;
    private boolean dynamicCacheChanged = false;
    private StateReader reader;
    private Dictionary<Object, Object>[] platformProperties = new Dictionary[]{new Hashtable(PROPS.length)};
    private long highestBundleId = -1L;
    private final Set<String> platformPropertyKeys = new HashSet<String>(PROPS.length);
    private ResolverHookFactory hookFactory;
    private ResolverHook hook;
    private boolean developmentMode = false;
    private static long cumulativeTime;
    final Object monitor = new Object();

    protected StateImpl() {
        this.addPlatformPropertyKeys(PROPS);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean addBundle(BundleDescription description) {
        Object object = this.monitor;
        synchronized (object) {
            NativeCodeSpecification nativeCode;
            block12: {
                if (this.basicAddBundle(description)) break block12;
                return false;
            }
            String platformFilter = description.getPlatformFilter();
            if (platformFilter != null) {
                try {
                    FilterImpl filter = FilterImpl.newInstance(platformFilter);
                    this.addPlatformPropertyKeys(filter.getAttributes());
                }
                catch (InvalidSyntaxException invalidSyntaxException) {}
            }
            if ((nativeCode = description.getNativeCodeSpecification()) != null) {
                NativeCodeDescription[] suppliers = nativeCode.getPossibleSuppliers();
                int i = 0;
                while (i < suppliers.length) {
                    FilterImpl filter = (FilterImpl)suppliers[i].getFilter();
                    if (filter != null) {
                        this.addPlatformPropertyKeys(filter.getAttributes());
                    }
                    ++i;
                }
            }
            this.resolved = false;
            this.getDelta().recordBundleAdded((BundleDescriptionImpl)description);
            if (this.getSystemBundle().equals(description.getSymbolicName())) {
                this.resetAllSystemCapabilities();
            }
            if (this.resolver != null) {
                this.resolver.bundleAdded(description);
            }
            this.updateTimeStamp();
            return true;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean updateBundle(BundleDescription newDescription) {
        Object object = this.monitor;
        synchronized (object) {
            BundleDescriptionImpl existing;
            block17: {
                block16: {
                    block15: {
                        existing = (BundleDescriptionImpl)this.bundleDescriptions.get((BundleDescriptionImpl)newDescription);
                        if (existing != null) break block15;
                        return false;
                    }
                    if (this.bundleDescriptions.remove(existing)) break block16;
                    return false;
                }
                this.resolvedBundles.remove(existing);
                List<DisabledInfo> infos = this.disabledBundles.remove(existing);
                if (infos != null) {
                    ArrayList<DisabledInfo> newInfos = new ArrayList<DisabledInfo>(infos.size());
                    for (DisabledInfo info : infos) {
                        newInfos.add(new DisabledInfo(info.getPolicyName(), info.getMessage(), newDescription));
                    }
                    this.disabledBundles.put(newDescription, newInfos);
                }
                existing.setStateBit(4, true);
                if (this.basicAddBundle(newDescription)) break block17;
                return false;
            }
            this.resolved = false;
            this.getDelta().recordBundleUpdated((BundleDescriptionImpl)newDescription);
            if (this.getSystemBundle().equals(newDescription.getSymbolicName())) {
                this.resetAllSystemCapabilities();
            }
            if (this.resolver != null) {
                boolean pending = this.isInUse(existing);
                this.resolver.bundleUpdated(newDescription, existing, pending);
                if (pending) {
                    this.getDelta().recordBundleRemovalPending(existing);
                    this.addRemovalPending(existing);
                } else {
                    try {
                        this.resolving = true;
                        this.resolverErrors.remove(existing);
                        this.resolveBundle(existing, false, null, null, null, null, null, null, null, null);
                    }
                    finally {
                        this.resolving = false;
                    }
                }
            }
            this.updateTimeStamp();
            return true;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription removeBundle(long bundleId) {
        Object object = this.monitor;
        synchronized (object) {
            BundleDescription toRemove;
            block4: {
                toRemove = this.getBundle(bundleId);
                if (toRemove != null && this.removeBundle(toRemove)) break block4;
                return null;
            }
            return toRemove;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean removeBundle(BundleDescription toRemove) {
        Object object = this.monitor;
        synchronized (object) {
            block10: {
                toRemove = (BundleDescription)((Object)this.bundleDescriptions.get((KeyedElement)((Object)toRemove)));
                if (toRemove != null && this.bundleDescriptions.remove((KeyedElement)((Object)toRemove))) break block10;
                return false;
            }
            this.resolvedBundles.remove((KeyedElement)((Object)toRemove));
            this.disabledBundles.remove(toRemove);
            this.resolved = false;
            this.getDelta().recordBundleRemoved((BundleDescriptionImpl)toRemove);
            ((BundleDescriptionImpl)toRemove).setStateBit(4, true);
            if (this.resolver != null) {
                boolean pending = this.isInUse(toRemove);
                this.resolver.bundleRemoved(toRemove, pending);
                if (pending) {
                    this.getDelta().recordBundleRemovalPending((BundleDescriptionImpl)toRemove);
                    this.addRemovalPending(toRemove);
                } else {
                    try {
                        this.resolving = true;
                        this.resolverErrors.remove(toRemove);
                        this.resolveBundle(toRemove, false, null, null, null, null, null);
                    }
                    finally {
                        this.resolving = false;
                    }
                }
            }
            this.updateTimeStamp();
            return true;
        }
    }

    private boolean isInUse(BundleDescription bundle) {
        Object userObject = bundle.getUserObject();
        if (userObject instanceof BundleLoaderProxy) {
            return ((BundleLoaderProxy)userObject).inUse();
        }
        return bundle.getDependents().length > 0;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public StateDelta getChanges() {
        Object object = this.monitor;
        synchronized (object) {
            return this.getDelta();
        }
    }

    private StateDeltaImpl getDelta() {
        if (this.changes == null) {
            this.changes = new StateDeltaImpl(this);
        }
        return this.changes;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription[] getBundles(String symbolicName) {
        Object object = this.monitor;
        synchronized (object) {
            if ("system.bundle".equals(symbolicName)) {
                symbolicName = this.getSystemBundle();
            }
            ArrayList<BundleDescription> bundles = new ArrayList<BundleDescription>();
            Iterator<KeyedElement> iter = this.bundleDescriptions.iterator();
            while (iter.hasNext()) {
                BundleDescription bundle = (BundleDescription)((Object)iter.next());
                if (!symbolicName.equals(bundle.getSymbolicName())) continue;
                bundles.add(bundle);
            }
            return bundles.toArray(new BundleDescription[bundles.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription[] getBundles() {
        Object object = this.monitor;
        synchronized (object) {
            return (BundleDescription[])this.bundleDescriptions.elements(new BundleDescription[this.bundleDescriptions.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription getBundle(long id) {
        Object object = this.monitor;
        synchronized (object) {
            BundleDescription result = (BundleDescription)((Object)this.bundleDescriptions.getByKey(new Long(id)));
            if (result != null) {
                return result;
            }
            for (BundleDescription removedBundle : this.removalPendings) {
                if (removedBundle.getBundleId() != id) continue;
                return removedBundle;
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription getBundle(String name, Version version) {
        Object object = this.monitor;
        synchronized (object) {
            BundleDescription[] allBundles;
            block14: {
                allBundles = this.getBundles(name);
                if (allBundles.length == 1) {
                    return version == null || allBundles[0].getVersion().equals(version) ? allBundles[0] : null;
                }
                if (allBundles.length != 0) break block14;
                return null;
            }
            BaseDescription unresolvedFound = null;
            BaseDescription resolvedFound = null;
            int i = 0;
            while (i < allBundles.length) {
                BundleDescription current = allBundles[i];
                BaseDescription base = current.isResolved() ? resolvedFound : unresolvedFound;
                if (version == null || current.getVersion().equals(version)) {
                    if (base != null && (base.getVersion().compareTo(current.getVersion()) <= 0 || base.getBundleId() > current.getBundleId())) {
                        if (base == resolvedFound) {
                            resolvedFound = current;
                        } else {
                            unresolvedFound = current;
                        }
                    } else if (current.isResolved()) {
                        resolvedFound = current;
                    } else {
                        unresolvedFound = current;
                    }
                }
                ++i;
            }
            if (resolvedFound != null) {
                return resolvedFound;
            }
            return unresolvedFound;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public long getTimeStamp() {
        Object object = this.monitor;
        synchronized (object) {
            return this.timeStamp;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isResolved() {
        Object object = this.monitor;
        synchronized (object) {
            return this.resolved || this.isEmpty();
        }
    }

    @Override
    public void resolveConstraint(VersionConstraint constraint, BaseDescription supplier) {
        ((VersionConstraintImpl)constraint).setSupplier(supplier);
    }

    @Override
    public void resolveBundle(BundleDescription bundle, boolean status, BundleDescription[] hosts, ExportPackageDescription[] selectedExports, BundleDescription[] resolvedRequires, ExportPackageDescription[] resolvedImports) {
        this.resolveBundle(bundle, status, hosts, selectedExports, null, resolvedRequires, resolvedImports);
    }

    @Override
    public void resolveBundle(BundleDescription bundle, boolean status, BundleDescription[] hosts, ExportPackageDescription[] selectedExports, ExportPackageDescription[] substitutedExports, BundleDescription[] resolvedRequires, ExportPackageDescription[] resolvedImports) {
        this.resolveBundle(bundle, status, hosts, selectedExports, substitutedExports, null, resolvedRequires, resolvedImports, null, null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void resolveBundle(BundleDescription bundle, boolean status, BundleDescription[] hosts, ExportPackageDescription[] selectedExports, ExportPackageDescription[] substitutedExports, GenericDescription[] selectedCapabilities, BundleDescription[] resolvedRequires, ExportPackageDescription[] resolvedImports, GenericDescription[] resolvedCapabilities, Map<String, List<StateWire>> resolvedWires) {
        Object object = this.monitor;
        synchronized (object) {
            if (!this.resolving) {
                throw new IllegalStateException();
            }
            BundleDescriptionImpl modifiable = (BundleDescriptionImpl)bundle;
            this.getDelta().recordBundleResolved(modifiable, status);
            modifiable.setLazyLoaded(false);
            modifiable.setStateBit(1, status);
            if (status) {
                this.resolverErrors.remove(modifiable);
                this.resolvedBundles.add(modifiable);
            } else {
                this.resolvedBundles.remove(modifiable);
                modifiable.removeDependencies();
            }
            if (selectedExports == null || resolvedRequires == null || resolvedImports == null) {
                this.unresolveConstraints(modifiable);
            } else {
                this.resolveConstraints(modifiable, hosts, selectedExports, substitutedExports, selectedCapabilities, resolvedRequires, resolvedImports, resolvedCapabilities, resolvedWires);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void removeBundleComplete(BundleDescription bundle) {
        Object object = this.monitor;
        synchronized (object) {
            if (!this.resolving) {
                throw new IllegalStateException();
            }
            this.getDelta().recordBundleRemovalComplete((BundleDescriptionImpl)bundle);
            this.removalPendings.remove(bundle);
        }
    }

    private void resolveConstraints(BundleDescriptionImpl bundle, BundleDescription[] hosts, ExportPackageDescription[] selectedExports, ExportPackageDescription[] substitutedExports, GenericDescription[] selectedCapabilities, BundleDescription[] resolvedRequires, ExportPackageDescription[] resolvedImports, GenericDescription[] resolvedCapabilities, Map<String, List<StateWire>> resolvedWires) {
        HostSpecificationImpl hostSpec = (HostSpecificationImpl)bundle.getHost();
        if (hostSpec != null && hosts != null) {
            hostSpec.setHosts(hosts);
            int i = 0;
            while (i < hosts.length) {
                ((BundleDescriptionImpl)hosts[i]).addDependency(bundle, true);
                this.checkHostForSubstitutedExports((BundleDescriptionImpl)hosts[i], bundle);
                ++i;
            }
        }
        bundle.setSelectedExports(selectedExports);
        bundle.setResolvedRequires(resolvedRequires);
        bundle.setResolvedImports(resolvedImports);
        bundle.setSubstitutedExports(substitutedExports);
        bundle.setSelectedCapabilities(selectedCapabilities);
        bundle.setResolvedCapabilities(resolvedCapabilities);
        bundle.setStateWires(resolvedWires);
        bundle.addDependencies(hosts, true);
        bundle.addDependencies(resolvedRequires, true);
        bundle.addDependencies(resolvedImports, true);
        bundle.addDependencies(resolvedCapabilities, true);
    }

    private void checkHostForSubstitutedExports(BundleDescriptionImpl host, BundleDescriptionImpl fragment) {
    }

    private void unresolveConstraints(BundleDescriptionImpl bundle) {
        HostSpecificationImpl host = (HostSpecificationImpl)bundle.getHost();
        if (host != null) {
            host.setHosts(null);
        }
        bundle.setSelectedExports(null);
        bundle.setResolvedImports(null);
        bundle.setResolvedRequires(null);
        bundle.setSubstitutedExports(null);
        bundle.setSelectedCapabilities(null);
        bundle.setResolvedCapabilities(null);
        bundle.setStateWires(null);
        bundle.clearAddedDynamicImportPackages();
        NativeCodeSpecificationImpl nativeCode = (NativeCodeSpecificationImpl)bundle.getNativeCodeSpecification();
        if (nativeCode != null) {
            nativeCode.setSupplier(null);
        }
        ImportPackageSpecification[] imports = bundle.getImportPackages();
        int i = 0;
        while (i < imports.length) {
            ((ImportPackageSpecificationImpl)imports[i]).setSupplier(null);
            ++i;
        }
        BundleSpecification[] requires = bundle.getRequiredBundles();
        int i2 = 0;
        while (i2 < requires.length) {
            ((BundleSpecificationImpl)requires[i2]).setSupplier(null);
            ++i2;
        }
        GenericSpecification[] genericRequires = bundle.getGenericRequires();
        if (genericRequires.length > 0) {
            int i3 = 0;
            while (i3 < genericRequires.length) {
                ((GenericSpecificationImpl)genericRequires[i3]).setSupplers(null);
                ++i3;
            }
        }
        bundle.removeDependencies();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private StateDelta resolve(boolean incremental, BundleDescription[] reResolve, BundleDescription[] triggers) {
        this.fullyLoad();
        Object object = this.monitor;
        synchronized (object) {
            if (this.resolver == null) {
                throw new IllegalStateException("no resolver set");
            }
            if (this.resolving) {
                throw new IllegalStateException("An attempt to start a nested resolve process has been detected.");
            }
            ResolverHook currentHook = null;
            try {
                BundleDescription[] removed;
                this.resolving = true;
                long start = 0L;
                if (StateManager.DEBUG_PLATFORM_ADMIN_RESOLVER) {
                    start = System.currentTimeMillis();
                }
                if (!incremental) {
                    this.resolved = false;
                    reResolve = this.getBundles();
                    if (this.removalPendings.size() > 0) {
                        removed = this.internalGetRemovalPending();
                        reResolve = this.mergeBundles(reResolve, removed);
                    }
                    this.flush(reResolve);
                } else {
                    if (this.resolved && reResolve == null) {
                        StateDeltaImpl stateDeltaImpl = new StateDeltaImpl(this);
                        return stateDeltaImpl;
                    }
                    if (this.developmentMode && this.removalPendings.size() > 0) {
                        removed = this.internalGetRemovalPending();
                        reResolve = this.mergeBundles(reResolve, removed);
                    }
                    if (reResolve == null) {
                        reResolve = this.internalGetRemovalPending();
                    }
                    if (triggers == null) {
                        HashSet<BundleDescription> triggerSet = new HashSet<BundleDescription>();
                        Collection<BundleDescription> closure = this.getDependencyClosure(Arrays.asList(reResolve));
                        for (BundleDescription toRefresh : closure) {
                            Bundle bundle = toRefresh.getBundle();
                            if (bundle == null || (bundle.getState() & 7) != 0) continue;
                            triggerSet.add(toRefresh);
                        }
                        triggers = triggerSet.toArray(new BundleDescription[triggerSet.size()]);
                    }
                }
                Headers[] tmpPlatformProperties = new Headers[this.platformProperties.length];
                int i = 0;
                while (i < this.platformProperties.length) {
                    tmpPlatformProperties[i] = new Headers(this.platformProperties[i].size());
                    Enumeration<Object> keys = this.platformProperties[i].keys();
                    while (keys.hasMoreElements()) {
                        Object key = keys.nextElement();
                        tmpPlatformProperties[i].put(key, this.platformProperties[i].get(key));
                    }
                    ++i;
                }
                ResolverHookFactory currentFactory = this.hookFactory;
                if (currentFactory != null) {
                    Collection<BundleRevision> triggerRevisions = Collections.unmodifiableCollection(triggers == null ? Collections.EMPTY_LIST : Arrays.asList(triggers));
                    currentHook = this.begin(triggerRevisions);
                }
                ResolverHookException error = null;
                try {
                    this.resolver.resolve(reResolve, tmpPlatformProperties);
                }
                catch (ResolverHookException e) {
                    error = e;
                    this.resolverErrors.clear();
                }
                this.resolved = this.removalPendings.size() == 0;
                StateDeltaImpl savedChanges = this.changes == null ? new StateDeltaImpl(this) : this.changes;
                savedChanges.setResolverHookException(error);
                this.changes = new StateDeltaImpl(this);
                if (StateManager.DEBUG_PLATFORM_ADMIN_RESOLVER) {
                    long time = System.currentTimeMillis() - start;
                    Debug.println(new StringBuffer("Time spent resolving: ").append(time).toString());
                    FrameworkDebugOptions.getDefault().setOption("org.eclipse.core.runtime.adaptor/resolver/timing/value", Long.toString(cumulativeTime += time));
                }
                if (savedChanges.getChanges().length > 0) {
                    this.updateTimeStamp();
                }
                StateDeltaImpl stateDeltaImpl = savedChanges;
                return stateDeltaImpl;
            }
            finally {
                if (currentHook != null) {
                    currentHook.end();
                }
                this.resolving = false;
            }
        }
    }

    private BundleDescription[] mergeBundles(BundleDescription[] reResolve, BundleDescription[] removed) {
        if (reResolve == null) {
            return removed;
        }
        if (reResolve.length == 0) {
            return reResolve;
        }
        ArrayList<BundleDescription> result = new ArrayList<BundleDescription>(reResolve.length + removed.length);
        int i = 0;
        while (i < reResolve.length) {
            result.add(reResolve[i]);
            ++i;
        }
        i = 0;
        while (i < removed.length) {
            boolean found = false;
            int j = 0;
            while (j < reResolve.length) {
                if (removed[i] == reResolve[j]) {
                    found = true;
                    break;
                }
                ++j;
            }
            if (!found) {
                result.add(removed[i]);
            }
            ++i;
        }
        return result.toArray(new BundleDescription[result.size()]);
    }

    private void flush(BundleDescription[] bundles) {
        this.resolver.flush();
        this.resolved = false;
        this.resolverErrors.clear();
        if (this.resolvedBundles.isEmpty()) {
            return;
        }
        int i = 0;
        while (i < bundles.length) {
            this.resolveBundle(bundles[i], false, null, null, null, null, null);
            ++i;
        }
        this.resolvedBundles.clear();
    }

    @Override
    public StateDelta resolve() {
        return this.resolve(true, null, null);
    }

    @Override
    public StateDelta resolve(boolean incremental) {
        return this.resolve(incremental, null, null);
    }

    @Override
    public StateDelta resolve(BundleDescription[] reResolve) {
        return this.resolve(true, reResolve, null);
    }

    @Override
    public StateDelta resolve(BundleDescription[] resolve, boolean discard) {
        BundleDescription[] reResolve = discard ? resolve : new BundleDescription[]{};
        BundleDescription[] triggers = discard ? null : resolve;
        return this.resolve(true, reResolve, triggers);
    }

    @Override
    public void setOverrides(Object value) {
        throw new UnsupportedOperationException();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setResolverHookFactory(ResolverHookFactory hookFactory) {
        Object object = this.monitor;
        synchronized (object) {
            if (this.hookFactory != null) {
                throw new IllegalStateException("Resolver hook factory is already set.");
            }
            this.hookFactory = hookFactory;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private ResolverHook begin(Collection<BundleRevision> triggers) {
        ResolverHookFactory current;
        Object object = this.monitor;
        synchronized (object) {
            current = this.hookFactory;
        }
        ResolverHook newHook = current.begin(triggers);
        Object object2 = this.monitor;
        synchronized (object2) {
            this.hook = newHook;
        }
        return newHook;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    ResolverHookFactory getResolverHookFactory() {
        Object object = this.monitor;
        synchronized (object) {
            return this.hookFactory;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ResolverHook getResolverHook() {
        Object object = this.monitor;
        synchronized (object) {
            return this.hook;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription[] getResolvedBundles() {
        Object object = this.monitor;
        synchronized (object) {
            return (BundleDescription[])this.resolvedBundles.elements(new BundleDescription[this.resolvedBundles.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isEmpty() {
        Object object = this.monitor;
        synchronized (object) {
            return this.bundleDescriptions.isEmpty();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setResolved(boolean resolved) {
        Object object = this.monitor;
        synchronized (object) {
            this.resolved = resolved;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    boolean basicAddBundle(BundleDescription description) {
        Object object = this.monitor;
        synchronized (object) {
            block8: {
                StateImpl origState = (StateImpl)description.getContainingState();
                if (origState != null && origState != this) {
                    if (origState.removalPendings.contains(description)) {
                        throw new IllegalStateException(NLS.bind(StateMsg.BUNDLE_PENDING_REMOVE_STATE, description.toString()));
                    }
                    if (origState.getBundle(description.getBundleId()) == description) {
                        throw new IllegalStateException(NLS.bind(StateMsg.BUNDLE_IN_OTHER_STATE, description.toString()));
                    }
                }
                ((BundleDescriptionImpl)description).setContainingState(this);
                ((BundleDescriptionImpl)description).setStateBit(4, false);
                if (!this.bundleDescriptions.add((BundleDescriptionImpl)description)) break block8;
                if (description.getBundleId() > this.getHighestBundleId()) {
                    this.highestBundleId = description.getBundleId();
                }
                return true;
            }
            return false;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addResolvedBundle(BundleDescriptionImpl resolvedBundle) {
        Object object = this.monitor;
        synchronized (object) {
            this.resolvedBundles.add(resolvedBundle);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ExportPackageDescription[] getExportedPackages() {
        this.fullyLoad();
        Object object = this.monitor;
        synchronized (object) {
            int i;
            ExportPackageDescription[] bundlePackages;
            ArrayList<ExportPackageDescription> allExportedPackages = new ArrayList<ExportPackageDescription>();
            Iterator<KeyedElement> iter = this.resolvedBundles.iterator();
            while (iter.hasNext()) {
                BundleDescription bundle = (BundleDescription)((Object)iter.next());
                bundlePackages = bundle.getSelectedExports();
                if (bundlePackages == null) continue;
                i = 0;
                while (i < bundlePackages.length) {
                    allExportedPackages.add(bundlePackages[i]);
                    ++i;
                }
            }
            for (BundleDescription bundle : this.removalPendings) {
                bundlePackages = bundle.getSelectedExports();
                if (bundlePackages == null) continue;
                i = 0;
                while (i < bundlePackages.length) {
                    allExportedPackages.add(bundlePackages[i]);
                    ++i;
                }
            }
            return allExportedPackages.toArray(new ExportPackageDescription[allExportedPackages.size()]);
        }
    }

    BundleDescription[] getFragments(BundleDescription host) {
        ArrayList<BundleDescription> fragments = new ArrayList<BundleDescription>();
        Iterator<KeyedElement> iter = this.bundleDescriptions.iterator();
        block0: while (iter.hasNext()) {
            BundleDescription[] hosts;
            BundleDescription bundle = (BundleDescription)((Object)iter.next());
            HostSpecification hostSpec = bundle.getHost();
            if (hostSpec == null || (hosts = hostSpec.getHosts()) == null) continue;
            int i = 0;
            while (i < hosts.length) {
                if (hosts[i] == host) {
                    fragments.add(bundle);
                    continue block0;
                }
                ++i;
            }
        }
        return fragments.toArray(new BundleDescription[fragments.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setTimeStamp(long newTimeStamp) {
        Object object = this.monitor;
        synchronized (object) {
            this.timeStamp = newTimeStamp;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void updateTimeStamp() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.getTimeStamp() == Long.MAX_VALUE) {
                this.setTimeStamp(0L);
            }
            this.setTimeStamp(this.getTimeStamp() + 1L);
        }
    }

    @Override
    public StateObjectFactory getFactory() {
        return this.factory;
    }

    void setFactory(StateObjectFactory factory) {
        this.factory = factory;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription getBundleByLocation(String location) {
        Object object = this.monitor;
        synchronized (object) {
            Iterator<KeyedElement> i = this.bundleDescriptions.iterator();
            while (i.hasNext()) {
                BundleDescription current = (BundleDescription)((Object)i.next());
                if (!location.equals(current.getLocation())) continue;
                return current;
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Resolver getResolver() {
        Object object = this.monitor;
        synchronized (object) {
            return this.resolver;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setResolver(Resolver newResolver) {
        if (this.resolver == newResolver) {
            return;
        }
        if (this.resolver != null) {
            Resolver oldResolver = this.resolver;
            this.resolver = null;
            oldResolver.setState(null);
        }
        Object object = this.monitor;
        synchronized (object) {
            this.resolver = newResolver;
        }
        if (this.resolver == null) {
            return;
        }
        this.resolver.setState(this);
    }

    @Override
    public boolean setPlatformProperties(Dictionary<?, ?> platformProperties) {
        return this.setPlatformProperties(new Dictionary[]{platformProperties});
    }

    @Override
    public boolean setPlatformProperties(Dictionary<?, ?>[] platformProperties) {
        return this.setPlatformProperties(platformProperties, true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    synchronized boolean setPlatformProperties(Dictionary<?, ?>[] platformProperties, boolean resetSystemExports) {
        if (platformProperties.length == 0) {
            throw new IllegalArgumentException();
        }
        Dictionary[] newPlatformProperties = new Dictionary[platformProperties.length];
        int i = 0;
        while (i < platformProperties.length) {
            newPlatformProperties[i] = new Hashtable(platformProperties[i].size());
            Dictionary<?, ?> dictionary = platformProperties[i];
            synchronized (dictionary) {
                Enumeration<?> keys = platformProperties[i].keys();
                while (keys.hasMoreElements()) {
                    Object key = keys.nextElement();
                    Object value = platformProperties[i].get(key);
                    newPlatformProperties[i].put(key, value);
                }
            }
            if (newPlatformProperties[i].get("org.osgi.framework.os.name") == null && newPlatformProperties[i].get(OSGI_OS) != null) {
                newPlatformProperties[i].put("org.osgi.framework.os.name", newPlatformProperties[i].get(OSGI_OS));
            }
            if (newPlatformProperties[i].get("org.osgi.framework.processor") == null && newPlatformProperties[i].get(OSGI_ARCH) != null) {
                newPlatformProperties[i].put("org.osgi.framework.processor", newPlatformProperties[i].get(OSGI_ARCH));
            }
            if (newPlatformProperties[i].get("org.osgi.framework.language") == null && newPlatformProperties[i].get(OSGI_NL) instanceof String) {
                String osgiNL = (String)newPlatformProperties[i].get(OSGI_NL);
                int idx = osgiNL.indexOf(95);
                if (idx >= 0) {
                    osgiNL = osgiNL.substring(0, idx);
                }
                newPlatformProperties[i].put("org.osgi.framework.language", osgiNL);
            }
            ++i;
        }
        boolean result = false;
        boolean performResetSystemExports = false;
        boolean performResetSystemCapabilities = false;
        if (this.platformProperties.length != newPlatformProperties.length) {
            result = true;
            performResetSystemExports = true;
            performResetSystemCapabilities = true;
        } else {
            String[] keys = this.getPlatformPropertyKeys();
            int i2 = 0;
            while (i2 < newPlatformProperties.length && !result) {
                result |= this.changedProps(this.platformProperties[i2], newPlatformProperties[i2], keys);
                if (resetSystemExports) {
                    performResetSystemExports |= this.checkProp(this.platformProperties[i2].get("org.osgi.framework.system.packages"), newPlatformProperties[i2].get("org.osgi.framework.system.packages"));
                    performResetSystemExports |= this.checkProp(this.platformProperties[i2].get("org.osgi.framework.system.packages.extra"), newPlatformProperties[i2].get("org.osgi.framework.system.packages.extra"));
                    performResetSystemExports |= this.checkProp(this.platformProperties[i2].get("system.bundle"), newPlatformProperties[i2].get("system.bundle"));
                    performResetSystemCapabilities |= this.checkProp(this.platformProperties[i2].get("org.osgi.framework.system.capabilities"), newPlatformProperties[i2].get("org.osgi.framework.system.capabilities"));
                    performResetSystemCapabilities |= this.checkProp(this.platformProperties[i2].get("org.osgi.framework.system.capabilities.extra"), newPlatformProperties[i2].get("org.osgi.framework.system.capabilities.extra"));
                }
                ++i2;
            }
        }
        this.platformProperties = newPlatformProperties;
        if (performResetSystemExports) {
            this.resetSystemExports();
        }
        if (performResetSystemCapabilities) {
            this.resetSystemCapabilities();
        }
        this.developmentMode = this.platformProperties.length == 0 ? false : "development".equals(this.platformProperties[0].get("osgi.resolverMode"));
        return result;
    }

    private void resetAllSystemCapabilities() {
        this.resetSystemExports();
        this.resetSystemCapabilities();
    }

    private void resetSystemExports() {
        BundleDescription[] systemBundles = this.getBundles("system.bundle");
        int idx = 0;
        while (idx < systemBundles.length) {
            BundleDescriptionImpl systemBundle = (BundleDescriptionImpl)systemBundles[idx];
            ExportPackageDescription[] exports = systemBundle.getExportPackages();
            ArrayList<ExportPackageDescription> newExports = new ArrayList<ExportPackageDescription>(exports.length);
            int i = 0;
            while (i < exports.length) {
                if ((Integer)exports[i].getDirective("x-equinox-ee") < 0) {
                    newExports.add(exports[i]);
                }
                ++i;
            }
            this.addSystemExports(newExports);
            systemBundle.setExportPackages(newExports.toArray(new ExportPackageDescription[newExports.size()]));
            ++idx;
        }
    }

    private void addSystemExports(List<ExportPackageDescription> exports) {
        int i = 0;
        while (i < this.platformProperties.length) {
            try {
                this.addSystemExports(exports, ManifestElement.parseHeader("Export-Package", (String)this.platformProperties[i].get("org.osgi.framework.system.packages")), i);
                this.addSystemExports(exports, ManifestElement.parseHeader("Export-Package", (String)this.platformProperties[i].get("org.osgi.framework.system.packages.extra")), i);
            }
            catch (BundleException bundleException) {}
            ++i;
        }
    }

    private void addSystemExports(List<ExportPackageDescription> exports, ManifestElement[] elements, int index) {
        if (elements == null) {
            return;
        }
        ExportPackageDescription[] systemExports = StateBuilder.createExportPackages(elements, null, null, 2, false);
        Integer profInx = new Integer(index);
        int j = 0;
        while (j < systemExports.length) {
            ((ExportPackageDescriptionImpl)systemExports[j]).setDirective("x-equinox-ee", profInx);
            exports.add(systemExports[j]);
            ++j;
        }
    }

    private void resetSystemCapabilities() {
        BundleDescription[] systemBundles = this.getBundles("system.bundle");
        Long builtIn = new Long(1L);
        BundleDescription[] bundleDescriptionArray = systemBundles;
        int n = systemBundles.length;
        int n2 = 0;
        while (n2 < n) {
            BundleDescription systemBundle = bundleDescriptionArray[n2];
            GenericDescription[] capabilities = systemBundle.getGenericCapabilities();
            ArrayList<GenericDescription> newCapabilities = new ArrayList<GenericDescription>(capabilities.length);
            GenericDescription[] genericDescriptionArray = capabilities;
            int n3 = capabilities.length;
            int n4 = 0;
            while (n4 < n3) {
                GenericDescription capability = genericDescriptionArray[n4];
                if (builtIn.equals(capability.getDeclaredAttributes().get("equinox.builtin"))) {
                    newCapabilities.add(capability);
                }
                ++n4;
            }
            this.addSystemCapabilities(newCapabilities);
            ((BundleDescriptionImpl)systemBundle).setGenericCapabilities(newCapabilities.toArray(new GenericDescription[newCapabilities.size()]));
            ++n2;
        }
    }

    private void addSystemCapabilities(List<GenericDescription> capabilities) {
        int i = 0;
        while (i < this.platformProperties.length) {
            try {
                this.addSystemCapabilities(capabilities, ManifestElement.parseHeader("Provide-Capability", (String)this.platformProperties[i].get("org.osgi.framework.system.capabilities")));
                this.addSystemCapabilities(capabilities, ManifestElement.parseHeader("Provide-Capability", (String)this.platformProperties[i].get("org.osgi.framework.system.capabilities.extra")));
            }
            catch (BundleException bundleException) {}
            ++i;
        }
    }

    private void addSystemCapabilities(List<GenericDescription> capabilities, ManifestElement[] elements) {
        StateBuilder.createOSGiCapabilities(elements, capabilities);
    }

    @Override
    public Dictionary[] getPlatformProperties() {
        return this.platformProperties;
    }

    private boolean checkProp(Object origObj, Object newObj) {
        if (origObj == null && newObj != null || origObj != null && newObj == null) {
            return true;
        }
        if (origObj == null) {
            return false;
        }
        if (origObj.getClass() != newObj.getClass()) {
            return true;
        }
        if (origObj instanceof String[]) {
            String[] origProps = (String[])origObj;
            String[] newProps = (String[])newObj;
            if (origProps.length != newProps.length) {
                return true;
            }
            int i = 0;
            while (i < origProps.length) {
                if (!origProps[i].equals(newProps[i])) {
                    return true;
                }
                ++i;
            }
            return false;
        }
        return !origObj.equals(newObj);
    }

    private boolean changedProps(Dictionary<Object, Object> origProps, Dictionary<Object, Object> newProps, String[] keys) {
        int i = 0;
        while (i < keys.length) {
            Object newProp;
            Object origProp = origProps.get(keys[i]);
            if (this.checkProp(origProp, newProp = newProps.get(keys[i]))) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public String getSystemBundle() {
        String symbolicName = null;
        if (this.platformProperties != null && this.platformProperties.length > 0) {
            symbolicName = (String)this.platformProperties[0].get("osgi.system.bundle");
        }
        return symbolicName != null ? symbolicName : Constants.getInternalSymbolicName();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription[] getRemovalPending() {
        Object object = this.monitor;
        synchronized (object) {
            return this.removalPendings.toArray(new BundleDescription[this.removalPendings.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void addRemovalPending(BundleDescription removed) {
        Object object = this.monitor;
        synchronized (object) {
            if (!this.removalPendings.contains(removed)) {
                this.removalPendings.addFirst(removed);
            }
        }
    }

    @Override
    public Collection<BundleDescription> getDependencyClosure(Collection<BundleDescription> bundles) {
        BundleDescription[] removals = this.getRemovalPending();
        HashSet<BundleDescription> result = new HashSet<BundleDescription>();
        for (BundleDescription bundle : bundles) {
            StateImpl.addDependents(bundle, result, removals);
        }
        return result;
    }

    private static void addDependents(BundleDescription bundle, Set<BundleDescription> result, BundleDescription[] removals) {
        BundleDescription[] dependents;
        if (result.contains(bundle)) {
            return;
        }
        result.add(bundle);
        BundleDescription[] bundleDescriptionArray = dependents = bundle.getDependents();
        int n = dependents.length;
        int n2 = 0;
        while (n2 < n) {
            BundleDescription dependent = bundleDescriptionArray[n2];
            StateImpl.addDependents(dependent, result, removals);
            ++n2;
        }
        bundleDescriptionArray = removals;
        n = removals.length;
        n2 = 0;
        while (n2 < n) {
            BundleDescription removed = bundleDescriptionArray[n2];
            if (removed.getBundleId() == bundle.getBundleId()) {
                StateImpl.addDependents(removed, result, removals);
            }
            ++n2;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private BundleDescription[] internalGetRemovalPending() {
        Object object = this.monitor;
        synchronized (object) {
            Iterator removed = this.removalPendings.iterator();
            BundleDescription[] result = new BundleDescription[this.removalPendings.size()];
            int i = 0;
            while (removed.hasNext()) {
                result[i++] = this.getBundle(((BundleDescription)removed.next()).getBundleId());
            }
            return result;
        }
    }

    @Override
    public ExportPackageDescription linkDynamicImport(BundleDescription importingBundle, String requestedPackage) {
        if (this.resolver == null) {
            throw new IllegalStateException("no resolver set");
        }
        BundleDescriptionImpl importer = (BundleDescriptionImpl)importingBundle;
        if (importer.getDynamicStamp(requestedPackage) == this.getTimeStamp()) {
            return null;
        }
        this.fullyLoad();
        Object object = this.monitor;
        synchronized (object) {
            ExportPackageDescriptionImpl exportPackageDescriptionImpl;
            block12: {
                ResolverHook currentHook = null;
                try {
                    ExportPackageDescriptionImpl result;
                    this.resolving = true;
                    ResolverHookFactory currentFactory = this.hookFactory;
                    if (currentFactory != null) {
                        ArrayList<BundleRevision> triggers = new ArrayList<BundleDescription>(1);
                        triggers.add(importingBundle);
                        triggers = Collections.unmodifiableCollection(triggers);
                        currentHook = this.begin(triggers);
                    }
                    if ((result = (ExportPackageDescriptionImpl)this.resolver.resolveDynamicImport(importingBundle, requestedPackage)) == null) {
                        importer.setDynamicStamp(requestedPackage, new Long(this.getTimeStamp()));
                    } else {
                        importer.setDynamicStamp(requestedPackage, null);
                        importer.addDynamicResolvedImport(result);
                    }
                    this.setDynamicCacheChanged(true);
                    exportPackageDescriptionImpl = result;
                    this.resolving = false;
                    if (currentHook == null) break block12;
                    currentHook.end();
                }
                catch (Throwable throwable) {
                    this.resolving = false;
                    if (currentHook != null) {
                        currentHook.end();
                    }
                    throw throwable;
                }
            }
            return exportPackageDescriptionImpl;
        }
    }

    @Override
    public void addDynamicImportPackages(BundleDescription importingBundle, ImportPackageSpecification[] dynamicImports) {
        ((BundleDescriptionImpl)importingBundle).addDynamicImportPackages(dynamicImports);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setReader(StateReader reader) {
        Object object = this.monitor;
        synchronized (object) {
            this.reader = reader;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    StateReader getReader() {
        Object object = this.monitor;
        synchronized (object) {
            return this.reader;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public final void fullyLoad() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.reader == null) {
                return;
            }
            if (this.fullyLoaded) {
                return;
            }
            if (this.reader.isLazyLoaded()) {
                this.reader.fullyLoad();
            }
            this.fullyLoaded = true;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public final boolean unloadLazyData(long checkStamp) {
        Object object = this.monitor;
        synchronized (object) {
            block7: {
                block6: {
                    if (checkStamp == this.getTimeStamp() && !this.dynamicCacheChanged()) break block6;
                    return false;
                }
                if (!this.reader.getAccessedFlag()) break block7;
                this.reader.setAccessedFlag(false);
                return true;
            }
            this.fullyLoaded = false;
            BundleDescription[] bundles = this.getBundles();
            int i = 0;
            while (i < bundles.length) {
                ((BundleDescriptionImpl)bundles[i]).unload();
                ++i;
            }
            this.reader.flushLazyObjectCache();
            this.resolver.flush();
            return true;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ExportPackageDescription[] getSystemPackages() {
        Object object = this.monitor;
        synchronized (object) {
            ArrayList<ExportPackageDescription> result = new ArrayList<ExportPackageDescription>();
            BundleDescription[] systemBundles = this.getBundles("system.bundle");
            if (systemBundles.length > 0) {
                BundleDescriptionImpl systemBundle = (BundleDescriptionImpl)systemBundles[0];
                ExportPackageDescription[] exports = systemBundle.getExportPackages();
                int i = 0;
                while (i < exports.length) {
                    if ((Integer)exports[i].getDirective("x-equinox-ee") >= 0) {
                        result.add(exports[i]);
                    }
                    ++i;
                }
            }
            return result.toArray(new ExportPackageDescription[result.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    boolean inStrictMode() {
        Object object = this.monitor;
        synchronized (object) {
            return "strict".equals(this.getPlatformProperties()[0].get("osgi.resolverMode"));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ResolverError[] getResolverErrors(BundleDescription bundle) {
        Object object = this.monitor;
        synchronized (object) {
            if (bundle.isResolved()) {
                return new ResolverError[0];
            }
            List<ResolverError> result = this.resolverErrors.get(bundle);
            ResolverError[] resolverErrorArray = result == null ? new ResolverError[]{} : result.toArray(new ResolverError[result.size()]);
            return resolverErrorArray;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void addResolverError(BundleDescription bundle, int type, String data, VersionConstraint unsatisfied) {
        Object object = this.monitor;
        synchronized (object) {
            if (!this.resolving) {
                throw new IllegalStateException();
            }
            List<ResolverError> errors = this.resolverErrors.get(bundle);
            if (errors == null) {
                errors = new ArrayList<ResolverError>(1);
                this.resolverErrors.put(bundle, errors);
            }
            errors.add(new ResolverErrorImpl((BundleDescriptionImpl)bundle, type, data, unsatisfied));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void removeResolverErrors(BundleDescription bundle) {
        Object object = this.monitor;
        synchronized (object) {
            if (!this.resolving) {
                throw new IllegalStateException();
            }
            this.resolverErrors.remove(bundle);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean dynamicCacheChanged() {
        Object object = this.monitor;
        synchronized (object) {
            return this.dynamicCacheChanged;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setDynamicCacheChanged(boolean dynamicCacheChanged) {
        Object object = this.monitor;
        synchronized (object) {
            this.dynamicCacheChanged = dynamicCacheChanged;
        }
    }

    @Override
    public StateHelper getStateHelper() {
        return StateHelperImpl.getInstance();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addPlatformPropertyKeys(String[] keys) {
        Set<String> set = this.platformPropertyKeys;
        synchronized (set) {
            int i = 0;
            while (i < keys.length) {
                if (!this.platformPropertyKeys.contains(keys[i])) {
                    this.platformPropertyKeys.add(keys[i]);
                }
                ++i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    String[] getPlatformPropertyKeys() {
        Set<String> set = this.platformPropertyKeys;
        synchronized (set) {
            return this.platformPropertyKeys.toArray(new String[this.platformPropertyKeys.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public long getHighestBundleId() {
        Object object = this.monitor;
        synchronized (object) {
            return this.highestBundleId;
        }
    }

    @Override
    public void setNativePathsInvalid(NativeCodeDescription nativeCodeDescription, boolean hasInvalidNativePaths) {
        ((NativeCodeDescriptionImpl)nativeCodeDescription).setInvalidNativePaths(hasInvalidNativePaths);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription[] getDisabledBundles() {
        Object object = this.monitor;
        synchronized (object) {
            return this.disabledBundles.keySet().toArray(new BundleDescription[0]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void addDisabledInfo(DisabledInfo disabledInfo) {
        Object object = this.monitor;
        synchronized (object) {
            if (this.getBundle(disabledInfo.getBundle().getBundleId()) != disabledInfo.getBundle()) {
                throw new IllegalArgumentException(NLS.bind(StateMsg.BUNDLE_NOT_IN_STATE, disabledInfo.getBundle()));
            }
            List<DisabledInfo> currentInfos = this.disabledBundles.get(disabledInfo.getBundle());
            if (currentInfos == null) {
                currentInfos = new ArrayList<DisabledInfo>(1);
                currentInfos.add(disabledInfo);
                this.disabledBundles.put(disabledInfo.getBundle(), currentInfos);
            } else {
                for (DisabledInfo currentInfo : currentInfos) {
                    if (!disabledInfo.getPolicyName().equals(currentInfo.getPolicyName())) continue;
                    currentInfos.remove(currentInfo);
                    break;
                }
                currentInfos.add(disabledInfo);
            }
            this.updateTimeStamp();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void removeDisabledInfo(DisabledInfo disabledInfo) {
        Object object = this.monitor;
        synchronized (object) {
            List<DisabledInfo> currentInfos = this.disabledBundles.get(disabledInfo.getBundle());
            if (currentInfos != null && currentInfos.contains(disabledInfo)) {
                currentInfos.remove(disabledInfo);
                if (currentInfos.isEmpty()) {
                    this.disabledBundles.remove(disabledInfo.getBundle());
                }
            }
            this.updateTimeStamp();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public DisabledInfo getDisabledInfo(BundleDescription bundle, String policyName) {
        Object object = this.monitor;
        synchronized (object) {
            List<DisabledInfo> currentInfos;
            block5: {
                currentInfos = this.disabledBundles.get(bundle);
                if (currentInfos != null) break block5;
                return null;
            }
            for (DisabledInfo currentInfo : currentInfos) {
                if (!currentInfo.getPolicyName().equals(policyName)) continue;
                return currentInfo;
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public DisabledInfo[] getDisabledInfos(BundleDescription bundle) {
        Object object = this.monitor;
        synchronized (object) {
            List<DisabledInfo> currentInfos = this.disabledBundles.get(bundle);
            return currentInfos == null ? EMPTY_DISABLEDINFOS : currentInfos.toArray(new DisabledInfo[currentInfos.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    DisabledInfo[] getDisabledInfos() {
        ArrayList results = new ArrayList();
        Object object = this.monitor;
        synchronized (object) {
            Iterator<List<DisabledInfo>> allDisabledInfos = this.disabledBundles.values().iterator();
            while (allDisabledInfos.hasNext()) {
                results.addAll(allDisabledInfos.next());
            }
        }
        return results.toArray(new DisabledInfo[results.size()]);
    }
}

