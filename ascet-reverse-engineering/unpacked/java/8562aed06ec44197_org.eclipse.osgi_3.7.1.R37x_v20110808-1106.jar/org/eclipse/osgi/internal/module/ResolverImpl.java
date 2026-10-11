/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import java.security.AccessController;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.framework.util.SecureAction;
import org.eclipse.osgi.internal.baseadaptor.ArrayMap;
import org.eclipse.osgi.internal.module.BundleConstraint;
import org.eclipse.osgi.internal.module.CompositeResolveHelper;
import org.eclipse.osgi.internal.module.CompositeResolveHelperRegistry;
import org.eclipse.osgi.internal.module.GenericCapability;
import org.eclipse.osgi.internal.module.GenericConstraint;
import org.eclipse.osgi.internal.module.GroupingChecker;
import org.eclipse.osgi.internal.module.MappedList;
import org.eclipse.osgi.internal.module.PermissionChecker;
import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.internal.module.ResolverConstraint;
import org.eclipse.osgi.internal.module.ResolverExport;
import org.eclipse.osgi.internal.module.ResolverImport;
import org.eclipse.osgi.internal.module.VersionHashMap;
import org.eclipse.osgi.internal.module.VersionSupplier;
import org.eclipse.osgi.internal.resolver.BaseDescriptionImpl;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.StateImpl;
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
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateWire;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.hooks.resolver.ResolverHook;
import org.osgi.framework.wiring.BundleCapability;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResolverImpl
implements Resolver {
    private static final String RESOLVER = "org.eclipse.osgi/resolver";
    private static final String OPTION_DEBUG = "org.eclipse.osgi/resolver/debug";
    private static final String OPTION_WIRING = "org.eclipse.osgi/resolver/wiring";
    private static final String OPTION_IMPORTS = "org.eclipse.osgi/resolver/imports";
    private static final String OPTION_REQUIRES = "org.eclipse.osgi/resolver/requires";
    private static final String OPTION_GENERICS = "org.eclipse.osgi/resolver/generics";
    private static final String OPTION_USES = "org.eclipse.osgi/resolver/uses";
    private static final String OPTION_CYCLES = "org.eclipse.osgi/resolver/cycles";
    public static boolean DEBUG = false;
    public static boolean DEBUG_WIRING = false;
    public static boolean DEBUG_IMPORTS = false;
    public static boolean DEBUG_REQUIRES = false;
    public static boolean DEBUG_GENERICS = false;
    public static boolean DEBUG_USES = false;
    public static boolean DEBUG_CYCLES = false;
    private static int MAX_MULTIPLE_SUPPLIERS_MERGE = 10;
    private static int MAX_USES_TIME_BASE = 30000;
    private static int MAX_USES_TIME_LIMIT = 90000;
    static final SecureAction secureAction = AccessController.doPrivileged(SecureAction.createSecureAction());
    private String[][] CURRENT_EES;
    private ResolverHook hook;
    private State state;
    private final PermissionChecker permissionChecker;
    private MappedList<Long, BundleDescription> removalPending = new MappedList();
    private boolean initialized = false;
    private VersionHashMap<ResolverExport> resolverExports = null;
    private VersionHashMap<ResolverBundle> resolverBundles = null;
    private Map<String, VersionHashMap<GenericCapability>> resolverGenerics = null;
    private HashSet<ResolverBundle> unresolvedBundles = null;
    private HashMap<BundleDescription, ResolverBundle> bundleMapping = null;
    private GroupingChecker groupingChecker;
    private Comparator<BaseDescription> selectionPolicy;
    private boolean developmentMode = false;
    private boolean usesCalculationTimeout = false;
    private long usesTimeout = -1L;
    private volatile CompositeResolveHelperRegistry compositeHelpers;

    public ResolverImpl(boolean checkPermissions) {
        this.permissionChecker = new PermissionChecker(checkPermissions, this);
    }

    PermissionChecker getPermissionChecker() {
        return this.permissionChecker;
    }

    private void initialize() {
        this.resolverExports = new VersionHashMap(this);
        this.resolverBundles = new VersionHashMap(this);
        this.resolverGenerics = new HashMap<String, VersionHashMap<GenericCapability>>();
        this.unresolvedBundles = new HashSet();
        this.bundleMapping = new HashMap();
        BundleDescription[] bundles = this.state.getBundles();
        this.groupingChecker = new GroupingChecker();
        ArrayList<ResolverBundle> fragmentBundles = new ArrayList<ResolverBundle>();
        int i = 0;
        while (i < bundles.length) {
            this.initResolverBundle(bundles[i], fragmentBundles, false);
            ++i;
        }
        List<BundleDescription> removedBundles = this.removalPending.getAllValues();
        for (BundleDescription removed : removedBundles) {
            this.initResolverBundle(removed, fragmentBundles, true);
        }
        for (ResolverBundle fragment : fragmentBundles) {
            BundleDescription[] hosts = ((HostSpecification)fragment.getHost().getVersionConstraint()).getHosts();
            int i2 = 0;
            while (i2 < hosts.length) {
                ResolverBundle host = this.bundleMapping.get(hosts[i2]);
                if (host != null) {
                    host.attachFragment(fragment, false);
                }
                ++i2;
            }
        }
        this.rewireBundles();
        this.setDebugOptions();
        this.initialized = true;
    }

    private void initResolverBundle(BundleDescription bundleDesc, ArrayList<ResolverBundle> fragmentBundles, boolean pending) {
        ResolverBundle bundle = new ResolverBundle(bundleDesc, this);
        this.bundleMapping.put(bundleDesc, bundle);
        if (!pending || bundleDesc.isResolved()) {
            this.resolverExports.put(bundle.getExportPackages());
            this.resolverBundles.put(bundle.getName(), bundle);
            this.addGenerics(bundle.getGenericCapabilities());
        }
        if (bundleDesc.isResolved()) {
            bundle.setState(2);
            if (bundleDesc.getHost() != null) {
                fragmentBundles.add(bundle);
            }
        } else if (!pending) {
            this.unresolvedBundles.add(bundle);
        }
    }

    private void rewireBundles() {
        ArrayList<ResolverBundle> visited = new ArrayList<ResolverBundle>(this.bundleMapping.size());
        for (ResolverBundle rb : this.bundleMapping.values()) {
            if (!rb.getBundleDescription().isResolved() || rb.isFragment()) continue;
            this.rewireBundle(rb, visited);
        }
    }

    private void rewireBundle(ResolverBundle rb, List<ResolverBundle> visited) {
        if (visited.contains(rb)) {
            return;
        }
        visited.add(rb);
        BundleConstraint[] requires = rb.getRequires();
        int i = 0;
        while (i < requires.length) {
            this.rewireRequire(requires[i], visited);
            ++i;
        }
        ResolverImport[] imports = rb.getImportPackages();
        int i2 = 0;
        while (i2 < imports.length) {
            this.rewireImport(imports[i2], visited);
            ++i2;
        }
        GenericConstraint[] genericRequires = rb.getGenericRequires();
        int i3 = 0;
        while (i3 < genericRequires.length) {
            this.rewireGeneric(genericRequires[i3], visited);
            ++i3;
        }
    }

    private void rewireGeneric(GenericConstraint constraint, List<ResolverBundle> visited) {
        if (constraint.getSelectedSupplier() != null) {
            return;
        }
        GenericDescription[] suppliers = ((GenericSpecification)constraint.getVersionConstraint()).getSuppliers();
        if (suppliers == null) {
            return;
        }
        VersionHashMap<GenericCapability> namespace = this.resolverGenerics.get(constraint.getNameSpace());
        if (namespace == null) {
            System.err.println(new StringBuffer("Could not find matching capability for ").append(constraint.getVersionConstraint()).toString());
            return;
        }
        String constraintName = constraint.getName();
        List matches = constraintName == null ? namespace.get(constraintName) : namespace.getAllValues();
        for (GenericCapability match : matches) {
            GenericDescription[] genericDescriptionArray = suppliers;
            int n = suppliers.length;
            int n2 = 0;
            while (n2 < n) {
                GenericDescription supplier = genericDescriptionArray[n2];
                if (match.getBaseDescription() == supplier) {
                    constraint.addPossibleSupplier(match);
                }
                ++n2;
            }
        }
        VersionSupplier[] matchingCapabilities = constraint.getPossibleSuppliers();
        if (matchingCapabilities != null) {
            int i = 0;
            while (i < matchingCapabilities.length) {
                this.rewireBundle(matchingCapabilities[i].getResolverBundle(), visited);
                ++i;
            }
        }
    }

    private void rewireRequire(BundleConstraint req, List<ResolverBundle> visited) {
        if (req.getSelectedSupplier() != null) {
            return;
        }
        ResolverBundle matchingBundle = this.bundleMapping.get(req.getVersionConstraint().getSupplier());
        req.addPossibleSupplier(matchingBundle);
        if (matchingBundle == null && !req.isOptional()) {
            System.err.println(new StringBuffer("Could not find matching bundle for ").append(req.getVersionConstraint()).toString());
        }
        if (matchingBundle != null) {
            this.rewireBundle(matchingBundle, visited);
        }
    }

    private void rewireImport(ResolverImport imp, List<ResolverBundle> visited) {
        if (imp.isDynamic() || imp.getSelectedSupplier() != null) {
            return;
        }
        ResolverExport matchingExport = null;
        ExportPackageDescription importSupplier = (ExportPackageDescription)imp.getVersionConstraint().getSupplier();
        ResolverBundle exporter = importSupplier == null ? null : this.bundleMapping.get(importSupplier.getExporter());
        List matches = this.resolverExports.get(imp.getName());
        for (ResolverExport export : matches) {
            if (export.getExporter() != exporter || importSupplier != export.getExportPackageDescription()) continue;
            matchingExport = export;
            break;
        }
        imp.addPossibleSupplier(matchingExport);
        if (imp.getSelectedSupplier() == null && !imp.isOptional()) {
            System.err.println(new StringBuffer("Could not find matching export for ").append(imp.getVersionConstraint()).toString());
        }
        if (imp.getSelectedSupplier() != null) {
            this.rewireBundle(((ResolverExport)imp.getSelectedSupplier()).getExporter(), visited);
        }
    }

    /*
     * Enabled aggressive exception aggregation
     */
    private boolean isResolvable(ResolverBundle bundle, Dictionary<Object, Object>[] platformProperties, Collection<ResolverBundle> hookDisabled) {
        String platformFilter;
        int i;
        boolean matchedEE;
        BundleDescription bundleDesc = bundle.getBundleDescription();
        if (hookDisabled.contains(bundle)) {
            this.state.addResolverError(bundleDesc, 262144, "Resolver hook disabled bundle.", null);
            return false;
        }
        DisabledInfo[] disabledInfos = this.state.getDisabledInfos(bundleDesc);
        if (disabledInfos.length > 0) {
            StringBuffer message = new StringBuffer();
            int i2 = 0;
            while (i2 < disabledInfos.length) {
                if (i2 > 0) {
                    message.append(' ');
                }
                message.append('\"').append(disabledInfos[i2].getPolicyName()).append(':').append(disabledInfos[i2].getMessage()).append('\"');
                ++i2;
            }
            this.state.addResolverError(bundleDesc, 262144, message.toString(), null);
            return false;
        }
        String[] ees = bundleDesc.getExecutionEnvironments();
        boolean bl = matchedEE = ees.length == 0;
        if (!matchedEE) {
            int i3 = 0;
            while (i3 < ees.length && !matchedEE) {
                int j = 0;
                while (j < this.CURRENT_EES.length && !matchedEE) {
                    int k = 0;
                    while (k < this.CURRENT_EES[j].length && !matchedEE) {
                        if (this.CURRENT_EES[j][k].equals(ees[i3])) {
                            ((BundleDescriptionImpl)bundleDesc).setEquinoxEE(j);
                            matchedEE = true;
                        }
                        ++k;
                    }
                    ++j;
                }
                ++i3;
            }
        }
        if (!matchedEE) {
            StringBuffer bundleEE = new StringBuffer("Bundle-RequiredExecutionEnvironment".length() + 20);
            bundleEE.append("Bundle-RequiredExecutionEnvironment").append(": ");
            int i4 = 0;
            while (i4 < ees.length) {
                if (i4 > 0) {
                    bundleEE.append(",");
                }
                bundleEE.append(ees[i4]);
                ++i4;
            }
            this.state.addResolverError(bundleDesc, 16384, bundleEE.toString(), null);
            return false;
        }
        NativeCodeSpecification nativeCode = bundleDesc.getNativeCodeSpecification();
        if (nativeCode != null) {
            NativeCodeDescription[] nativeCodeSuppliers = nativeCode.getPossibleSuppliers();
            NativeCodeDescription highestRanked = null;
            i = 0;
            while (i < nativeCodeSuppliers.length) {
                if (nativeCode.isSatisfiedBy(nativeCodeSuppliers[i]) && (highestRanked == null || highestRanked.compareTo(nativeCodeSuppliers[i]) < 0)) {
                    highestRanked = nativeCodeSuppliers[i];
                }
                ++i;
            }
            if (highestRanked == null) {
                if (!nativeCode.isOptional()) {
                    this.state.addResolverError(bundleDesc, 65536, nativeCode.toString(), nativeCode);
                    return false;
                }
            } else if (highestRanked.hasInvalidNativePaths()) {
                this.state.addResolverError(bundleDesc, 131072, highestRanked.toString(), nativeCode);
                return false;
            }
            this.state.resolveConstraint(nativeCode, highestRanked);
        }
        if ((platformFilter = bundleDesc.getPlatformFilter()) == null) {
            return true;
        }
        if (platformProperties == null) {
            return false;
        }
        try {
            FilterImpl filter = FilterImpl.newInstance(platformFilter);
            i = 0;
            while (i < platformProperties.length) {
                Dictionary<Object, Object> props = platformProperties[i];
                if (filter.matchCase(props)) {
                    return true;
                }
                ++i;
            }
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        this.state.addResolverError(bundleDesc, 8192, platformFilter, null);
        return false;
    }

    private void attachFragment(ResolverBundle bundle, Collection<String> processedFragments) {
        if (processedFragments.contains(bundle.getName())) {
            return;
        }
        processedFragments.add(bundle.getName());
        List fragments = this.resolverBundles.get(bundle.getName());
        for (ResolverBundle fragment : fragments) {
            if (fragment.isResolved()) continue;
            this.attachFragment0(fragment);
        }
    }

    private void attachFragment0(ResolverBundle bundle) {
        if (!bundle.isFragment() || !bundle.isResolvable()) {
            return;
        }
        boolean foundMatch = false;
        BundleConstraint hostConstraint = bundle.getHost();
        List hosts = this.resolverBundles.get(hostConstraint.getVersionConstraint().getName());
        ArrayList candidates = new ArrayList(hosts);
        ArrayList<BundleCapability> hostCapabilities = new ArrayList<BundleCapability>(hosts.size());
        Iterator iCandidates = candidates.iterator();
        while (iCandidates.hasNext()) {
            ResolverBundle host = (ResolverBundle)iCandidates.next();
            if (!(host.isResolvable() && host.getBundleDescription().attachFragments() && hostConstraint.isSatisfiedBy(host))) {
                iCandidates.remove();
                continue;
            }
            List<BundleCapability> h = host.getBundleDescription().getDeclaredCapabilities("osgi.wiring.host");
            hostCapabilities.add(h.get(0));
        }
        if (this.hook != null) {
            this.hook.filterMatches(hostConstraint.getRequirement(), ResolverImpl.asCapabilities(new ArrayMap(hostCapabilities, candidates)));
        }
        for (ResolverBundle host : candidates) {
            foundMatch = true;
            host.attachFragment(bundle, true);
        }
        if (!foundMatch) {
            this.state.addResolverError(bundle.getBundleDescription(), 4, bundle.getHost().getVersionConstraint().toString(), bundle.getHost().getVersionConstraint());
        }
    }

    @Override
    public synchronized void resolve(BundleDescription[] reRefresh, Dictionary<Object, Object>[] platformProperties) {
        if (DEBUG) {
            ResolverImpl.log("*** BEGIN RESOLUTION ***");
        }
        if (this.state == null) {
            throw new IllegalStateException("RESOLVER_NO_STATE");
        }
        if (!this.initialized) {
            this.initialize();
        }
        this.hook = this.state instanceof StateImpl ? ((StateImpl)this.state).getResolverHook() : null;
        try {
            this.developmentMode = platformProperties.length == 0 ? false : "development".equals(platformProperties[0].get("osgi.resolverMode"));
            try {
                Object timeout = platformProperties.length == 0 ? null : platformProperties[0].get("osgi.usesTimeout");
                this.usesTimeout = timeout == null ? -1L : Long.parseLong(timeout.toString());
            }
            catch (NumberFormatException numberFormatException) {
                this.usesTimeout = -1L;
            }
            reRefresh = this.addDevConstraints(reRefresh);
            if (reRefresh != null) {
                int i = 0;
                while (i < reRefresh.length) {
                    ResolverBundle rb = this.bundleMapping.get(reRefresh[i]);
                    if (rb != null) {
                        this.unresolveBundle(rb, false);
                    }
                    ++i;
                }
            }
            this.resolverExports.reorder();
            this.resolverBundles.reorder();
            this.reorderGenerics();
            this.getCurrentEEs(platformProperties);
            boolean resolveOptional = platformProperties.length == 0 ? false : "true".equals(platformProperties[0].get("osgi.resolveOptional"));
            ResolverBundle[] currentlyResolved = null;
            if (resolveOptional) {
                BundleDescription[] resolvedBundles = this.state.getResolvedBundles();
                currentlyResolved = new ResolverBundle[resolvedBundles.length];
                int i = 0;
                while (i < resolvedBundles.length) {
                    currentlyResolved[i] = this.bundleMapping.get(resolvedBundles[i]);
                    ++i;
                }
            }
            ArrayList<ResolverBundle> hookDisabled = Collections.EMPTY_LIST;
            if (this.hook != null) {
                ArrayList<ResolverBundle> resolvableBundles = new ArrayList<ResolverBundle>(this.unresolvedBundles);
                ArrayList<BundleDescription> resolvableRevisions = new ArrayList<BundleDescription>(resolvableBundles.size());
                for (ResolverBundle bundle : resolvableBundles) {
                    resolvableRevisions.add(bundle.getBundleDescription());
                }
                ArrayMap resolvable = new ArrayMap(resolvableRevisions, resolvableBundles);
                int size = resolvableBundles.size();
                this.hook.filterResolvable(resolvable);
                if (resolvable.size() < size) {
                    hookDisabled = new ArrayList<ResolverBundle>(this.unresolvedBundles);
                    hookDisabled.removeAll(resolvableBundles);
                }
            }
            ResolverBundle[] bundles = this.unresolvedBundles.toArray(new ResolverBundle[this.unresolvedBundles.size()]);
            this.usesCalculationTimeout = false;
            this.resolveBundles(bundles, platformProperties, (Collection<ResolverBundle>)hookDisabled);
            this.resolverExports.reorder();
            this.resolverBundles.reorder();
            this.reorderGenerics();
            if (resolveOptional) {
                this.resolveOptionalConstraints(currentlyResolved);
            }
            if (DEBUG) {
                ResolverImpl.log("*** END RESOLUTION ***");
            }
        }
        finally {
            this.hook = null;
        }
    }

    private BundleDescription[] addDevConstraints(BundleDescription[] reRefresh) {
        if (!this.developmentMode) {
            return reRefresh;
        }
        HashSet<BundleDescription> additionalRefresh = new HashSet<BundleDescription>();
        ResolverBundle[] unresolved = this.unresolvedBundles.toArray(new ResolverBundle[this.unresolvedBundles.size()]);
        int i = 0;
        while (i < unresolved.length) {
            this.addUnresolvedWithDependents(unresolved[i], additionalRefresh);
            this.addHostsFromFragmentConstraints(unresolved[i], additionalRefresh);
            ++i;
        }
        if (additionalRefresh.size() == 0) {
            return reRefresh;
        }
        if (reRefresh != null) {
            i = 0;
            while (i < reRefresh.length) {
                additionalRefresh.add(reRefresh[i]);
                ++i;
            }
        }
        return additionalRefresh.toArray(new BundleDescription[additionalRefresh.size()]);
    }

    private void addUnresolvedWithDependents(ResolverBundle unresolved, Set<BundleDescription> additionalRefresh) {
        BundleDescription[] dependents = unresolved.getBundleDescription().getDependents();
        if (dependents.length > 0) {
            additionalRefresh.add(unresolved.getBundleDescription());
        }
    }

    private void addHostsFromFragmentConstraints(ResolverBundle unresolved, Set<BundleDescription> additionalRefresh) {
        if (!unresolved.isFragment()) {
            return;
        }
        ImportPackageSpecification[] newImports = unresolved.getBundleDescription().getImportPackages();
        BundleSpecification[] newRequires = unresolved.getBundleDescription().getRequiredBundles();
        if (newImports.length == 0 && newRequires.length == 0) {
            return;
        }
        BundleConstraint hostConstraint = unresolved.getHost();
        List hosts = this.resolverBundles.get(hostConstraint.getVersionConstraint().getName());
        for (ResolverBundle host : hosts) {
            if (!hostConstraint.isSatisfiedBy(host) || !host.isResolved()) continue;
            additionalRefresh.add(host.getBundleDescription());
        }
    }

    private void resolveOptionalConstraints(ResolverBundle[] bundles) {
        int i = 0;
        while (i < bundles.length) {
            if (bundles[i] != null) {
                this.resolveOptionalConstraints(bundles[i]);
            }
            ++i;
        }
    }

    private void resolveOptionalConstraints(ResolverBundle bundle) {
        BundleConstraint[] requires = bundle.getRequires();
        ArrayList<ResolverBundle> cycle = new ArrayList<ResolverBundle>();
        boolean resolvedOptional = false;
        int i = 0;
        while (i < requires.length) {
            if (requires[i].isOptional() && requires[i].getSelectedSupplier() == null) {
                cycle.clear();
                this.resolveRequire(requires[i], cycle);
                if (requires[i].getSelectedSupplier() != null) {
                    resolvedOptional = true;
                }
            }
            ++i;
        }
        ResolverImport[] imports = bundle.getImportPackages();
        int i2 = 0;
        while (i2 < imports.length) {
            if (imports[i2].isOptional() && imports[i2].getSelectedSupplier() == null) {
                cycle.clear();
                this.resolveImport(imports[i2], cycle);
                if (imports[i2].getSelectedSupplier() != null) {
                    resolvedOptional = true;
                }
            }
            ++i2;
        }
        if (resolvedOptional) {
            this.state.resolveBundle(bundle.getBundleDescription(), false, null, null, null, null, null, null, null, null);
            this.stateResolveConstraints(bundle);
            this.stateResolveBundle(bundle);
        }
    }

    private void getCurrentEEs(Dictionary<Object, Object>[] platformProperties) {
        this.CURRENT_EES = new String[platformProperties.length][];
        int i = 0;
        while (i < platformProperties.length) {
            String eeSpecs = (String)platformProperties[i].get("org.osgi.framework.executionenvironment");
            this.CURRENT_EES[i] = ManifestElement.getArrayFromList(eeSpecs, ",");
            ++i;
        }
    }

    private void resolveBundles(ResolverBundle[] bundles, Dictionary<Object, Object>[] platformProperties, Collection<ResolverBundle> hookDisabled) {
        ResolverBundle[] resolverBundleArray = bundles;
        int n = bundles.length;
        int n2 = 0;
        while (n2 < n) {
            ResolverBundle bundle = resolverBundleArray[n2];
            this.state.removeResolverErrors(bundle.getBundleDescription());
            bundle.setResolvable(this.isResolvable(bundle, platformProperties, hookDisabled) || this.developmentMode);
            ++n2;
        }
        this.selectSingletons(bundles);
        this.resolveBundles0(bundles, platformProperties);
        if (DEBUG_WIRING) {
            this.printWirings();
        }
        this.stateResolveBundles(bundles);
    }

    private void selectSingletons(ResolverBundle[] bundles) {
        if (this.developmentMode) {
            return;
        }
        HashMap selectedSingletons = new HashMap(bundles.length);
        ResolverBundle[] resolverBundleArray = bundles;
        int n = bundles.length;
        int n2 = 0;
        while (n2 < n) {
            String bsn;
            ArrayList<ResolverBundle> selected;
            ResolverBundle bundle = resolverBundleArray[n2];
            if (bundle.getBundleDescription().isSingleton() && bundle.isResolvable() && (selected = (ArrayList<ResolverBundle>)selectedSingletons.get(bsn = bundle.getName())) == null) {
                selected = new ArrayList<ResolverBundle>(1);
                selectedSingletons.put(bsn, selected);
                List<ResolverBundle> sameBSN = this.resolverBundles.get(bsn);
                if (sameBSN.size() < 2) {
                    selected.add(bundle);
                } else {
                    for (ResolverBundle singleton : sameBSN) {
                        if (!singleton.getBundleDescription().isSingleton() || !singleton.getBundleDescription().isResolved()) continue;
                        selected.add(singleton);
                    }
                    Map<ResolverBundle, Collection<ResolverBundle>> collisionMap = this.getCollisionMap(sameBSN);
                    for (ResolverBundle singleton : sameBSN) {
                        Collection<ResolverBundle> collisions;
                        if (selected.contains(singleton) || (collisions = collisionMap.get(singleton)) == null || !singleton.isResolvable()) continue;
                        ArrayList<ResolverBundle> pickOneToResolve = new ArrayList<ResolverBundle>();
                        for (ResolverBundle resolverBundle : collisions) {
                            if (selected.contains(resolverBundle)) {
                                singleton.setResolvable(false);
                                this.state.addResolverError(singleton.getBundleDescription(), 8, resolverBundle.getBundleDescription().toString(), null);
                                break;
                            }
                            if (pickOneToResolve.contains(resolverBundle)) continue;
                            pickOneToResolve.add(resolverBundle);
                        }
                        for (Map.Entry entry : collisionMap.entrySet()) {
                            if (entry.getKey() == singleton || !((Collection)entry.getValue()).contains(singleton)) continue;
                            if (selected.contains(entry.getKey())) {
                                singleton.setResolvable(false);
                                this.state.addResolverError(singleton.getBundleDescription(), 8, ((ResolverBundle)entry.getKey()).getBundleDescription().toString(), null);
                                break;
                            }
                            if (pickOneToResolve.contains(entry.getKey())) continue;
                            pickOneToResolve.add((ResolverBundle)entry.getKey());
                        }
                        if (!singleton.isResolvable()) continue;
                        pickOneToResolve.add(singleton);
                        selected.add(this.pickOneToResolve(pickOneToResolve));
                    }
                }
            }
            ++n2;
        }
    }

    private ResolverBundle pickOneToResolve(Collection<ResolverBundle> pickOneToResolve) {
        ResolverBundle selectedVersion = null;
        for (ResolverBundle singleton : pickOneToResolve) {
            boolean higherVersion;
            if (selectedVersion == null) {
                selectedVersion = singleton;
            }
            boolean bl = this.selectionPolicy != null ? this.selectionPolicy.compare(selectedVersion.getBundleDescription(), singleton.getBundleDescription()) > 0 : (higherVersion = selectedVersion.getVersion().compareTo(singleton.getVersion()) < 0);
            if (!higherVersion) continue;
            selectedVersion = singleton;
        }
        for (ResolverBundle singleton : pickOneToResolve) {
            if (singleton == selectedVersion) continue;
            singleton.setResolvable(false);
            this.state.addResolverError(singleton.getBundleDescription(), 8, selectedVersion.getBundleDescription().toString(), null);
        }
        return selectedVersion;
    }

    private Map<ResolverBundle, Collection<ResolverBundle>> getCollisionMap(List<ResolverBundle> sameBSN) {
        HashMap<ResolverBundle, Collection<ResolverBundle>> result = new HashMap<ResolverBundle, Collection<ResolverBundle>>();
        for (ResolverBundle singleton : sameBSN) {
            if (!singleton.getBundleDescription().isSingleton() || !singleton.isResolvable()) continue;
            ArrayList<ResolverBundle> collisionCandidates = new ArrayList<ResolverBundle>(sameBSN.size() - 1);
            ArrayList<BundleCapability> capabilities = new ArrayList<BundleCapability>(sameBSN.size() - 1);
            for (ResolverBundle collision : sameBSN) {
                if (collision == singleton || !collision.getBundleDescription().isSingleton() || !collision.isResolvable()) continue;
                collisionCandidates.add(collision);
                capabilities.add(collision.getCapability());
            }
            if (this.hook != null) {
                this.hook.filterSingletonCollisions(singleton.getCapability(), ResolverImpl.asCapabilities(new ArrayMap(capabilities, collisionCandidates)));
            }
            result.put(singleton, collisionCandidates);
        }
        return result;
    }

    private void resolveBundles0(ResolverBundle[] bundles, Dictionary<Object, Object>[] platformProperties) {
        if (this.developmentMode) {
            Arrays.sort(bundles);
        }
        HashSet<String> processedFragments = new HashSet<String>(bundles.length);
        int i = 0;
        while (i < bundles.length) {
            this.attachFragment(bundles[i], processedFragments);
            ++i;
        }
        ArrayList<ResolverBundle> cycle = new ArrayList<ResolverBundle>(1);
        int i2 = 0;
        while (i2 < bundles.length) {
            if (DEBUG) {
                ResolverImpl.log(new StringBuffer("** RESOLVING ").append(bundles[i2]).append(" **").toString());
            }
            cycle.clear();
            this.resolveBundle(bundles[i2], cycle);
            this.checkCycle(cycle);
            ++i2;
        }
        if (this.unresolvedBundles.size() > 0) {
            ResolverBundle[] unresolved = this.unresolvedBundles.toArray(new ResolverBundle[this.unresolvedBundles.size()]);
            int i3 = 0;
            while (i3 < unresolved.length) {
                this.resolveFragment(unresolved[i3]);
                ++i3;
            }
        }
        this.checkUsesConstraints(bundles, platformProperties);
        this.checkComposites(bundles, platformProperties);
    }

    private void checkComposites(ResolverBundle[] bundles, Dictionary<Object, Object>[] platformProperties) {
        CompositeResolveHelperRegistry helpers = this.getCompositeHelpers();
        if (helpers == null) {
            return;
        }
        HashSet<ResolverBundle> exclude = null;
        int i = 0;
        while (i < bundles.length) {
            CompositeResolveHelper helper = helpers.getCompositeResolveHelper(bundles[i].getBundleDescription());
            if (helper != null && bundles[i].isResolved() && !helper.giveExports(ResolverImpl.getExportsWiredTo(bundles[i], null))) {
                this.state.addResolverError(bundles[i].getBundleDescription(), 262144, null, null);
                bundles[i].setResolvable(false);
                this.setBundleUnresolved(bundles[i], false, false);
                if (exclude == null) {
                    exclude = new HashSet<ResolverBundle>(1);
                }
                exclude.add(bundles[i]);
            }
            ++i;
        }
        this.reResolveBundles(exclude, bundles, platformProperties);
    }

    private void checkUsesConstraints(ResolverBundle[] bundles, Dictionary<Object, Object>[] platformProperties) {
        List<ResolverConstraint> conflictingConstraints = this.findBestCombination(bundles, platformProperties);
        if (conflictingConstraints == null) {
            return;
        }
        HashSet<ResolverBundle> conflictedBundles = null;
        for (ResolverConstraint conflict : conflictingConstraints) {
            ResolverBundle conflictedBundle;
            if (conflict.isOptional()) {
                conflict.clearPossibleSuppliers();
                continue;
            }
            if (conflictedBundles == null) {
                conflictedBundles = new HashSet<ResolverBundle>(conflictingConstraints.size());
            }
            if ((conflictedBundle = conflict.isFromFragment() ? this.bundleMapping.get(conflict.getVersionConstraint().getBundle()) : conflict.getBundle()) == null) continue;
            if (DEBUG_USES) {
                System.out.println(new StringBuffer("Found conflicting constraint: ").append(conflict).append(" in bundle ").append(conflictedBundle).toString());
            }
            conflictedBundles.add(conflictedBundle);
            int type = conflict instanceof ResolverImport ? 32 : 64;
            this.state.addResolverError(conflictedBundle.getBundleDescription(), type, conflict.getVersionConstraint().toString(), conflict.getVersionConstraint());
            conflictedBundle.setResolvable(false);
            this.setBundleUnresolved(conflictedBundle, false, false);
        }
        this.reResolveBundles(conflictedBundles, bundles, platformProperties);
    }

    private void reResolveBundles(Set<ResolverBundle> exclude, ResolverBundle[] bundles, Dictionary<Object, Object>[] platformProperties) {
        if (exclude == null || exclude.size() == 0) {
            return;
        }
        ArrayList<ResolverBundle> remainingUnresolved = new ArrayList<ResolverBundle>();
        int i = 0;
        while (i < bundles.length) {
            if (!exclude.contains(bundles[i])) {
                this.setBundleUnresolved(bundles[i], false, false);
                remainingUnresolved.add(bundles[i]);
            }
            ++i;
        }
        this.resolveBundles0(remainingUnresolved.toArray(new ResolverBundle[remainingUnresolved.size()]), platformProperties);
    }

    private List<ResolverConstraint> findBestCombination(ResolverBundle[] bundles, Dictionary<Object, Object>[] platformProperties) {
        Object usesMode;
        Object object = usesMode = platformProperties.length == 0 ? null : platformProperties[0].get("osgi.resolver.usesMode");
        if (usesMode == null) {
            usesMode = secureAction.getProperty("osgi.resolver.usesMode");
        }
        if ("ignore".equals(usesMode) || this.developmentMode) {
            return null;
        }
        HashSet<String> packageConstraints = new HashSet<String>();
        HashSet<String> bundleConstraints = new HashSet<String>();
        List<ResolverConstraint> initialConflicts = this.getConflicts(bundles, packageConstraints, bundleConstraints);
        if (initialConflicts == null || "tryFirst".equals(usesMode) || this.usesCalculationTimeout) {
            this.groupingChecker.clear();
            return initialConflicts;
        }
        ResolverConstraint[][] multipleSuppliers = this.getMultipleSuppliers(bundles, packageConstraints, bundleConstraints);
        List<ResolverConstraint> conflicts = null;
        int[] bestCombination = new int[multipleSuppliers.length];
        conflicts = this.findBestCombination(bundles, multipleSuppliers, bestCombination, initialConflicts);
        if (DEBUG_USES) {
            System.out.print("Best combination found: ");
            this.printCombination(bestCombination);
        }
        int i = 0;
        while (i < bestCombination.length) {
            int j = 0;
            while (j < multipleSuppliers[i].length) {
                multipleSuppliers[i][j].setSelectedSupplier(bestCombination[i]);
                ++j;
            }
            ++i;
        }
        this.groupingChecker.clear();
        return conflicts;
    }

    private int[] getCombination(ResolverConstraint[][] multipleSuppliers, int[] combination) {
        int i = 0;
        while (i < combination.length) {
            combination[i] = multipleSuppliers[i][0].getSelectedSupplierIndex();
            ++i;
        }
        return combination;
    }

    private List<ResolverConstraint> findBestCombination(ResolverBundle[] bundles, ResolverConstraint[][] multipleSuppliers, int[] bestCombination, List<ResolverConstraint> bestConflicts) {
        long initialTime = System.currentTimeMillis();
        long timeLimit = this.usesTimeout < 0L ? (long)Math.min(MAX_USES_TIME_BASE + bundles.length * 30, MAX_USES_TIME_LIMIT) : (this.usesTimeout == 0L ? Long.MAX_VALUE : this.usesTimeout);
        int bestConflictCount = this.getConflictCount(bestConflicts);
        ResolverBundle[] bestConflictBundles = this.getConflictedBundles(bestConflicts);
        while (bestConflictCount != 0 && this.getNextCombination(multipleSuppliers)) {
            List<ResolverConstraint> conflicts;
            int conflictCount;
            if (System.currentTimeMillis() - initialTime > timeLimit) {
                if (DEBUG_USES) {
                    System.out.println("Uses constraint check has timedout.  Using the best solution found so far.");
                }
                this.usesCalculationTimeout = true;
                break;
            }
            if (DEBUG_USES) {
                this.printCombination(this.getCombination(multipleSuppliers, new int[multipleSuppliers.length]));
            }
            if ((conflictCount = this.getConflictCount(conflicts = this.getConflicts(bestConflictBundles, null, null))) >= bestConflictCount) {
                if (!DEBUG_USES) continue;
                System.out.println(new StringBuffer("Combination is not better that current best: ").append(conflictCount).append(">=").append(bestConflictCount).toString());
                continue;
            }
            conflicts = this.getConflicts(bundles, null, null);
            conflictCount = this.getConflictCount(conflicts);
            if (conflictCount < bestConflictCount) {
                bestConflictCount = conflictCount;
                bestConflicts = conflicts;
                this.getCombination(multipleSuppliers, bestCombination);
                bestConflictBundles = this.getConflictedBundles(bestConflicts);
                if (!DEBUG_USES) continue;
                System.out.println(new StringBuffer("Combination selected as current best: number of conflicts: ").append(bestConflictCount).toString());
                continue;
            }
            if (!DEBUG_USES) continue;
            System.out.println(new StringBuffer("Combination is not better that current best: ").append(conflictCount).append(">=").append(bestConflictCount).toString());
        }
        return bestConflicts;
    }

    private void printCombination(int[] curCombination) {
        StringBuffer sb = new StringBuffer();
        sb.append('[');
        int i = 0;
        while (i < curCombination.length) {
            sb.append(curCombination[i]);
            if (i < curCombination.length - 1) {
                sb.append(',');
            }
            ++i;
        }
        sb.append(']');
        System.out.println(sb.toString());
    }

    private ResolverBundle[] getConflictedBundles(List<ResolverConstraint> bestConflicts) {
        if (bestConflicts == null) {
            return new ResolverBundle[0];
        }
        ArrayList<ResolverBundle> conflictedBundles = new ArrayList<ResolverBundle>(bestConflicts.size());
        for (ResolverConstraint constraint : bestConflicts) {
            if (conflictedBundles.contains(constraint.getBundle())) continue;
            conflictedBundles.add(constraint.getBundle());
        }
        return conflictedBundles.toArray(new ResolverBundle[conflictedBundles.size()]);
    }

    private boolean getNextCombination(ResolverConstraint[][] multipleSuppliers) {
        int current = 0;
        while (current < multipleSuppliers.length) {
            int i;
            if (multipleSuppliers[current][0].selectNextSupplier()) {
                i = 1;
                while (i < multipleSuppliers[current].length) {
                    multipleSuppliers[current][i].selectNextSupplier();
                    ++i;
                }
                return true;
            }
            i = 0;
            while (i < multipleSuppliers[current].length) {
                multipleSuppliers[current][i].setSelectedSupplier(0);
                ++i;
            }
            ++current;
        }
        return false;
    }

    private int getConflictCount(List<ResolverConstraint> conflicts) {
        if (conflicts == null || conflicts.size() == 0) {
            return 0;
        }
        int result = 0;
        for (ResolverConstraint constraint : conflicts) {
            if (constraint.isOptional()) continue;
            ++result;
        }
        return result;
    }

    private List<ResolverConstraint> getConflicts(ResolverBundle[] bundles, Set<String> packageConstraints, Set<String> bundleConstraints) {
        this.groupingChecker.clear();
        List<ResolverConstraint> conflicts = null;
        int i = 0;
        while (i < bundles.length) {
            conflicts = this.addConflicts(bundles[i], packageConstraints, bundleConstraints, conflicts);
            ++i;
        }
        return conflicts;
    }

    private List<ResolverConstraint> addConflicts(ResolverBundle bundle, Set<String> packageConstraints, Set<String> bundleConstraints, List<ResolverConstraint> conflicts) {
        GenericConstraint[] genericRequires;
        BundleConstraint[] requires = bundle.getRequires();
        int i = 0;
        while (i < requires.length) {
            GroupingChecker.PackageRoots[][] conflict;
            ResolverBundle selectedSupplier = (ResolverBundle)requires[i].getSelectedSupplier();
            GroupingChecker.PackageRoots[][] packageRootsArray = conflict = selectedSupplier == null ? null : this.groupingChecker.isConsistent(bundle, selectedSupplier);
            if (conflict != null) {
                this.addConflictNames(conflict, packageConstraints, bundleConstraints);
                if (conflicts == null) {
                    conflicts = new ArrayList<ResolverConstraint>(1);
                }
                conflicts.add(requires[i]);
            }
            ++i;
        }
        ResolverImport[] imports = bundle.getImportPackages();
        int i2 = 0;
        while (i2 < imports.length) {
            GroupingChecker.PackageRoots[][] conflict;
            ResolverExport selectedSupplier = (ResolverExport)imports[i2].getSelectedSupplier();
            GroupingChecker.PackageRoots[][] packageRootsArray = conflict = selectedSupplier == null ? null : this.groupingChecker.isConsistent(bundle, selectedSupplier);
            if (conflict != null) {
                this.addConflictNames(conflict, packageConstraints, bundleConstraints);
                if (conflicts == null) {
                    conflicts = new ArrayList<ResolverConstraint>(1);
                }
                conflicts.add(imports[i2]);
            }
            ++i2;
        }
        GenericConstraint[] genericConstraintArray = genericRequires = bundle.getGenericRequires();
        int n = genericRequires.length;
        int n2 = 0;
        while (n2 < n) {
            GenericConstraint capabilityRequirement = genericConstraintArray[n2];
            VersionSupplier[] suppliers = capabilityRequirement.getMatchingCapabilities();
            if (suppliers != null) {
                VersionSupplier[] versionSupplierArray = suppliers;
                int n3 = suppliers.length;
                int n4 = 0;
                while (n4 < n3) {
                    VersionSupplier supplier = versionSupplierArray[n4];
                    GroupingChecker.PackageRoots[][] conflict = this.groupingChecker.isConsistent(bundle, (GenericCapability)supplier);
                    if (conflict != null) {
                        this.addConflictNames(conflict, packageConstraints, bundleConstraints);
                        if (conflicts == null) {
                            conflicts = new ArrayList<ResolverConstraint>(1);
                        }
                        conflicts.add(capabilityRequirement);
                    }
                    ++n4;
                }
            }
            ++n2;
        }
        return conflicts;
    }

    private void addConflictNames(GroupingChecker.PackageRoots[][] conflict, Set<String> packageConstraints, Set<String> bundleConstraints) {
        if (packageConstraints == null || bundleConstraints == null) {
            return;
        }
        int i = 0;
        while (i < conflict.length) {
            ResolverExport[] exports1;
            packageConstraints.add(conflict[i][0].getName());
            packageConstraints.add(conflict[i][1].getName());
            ResolverExport[] exports0 = conflict[i][0].getRoots();
            if (exports0 != null) {
                int j = 0;
                while (j < exports0.length) {
                    ResolverBundle exporter = exports0[j].getExporter();
                    if (exporter != null && exporter.getName() != null) {
                        bundleConstraints.add(exporter.getName());
                    }
                    ++j;
                }
            }
            if ((exports1 = conflict[i][1].getRoots()) != null) {
                int j = 0;
                while (j < exports1.length) {
                    ResolverBundle exporter = exports1[j].getExporter();
                    if (exporter != null && exporter.getName() != null) {
                        bundleConstraints.add(exporter.getName());
                    }
                    ++j;
                }
            }
            ++i;
        }
    }

    /*
     * WARNING - void declaration
     */
    private ResolverConstraint[][] getMultipleSuppliers(ResolverBundle[] bundles, Set<String> packageConstraints, Set<String> bundleConstraints) {
        ArrayList<Object> results;
        block20: {
            ArrayList<GenericConstraint> multipleGenericSupplierList;
            ArrayList<BundleConstraint> multipleRequireSupplierList;
            ArrayList<ResolverImport> multipleImportSupplierList;
            block19: {
                void var8_13;
                multipleImportSupplierList = new ArrayList<ResolverImport>(1);
                multipleRequireSupplierList = new ArrayList<BundleConstraint>(1);
                multipleGenericSupplierList = new ArrayList<GenericConstraint>(1);
                ResolverBundle[] resolverBundleArray = bundles;
                int n = bundles.length;
                boolean n2 = false;
                while (var8_13 < n) {
                    GenericConstraint[] genericRequires;
                    ResolverBundle bundle = resolverBundleArray[var8_13];
                    BundleConstraint[] requires = bundle.getRequires();
                    BundleConstraint[] bundleConstraintArray = requires;
                    int n3 = requires.length;
                    int n4 = 0;
                    while (n4 < n3) {
                        BundleConstraint require = bundleConstraintArray[n4];
                        if (require.getNumPossibleSuppliers() > 1) {
                            multipleRequireSupplierList.add(require);
                        }
                        ++n4;
                    }
                    ResolverImport[] imports = bundle.getImportPackages();
                    ResolverImport[] resolverImportArray = imports;
                    int bundleConstraintArray2 = imports.length;
                    n3 = 0;
                    while (n3 < bundleConstraintArray2) {
                        ResolverImport importPkg = resolverImportArray[n3];
                        if (importPkg.getNumPossibleSuppliers() > 1) {
                            Integer eeProfile = (Integer)((ResolverExport)importPkg.getSelectedSupplier()).getExportPackageDescription().getDirective("x-equinox-ee");
                            if (eeProfile < 0) {
                                multipleImportSupplierList.add(importPkg);
                            } else {
                                VersionSupplier[] suppliers = importPkg.getPossibleSuppliers();
                                int suppliersIndex = 1;
                                while (suppliersIndex < suppliers.length) {
                                    Integer ee = (Integer)((ResolverExport)suppliers[suppliersIndex]).getExportPackageDescription().getDirective("x-equinox-ee");
                                    if (ee < 0 && ((ResolverExport)suppliers[suppliersIndex]).getExporter().getRequire(this.getSystemBundle()) == null && ((ResolverExport)suppliers[suppliersIndex]).getExporter().getRequire("system.bundle") == null) {
                                        multipleImportSupplierList.add(importPkg);
                                        break;
                                    }
                                    ++suppliersIndex;
                                }
                            }
                        }
                        ++n3;
                    }
                    GenericConstraint[] genericConstraintArray = genericRequires = bundle.getGenericRequires();
                    int resolverImportArray2 = genericRequires.length;
                    bundleConstraintArray2 = 0;
                    while (bundleConstraintArray2 < resolverImportArray2) {
                        GenericConstraint genericRequire = genericConstraintArray[bundleConstraintArray2];
                        if (genericRequire.getNumPossibleSuppliers() > 1 && genericRequire.supplierHasUses()) {
                            multipleGenericSupplierList.add(genericRequire);
                        }
                        ++bundleConstraintArray2;
                    }
                    ++var8_13;
                }
                results = new ArrayList<ResolverConstraint[]>();
                if (multipleImportSupplierList.size() + multipleRequireSupplierList.size() + multipleGenericSupplierList.size() <= MAX_MULTIPLE_SUPPLIERS_MERGE) break block19;
                HashMap<String, List<List<ResolverConstraint>>> hashMap = new HashMap<String, List<List<ResolverConstraint>>>();
                for (ResolverImport importPkg : multipleImportSupplierList) {
                    this.addMutipleSupplierConstraint(hashMap, importPkg, importPkg.getName());
                }
                HashMap<String, List<List<ResolverConstraint>>> multipleRequireSupplierMaps = new HashMap<String, List<List<ResolverConstraint>>>();
                for (BundleConstraint requireBundle : multipleRequireSupplierList) {
                    this.addMutipleSupplierConstraint(multipleRequireSupplierMaps, requireBundle, requireBundle.getName());
                }
                HashMap<String, List<List<ResolverConstraint>>> multipleGenericSupplierMaps = new HashMap<String, List<List<ResolverConstraint>>>();
                for (GenericConstraint genericRequire : multipleGenericSupplierList) {
                    this.addMutipleSupplierConstraint(multipleGenericSupplierMaps, genericRequire, genericRequire.getNameSpace());
                }
                this.addMergedSuppliers(results, hashMap);
                this.addMergedSuppliers(results, multipleRequireSupplierMaps);
                this.addMergedSuppliers(results, multipleGenericSupplierMaps);
                if (results.size() <= MAX_MULTIPLE_SUPPLIERS_MERGE || packageConstraints == null || bundleConstraints == null) break block20;
                ArrayList<ResolverConstraint[]> tooBig = results;
                results = new ArrayList();
                for (ResolverConstraint[] constraints : tooBig) {
                    ResolverConstraint constraint;
                    ResolverConstraint resolverConstraint = constraint = constraints.length > 0 ? constraints[0] : null;
                    if (constraint instanceof ResolverImport) {
                        if (!packageConstraints.contains(constraint.getName())) continue;
                        results.add(constraints);
                        continue;
                    }
                    if (!(constraint instanceof BundleConstraint) || !bundleConstraints.contains(constraint.getName())) continue;
                    results.add(constraints);
                }
                break block20;
            }
            for (ResolverConstraint resolverConstraint : multipleImportSupplierList) {
                results.add(new ResolverConstraint[]{resolverConstraint});
            }
            for (ResolverConstraint resolverConstraint : multipleRequireSupplierList) {
                results.add(new ResolverConstraint[]{resolverConstraint});
            }
            for (ResolverConstraint resolverConstraint : multipleGenericSupplierList) {
                results.add(new ResolverConstraint[]{resolverConstraint});
            }
        }
        return (ResolverConstraint[][])results.toArray((T[])new ResolverConstraint[results.size()][]);
    }

    String getSystemBundle() {
        String systemBundle;
        Dictionary[] platformProperties = this.state.getPlatformProperties();
        String string = systemBundle = platformProperties.length == 0 ? null : (String)platformProperties[0].get("osgi.system.bundle");
        if (systemBundle == null) {
            systemBundle = Constants.getInternalSymbolicName();
        }
        return systemBundle;
    }

    private void addMergedSuppliers(List<ResolverConstraint[]> mergedSuppliers, Map<String, List<List<ResolverConstraint>>> constraints) {
        for (List<List<ResolverConstraint>> mergedConstraintLists : constraints.values()) {
            for (List<ResolverConstraint> constraintList : mergedConstraintLists) {
                mergedSuppliers.add(constraintList.toArray(new ResolverConstraint[constraintList.size()]));
            }
        }
    }

    private void addMutipleSupplierConstraint(Map<String, List<List<ResolverConstraint>>> constraints, ResolverConstraint constraint, String key) {
        List<ResolverConstraint> constraintList3;
        List<List<ResolverConstraint>> mergedConstraintLists = constraints.get(key);
        if (mergedConstraintLists == null) {
            mergedConstraintLists = new ArrayList<List<ResolverConstraint>>(0);
            ArrayList<ResolverConstraint> constraintList2 = new ArrayList<ResolverConstraint>(1);
            constraintList2.add(constraint);
            mergedConstraintLists.add(constraintList2);
            constraints.put(key, mergedConstraintLists);
            return;
        }
        for (List<ResolverConstraint> constraintList3 : mergedConstraintLists) {
            VersionSupplier[] suppliers2;
            ResolverConstraint mergedConstraint = constraintList3.get(0);
            VersionSupplier[] suppliers1 = constraint.getPossibleSuppliers();
            if (suppliers1.length != (suppliers2 = mergedConstraint.getPossibleSuppliers()).length) continue;
            int i = 0;
            while (i < suppliers1.length) {
                if (suppliers1[i] != suppliers2[i]) {
                    // empty if block
                }
                ++i;
            }
            constraintList3.add(constraint);
            return;
        }
        constraintList3 = new ArrayList<ResolverConstraint>(1);
        constraintList3.add(constraint);
        mergedConstraintLists.add(constraintList3);
    }

    /*
     * Unable to fully structure code
     */
    private void checkCycle(List<ResolverBundle> cycle) {
        cycleSize = cycle.size();
        if (cycleSize == 0) {
            return;
        }
        iCycle = cycle.iterator();
        while (iCycle.hasNext()) {
            block12: {
                cycleBundle = iCycle.next();
                if (!cycleBundle.isResolvable()) {
                    iCycle.remove();
                    continue;
                }
                imports = cycleBundle.getImportPackages();
                j = 0;
                break block12;
                while ((importSupplier = (ResolverExport)imports[j].getSelectedSupplier()).getSubstitute() != null) {
                    imports[j].selectNextSupplier();
lbl16:
                    // 2 sources

                    ** while (imports[j].getSelectedSupplier() == null)
lbl17:
                    // 1 sources

                }
lbl18:
                // 2 sources

                if (!imports[j].isDynamic() && !imports[j].isOptional() && imports[j].getSelectedSupplier() == null) {
                    cycleBundle.setResolvable(false);
                    this.state.addResolverError(imports[j].getVersionConstraint().getBundle(), 1, imports[j].getVersionConstraint().toString(), imports[j].getVersionConstraint());
                    iCycle.remove();
                    continue;
                }
                ++j;
            }
            if (j < imports.length) ** GOTO lbl16
        }
        if (cycle.size() != cycleSize) {
            i = 0;
            while (i < cycle.size()) {
                cycleBundle = cycle.get(i);
                cycleBundle.clearWires();
                ++i;
            }
            innerCycle = new ArrayList<ResolverBundle>(cycle.size());
            i = 0;
            while (i < cycle.size()) {
                this.resolveBundle(cycle.get(i), innerCycle);
                ++i;
            }
            this.checkCycle(innerCycle);
        } else {
            i = 0;
            while (i < cycle.size()) {
                if (ResolverImpl.DEBUG || ResolverImpl.DEBUG_CYCLES) {
                    ResolverImpl.log(new StringBuffer("Pushing ").append(cycle.get(i)).append(" to RESOLVED").toString());
                }
                this.setBundleResolved(cycle.get(i));
                ++i;
            }
        }
    }

    static Collection<BundleCapability> asCapabilities(Collection<? extends BundleCapability> capabilities) {
        return capabilities;
    }

    private void resolveFragment(ResolverBundle fragment) {
        if (!fragment.isFragment()) {
            return;
        }
        if (!(fragment.getHost().getNumPossibleSuppliers() <= 0 || this.developmentMode && this.state.getResolverErrors(fragment.getBundleDescription()).length != 0)) {
            this.setBundleResolved(fragment);
        }
    }

    private boolean resolveBundle(ResolverBundle bundle, List<ResolverBundle> cycle) {
        int i;
        if (bundle.isFragment()) {
            return false;
        }
        if (!bundle.isResolvable()) {
            if (DEBUG) {
                ResolverImpl.log(new StringBuffer("  - ").append(bundle).append(" is unresolvable").toString());
            }
            return false;
        }
        switch (bundle.getState()) {
            case 2: {
                if (DEBUG) {
                    ResolverImpl.log(new StringBuffer("  - ").append(bundle).append(" already resolved").toString());
                }
                return true;
            }
            case 0: {
                bundle.clearWires();
                this.setBundleResolving(bundle);
                break;
            }
            case 1: {
                if (!cycle.contains(bundle)) break;
                return true;
            }
        }
        boolean failed = false;
        if (!failed) {
            GenericConstraint[] genericRequires = bundle.getGenericRequires();
            i = 0;
            while (i < genericRequires.length) {
                if (!this.resolveGenericReq(genericRequires[i], cycle)) {
                    if (DEBUG || DEBUG_GENERICS) {
                        ResolverImpl.log(new StringBuffer("** GENERICS ").append(genericRequires[i].getVersionConstraint().getName()).append("[").append(genericRequires[i].getBundleDescription()).append("] failed to resolve").toString());
                    }
                    this.state.addResolverError(genericRequires[i].getVersionConstraint().getBundle(), 32768, genericRequires[i].getVersionConstraint().toString(), genericRequires[i].getVersionConstraint());
                    if (genericRequires[i].isFromFragment()) {
                        if (!this.developmentMode) {
                            bundle.detachFragment(this.bundleMapping.get(genericRequires[i].getVersionConstraint().getBundle()), null);
                        }
                    } else if (!this.developmentMode) {
                        failed = true;
                        break;
                    }
                }
                ++i;
            }
        }
        if (!failed) {
            BundleConstraint[] requires = bundle.getRequires();
            i = 0;
            while (i < requires.length) {
                if (!this.resolveRequire(requires[i], cycle)) {
                    if (DEBUG || DEBUG_REQUIRES) {
                        ResolverImpl.log(new StringBuffer("** REQUIRE ").append(requires[i].getVersionConstraint().getName()).append("[").append(requires[i].getBundleDescription()).append("] failed to resolve").toString());
                    }
                    this.state.addResolverError(requires[i].getVersionConstraint().getBundle(), 2, requires[i].getVersionConstraint().toString(), requires[i].getVersionConstraint());
                    if (requires[i].isFromFragment()) {
                        if (!this.developmentMode) {
                            bundle.detachFragment(this.bundleMapping.get(requires[i].getVersionConstraint().getBundle()), requires[i]);
                        }
                    } else if (!this.developmentMode) {
                        failed = true;
                        break;
                    }
                }
                ++i;
            }
        }
        if (!failed) {
            ResolverImport[] imports = bundle.getImportPackages();
            i = 0;
            while (i < imports.length) {
                if (!imports[i].isDynamic() && !this.resolveImport(imports[i], cycle)) {
                    if (DEBUG || DEBUG_IMPORTS) {
                        ResolverImpl.log(new StringBuffer("** IMPORT ").append(imports[i].getName()).append("[").append(imports[i].getBundleDescription()).append("] failed to resolve").toString());
                    }
                    this.state.addResolverError(imports[i].getVersionConstraint().getBundle(), 1, imports[i].getVersionConstraint().toString(), imports[i].getVersionConstraint());
                    if (imports[i].isFromFragment()) {
                        if (!this.developmentMode) {
                            bundle.detachFragment(this.bundleMapping.get(imports[i].getVersionConstraint().getBundle()), imports[i]);
                        }
                    } else if (!this.developmentMode) {
                        failed = true;
                        break;
                    }
                }
                ++i;
            }
        }
        this.checkFragmentConstraints(bundle);
        if (this.developmentMode && !failed && this.state.getResolverErrors(bundle.getBundleDescription()).length > 0) {
            failed = true;
        }
        if (failed) {
            this.setBundleUnresolved(bundle, false, this.developmentMode);
            if (DEBUG) {
                ResolverImpl.log(new StringBuffer().append(bundle).append(" NOT RESOLVED").toString());
            }
        } else if (!cycle.contains(bundle)) {
            this.setBundleResolved(bundle);
            if (DEBUG) {
                ResolverImpl.log(new StringBuffer().append(bundle).append(" RESOLVED").toString());
            }
        }
        if (bundle.getState() == 0) {
            bundle.setResolvable(false);
        }
        return bundle.getState() != 0;
    }

    private void checkFragmentConstraints(ResolverBundle bundle) {
        ResolverBundle[] fragments = bundle.getFragments();
        int i = 0;
        while (i < fragments.length) {
            BundleDescription fragment = fragments[i].getBundleDescription();
            if (bundle.constraintsConflict(fragment, fragment.getImportPackages(), fragment.getRequiredBundles(), fragment.getGenericRequires()) && !this.developmentMode) {
                bundle.detachFragment(fragments[i], null);
            }
            ++i;
        }
    }

    private boolean resolveGenericReq(GenericConstraint constraint, List<ResolverBundle> cycle) {
        VersionSupplier matchingCapability;
        if (DEBUG_GENERICS) {
            ResolverImpl.log(new StringBuffer("Trying to resolve: ").append(constraint.getBundle()).append(", ").append(constraint.getVersionConstraint()).toString());
        }
        if ((matchingCapability = constraint.getSelectedSupplier()) != null) {
            if (!cycle.contains(constraint.getBundle())) {
                cycle.add(constraint.getBundle());
                if (DEBUG_CYCLES) {
                    ResolverImpl.log(new StringBuffer("generic cycle: ").append(constraint.getBundle()).append(" -> ").append(constraint.getSelectedSupplier()).toString());
                }
            }
            if (DEBUG_GENERICS) {
                ResolverImpl.log("  - already wired");
            }
            return true;
        }
        VersionHashMap<GenericCapability> namespace = this.resolverGenerics.get(constraint.getNameSpace());
        String name = constraint.getName();
        List capabilities = namespace == null ? Collections.EMPTY_LIST : (name == null || "*".equals(name) ? namespace.getAllValues() : namespace.get(name));
        ArrayList candidates = new ArrayList(capabilities);
        ArrayList<BundleCapability> genCapabilities = new ArrayList<BundleCapability>(candidates.size());
        Iterator iCandidates = candidates.iterator();
        while (iCandidates.hasNext()) {
            GenericCapability capability = (GenericCapability)iCandidates.next();
            if (!constraint.isSatisfiedBy(capability)) {
                iCandidates.remove();
                continue;
            }
            genCapabilities.add(capability.getCapability());
        }
        if (this.hook != null) {
            this.hook.filterMatches(constraint.getRequirement(), ResolverImpl.asCapabilities(new ArrayMap(genCapabilities, candidates)));
        }
        boolean result = false;
        for (GenericCapability capability : candidates) {
            if (DEBUG_GENERICS) {
                ResolverImpl.log(new StringBuffer("CHECKING GENERICS: ").append(capability.getBaseDescription()).toString());
            }
            constraint.addPossibleSupplier(capability);
            if (constraint.getBundle() == capability.getResolverBundle()) {
                result = true;
                continue;
            }
            ResolverBundle supplier = capability.getResolverBundle();
            if (supplier.getState() == 2 || this.resolveBundle(supplier, cycle) || this.developmentMode) {
                if (supplier.getState() == 1 && !cycle.contains(supplier)) {
                    cycle.add(supplier);
                }
            } else {
                constraint.removePossibleSupplier(capability);
                continue;
            }
            if (DEBUG_GENERICS) {
                ResolverImpl.log(new StringBuffer("Found match: ").append(capability.getBaseDescription()).append(". Wiring").toString());
            }
            result = true;
        }
        return result ? true : constraint.isOptional();
    }

    private boolean resolveRequire(BundleConstraint req, List<ResolverBundle> cycle) {
        if (DEBUG_REQUIRES) {
            ResolverImpl.log(new StringBuffer("Trying to resolve: ").append(req.getBundle()).append(", ").append(req.getVersionConstraint()).toString());
        }
        if (req.getSelectedSupplier() != null) {
            if (!cycle.contains(req.getBundle())) {
                cycle.add(req.getBundle());
                if (DEBUG_CYCLES) {
                    ResolverImpl.log(new StringBuffer("require-bundle cycle: ").append(req.getBundle()).append(" -> ").append(req.getSelectedSupplier()).toString());
                }
            }
            if (DEBUG_REQUIRES) {
                ResolverImpl.log("  - already wired");
            }
            return true;
        }
        List bundles = this.resolverBundles.get(req.getVersionConstraint().getName());
        ArrayList candidates = new ArrayList(bundles);
        ArrayList<BundleCapability> capabilities = new ArrayList<BundleCapability>(candidates.size());
        Iterator iCandidates = candidates.iterator();
        while (iCandidates.hasNext()) {
            ResolverBundle bundle = (ResolverBundle)iCandidates.next();
            if (!req.isSatisfiedBy(bundle)) {
                iCandidates.remove();
                continue;
            }
            capabilities.add(bundle.getCapability());
        }
        if (this.hook != null) {
            this.hook.filterMatches(req.getRequirement(), ResolverImpl.asCapabilities(new ArrayMap(capabilities, candidates)));
        }
        boolean result = false;
        for (ResolverBundle bundle : candidates) {
            if (DEBUG_REQUIRES) {
                ResolverImpl.log(new StringBuffer("CHECKING: ").append(bundle.getBundleDescription()).toString());
            }
            req.addPossibleSupplier(bundle);
            if (req.getBundle() != bundle && bundle.getState() != 2 && !this.resolveBundle(bundle, cycle) && !this.developmentMode) {
                req.removePossibleSupplier(bundle);
                continue;
            }
            if (req.getBundle() != bundle && bundle.getState() == 1 && !cycle.contains(req.getBundle())) {
                cycle.add(req.getBundle());
                if (DEBUG_CYCLES) {
                    ResolverImpl.log(new StringBuffer("require-bundle cycle: ").append(req.getBundle()).append(" -> ").append(req.getSelectedSupplier()).toString());
                }
            }
            if (DEBUG_REQUIRES) {
                ResolverImpl.log(new StringBuffer("Found match: ").append(bundle.getBundleDescription()).append(". Wiring").toString());
            }
            result = true;
        }
        return result || req.isOptional();
    }

    private boolean resolveImport(ResolverImport imp, List<ResolverBundle> cycle) {
        if (DEBUG_IMPORTS) {
            ResolverImpl.log(new StringBuffer("Trying to resolve: ").append(imp.getBundle()).append(", ").append(imp.getName()).toString());
        }
        if (imp.getSelectedSupplier() != null) {
            if (!cycle.contains(imp.getBundle())) {
                cycle.add(imp.getBundle());
                if (DEBUG_CYCLES) {
                    ResolverImpl.log(new StringBuffer("import-package cycle: ").append(imp.getBundle()).append(" -> ").append(imp.getSelectedSupplier()).append(" from ").append(imp.getSelectedSupplier().getBundleDescription()).toString());
                }
            }
            if (DEBUG_IMPORTS) {
                ResolverImpl.log("  - already wired");
            }
            return true;
        }
        boolean result = false;
        ResolverExport[] substitutableExps = imp.getBundle().getExports(imp.getName());
        List exports = this.resolverExports.get(imp.getName());
        ArrayList candidates = new ArrayList(exports);
        ArrayList<BundleCapability> capabilities = new ArrayList<BundleCapability>(candidates.size());
        Iterator iCandidates = candidates.iterator();
        while (iCandidates.hasNext()) {
            ResolverExport export = (ResolverExport)iCandidates.next();
            if (!imp.isSatisfiedBy(export)) {
                iCandidates.remove();
                continue;
            }
            capabilities.add(export.getCapability());
        }
        if (this.hook != null) {
            this.hook.filterMatches(imp.getRequirement(), ResolverImpl.asCapabilities(new ArrayMap(capabilities, candidates)));
        }
        for (ResolverExport export : candidates) {
            if (DEBUG_IMPORTS) {
                ResolverImpl.log(new StringBuffer("CHECKING: ").append(export.getExporter().getBundleDescription()).append(", ").append(export.getName()).toString());
            }
            int originalState = export.getExporter().getState();
            if (imp.isDynamic() && originalState != 2) continue;
            if (imp.getSelectedSupplier() != null && ((ResolverExport)imp.getSelectedSupplier()).getExporter() == imp.getBundle()) break;
            imp.addPossibleSupplier(export);
            if (imp.getBundle() != export.getExporter()) {
                int j = 0;
                while (j < substitutableExps.length) {
                    if (substitutableExps[j].getSubstitute() == null) {
                        substitutableExps[j].setSubstitute(export);
                    }
                    ++j;
                }
                if (originalState != 2 && !this.resolveBundle(export.getExporter(), cycle) && !this.developmentMode || export.getSubstitute() != null) {
                    imp.removePossibleSupplier(export);
                    if (imp.getSelectedSupplier() != null) continue;
                    j = 0;
                    while (j < substitutableExps.length) {
                        if (substitutableExps[j].getSubstitute() == export) {
                            substitutableExps[j].setSubstitute(null);
                        }
                        ++j;
                    }
                    continue;
                }
            } else if (export.getSubstitute() != null) continue;
            if (imp.getBundle() != export.getExporter() && export.getExporter().getState() == 1 && !cycle.contains(imp.getBundle())) {
                cycle.add(imp.getBundle());
                if (DEBUG_CYCLES) {
                    ResolverImpl.log(new StringBuffer("import-package cycle: ").append(imp.getBundle()).append(" -> ").append(imp.getSelectedSupplier()).append(" from ").append(imp.getSelectedSupplier().getBundleDescription()).toString());
                }
            }
            if (DEBUG_IMPORTS) {
                ResolverImpl.log(new StringBuffer("Found match: ").append(export.getExporter()).append(". Wiring ").append(imp.getBundle()).append(":").append(imp.getName()).toString());
            }
            result = true;
        }
        if (result) {
            return true;
        }
        if (imp.isOptional()) {
            return true;
        }
        return substitutableExps.length > 0 && substitutableExps[0].getSubstitute() == null;
    }

    private void setBundleUnresolved(ResolverBundle bundle, boolean removed, boolean keepFragsAttached) {
        if (bundle.getState() == 0 && !this.developmentMode) {
            return;
        }
        if (removed || !keepFragsAttached) {
            this.resolverExports.remove((ResolverExport)bundle.getExportPackages());
            this.removeGenerics(bundle.getGenericCapabilities());
            bundle.detachAllFragments();
            bundle.initialize(false);
            if (!removed) {
                this.resolverExports.put(bundle.getExportPackages());
                this.addGenerics(bundle.getGenericCapabilities());
            }
        }
        if (!(removed || this.developmentMode && this.unresolvedBundles.contains(bundle))) {
            this.unresolvedBundles.add(bundle);
        }
        bundle.setState(0);
    }

    private void setBundleResolved(ResolverBundle bundle) {
        if (bundle.getState() == 2) {
            return;
        }
        this.unresolvedBundles.remove(bundle);
        bundle.setState(2);
    }

    private void setBundleResolving(ResolverBundle bundle) {
        if (bundle.getState() == 1) {
            return;
        }
        this.unresolvedBundles.remove(bundle);
        bundle.setState(1);
    }

    private void stateResolveBundles(ResolverBundle[] resolvedBundles) {
        int i = 0;
        while (i < resolvedBundles.length) {
            if (!resolvedBundles[i].getBundleDescription().isResolved()) {
                this.stateResolveBundle(resolvedBundles[i]);
            }
            ++i;
        }
    }

    private void stateResolveConstraints(ResolverBundle rb) {
        ResolverImport[] imports = rb.getImportPackages();
        int i = 0;
        while (i < imports.length) {
            ResolverExport export = (ResolverExport)imports[i].getSelectedSupplier();
            ExportPackageDescription supplier = export == null ? null : export.getExportPackageDescription();
            this.state.resolveConstraint(imports[i].getVersionConstraint(), supplier);
            ++i;
        }
        BundleConstraint[] requires = rb.getRequires();
        int i2 = 0;
        while (i2 < requires.length) {
            ResolverBundle bundle = (ResolverBundle)requires[i2].getSelectedSupplier();
            BundleDescription supplier = bundle == null ? null : bundle.getBundleDescription();
            this.state.resolveConstraint(requires[i2].getVersionConstraint(), supplier);
            ++i2;
        }
        GenericConstraint[] genericRequires = rb.getGenericRequires();
        int i3 = 0;
        while (i3 < genericRequires.length) {
            VersionSupplier[] matchingCapabilities = genericRequires[i3].getMatchingCapabilities();
            if (matchingCapabilities == null) {
                this.state.resolveConstraint(genericRequires[i3].getVersionConstraint(), null);
            } else {
                int j = 0;
                while (j < matchingCapabilities.length) {
                    this.state.resolveConstraint(genericRequires[i3].getVersionConstraint(), matchingCapabilities[j].getBaseDescription());
                    ++j;
                }
            }
            ++i3;
        }
    }

    private void stateResolveFragConstraints(ResolverBundle rb) {
        ResolverBundle host = (ResolverBundle)rb.getHost().getSelectedSupplier();
        ImportPackageSpecification[] imports = rb.getBundleDescription().getImportPackages();
        int i = 0;
        while (i < imports.length) {
            ResolverImport hostImport = host == null ? null : host.getImport(imports[i].getName());
            ResolverExport export = (ResolverExport)(hostImport == null ? null : hostImport.getSelectedSupplier());
            ExportPackageDescription supplier = export == null ? null : export.getExportPackageDescription();
            this.state.resolveConstraint(imports[i], supplier);
            ++i;
        }
        BundleSpecification[] requires = rb.getBundleDescription().getRequiredBundles();
        int i2 = 0;
        while (i2 < requires.length) {
            BundleConstraint hostRequire = host == null ? null : host.getRequire(requires[i2].getName());
            ResolverBundle bundle = (ResolverBundle)(hostRequire == null ? null : hostRequire.getSelectedSupplier());
            BundleDescription supplier = bundle == null ? null : bundle.getBundleDescription();
            this.state.resolveConstraint(requires[i2], supplier);
            ++i2;
        }
    }

    private void stateResolveBundle(ResolverBundle rb) {
        VersionSupplier[] matchingBundles;
        if (!rb.isResolved() && !this.developmentMode) {
            return;
        }
        if (rb.isFragment()) {
            this.stateResolveFragConstraints(rb);
        } else {
            this.stateResolveConstraints(rb);
        }
        HashMap<String, List<StateWire>> stateWires = new HashMap<String, List<StateWire>>();
        ResolverExport[] exports = rb.getSelectedExports();
        ArrayList<ExportPackageDescription> selectedExports = new ArrayList<ExportPackageDescription>(exports.length);
        int i = 0;
        while (i < exports.length) {
            if (this.permissionChecker.checkPackagePermission(exports[i].getExportPackageDescription())) {
                selectedExports.add(exports[i].getExportPackageDescription());
            }
            ++i;
        }
        ExportPackageDescription[] selectedExportsArray = selectedExports.toArray(new ExportPackageDescription[selectedExports.size()]);
        ResolverExport[] substituted = rb.getSubstitutedExports();
        ArrayList<ExportPackageDescription> substitutedExports = new ArrayList<ExportPackageDescription>(substituted.length);
        int i2 = 0;
        while (i2 < substituted.length) {
            substitutedExports.add(substituted[i2].getExportPackageDescription());
            ++i2;
        }
        ExportPackageDescription[] substitutedExportsArray = substitutedExports.toArray(new ExportPackageDescription[substitutedExports.size()]);
        ExportPackageDescription[] exportsWiredToArray = ResolverImpl.getExportsWiredTo(rb, stateWires);
        BundleConstraint[] requires = rb.getRequires();
        ArrayList<BundleDescription> bundlesWiredTo = new ArrayList<BundleDescription>(requires.length);
        ArrayList<StateWire> requireWires = new ArrayList<StateWire>(requires.length);
        int i3 = 0;
        while (i3 < requires.length) {
            if (requires[i3].getSelectedSupplier() != null) {
                BundleDescription supplier = (BundleDescription)requires[i3].getSelectedSupplier().getBaseDescription();
                bundlesWiredTo.add(supplier);
                StateWire requireWire = ResolverImpl.newStateWire(rb.getBundleDescription(), requires[i3].getVersionConstraint(), supplier, supplier);
                requireWires.add(requireWire);
            }
            ++i3;
        }
        BundleDescription[] bundlesWiredToArray = bundlesWiredTo.toArray(new BundleDescription[bundlesWiredTo.size()]);
        if (!requireWires.isEmpty()) {
            stateWires.put("osgi.wiring.bundle", requireWires);
        }
        GenericCapability[] capabilities = rb.getGenericCapabilities();
        ArrayList<GenericDescription> selectedCapabilities = new ArrayList<GenericDescription>(capabilities.length);
        GenericCapability[] genericCapabilityArray = capabilities;
        int n = capabilities.length;
        int n2 = 0;
        while (n2 < n) {
            GenericCapability capability = genericCapabilityArray[n2];
            if (this.permissionChecker.checkCapabilityPermission(capability.getGenericDescription())) {
                selectedCapabilities.add(capability.getGenericDescription());
            }
            ++n2;
        }
        GenericDescription[] selectedCapabilitiesArray = selectedCapabilities.toArray(new GenericDescription[selectedCapabilities.size()]);
        GenericConstraint[] genericRequires = rb.getGenericRequires();
        ArrayList<GenericDescription> resolvedGenericRequires = new ArrayList<GenericDescription>(genericRequires.length);
        GenericConstraint[] genericConstraintArray = genericRequires;
        int n3 = genericRequires.length;
        int n4 = 0;
        while (n4 < n3) {
            GenericConstraint genericConstraint = genericConstraintArray[n4];
            VersionSupplier[] matching = genericConstraint.getMatchingCapabilities();
            if (matching != null) {
                VersionSupplier[] versionSupplierArray = matching;
                int n5 = matching.length;
                int n6 = 0;
                while (n6 < n5) {
                    VersionSupplier capability = versionSupplierArray[n6];
                    GenericDescription supplier = ((GenericCapability)capability).getGenericDescription();
                    resolvedGenericRequires.add(supplier);
                    StateWire genericWire = ResolverImpl.newStateWire(rb.getBundleDescription(), genericConstraint.getVersionConstraint(), supplier.getSupplier(), supplier);
                    ArrayList<StateWire> genericWires = (ArrayList<StateWire>)stateWires.get(genericConstraint.getNameSpace());
                    if (genericWires == null) {
                        genericWires = new ArrayList<StateWire>();
                        stateWires.put(genericConstraint.getNameSpace(), genericWires);
                    }
                    genericWires.add(genericWire);
                    ++n6;
                }
            }
            ++n4;
        }
        GenericDescription[] capabilitiesWiredToArray = resolvedGenericRequires.toArray(new GenericDescription[resolvedGenericRequires.size()]);
        BundleDescription[] hostBundles = null;
        if (rb.isFragment() && (matchingBundles = rb.getHost().getPossibleSuppliers()) != null && matchingBundles.length > 0) {
            hostBundles = new BundleDescription[matchingBundles.length];
            ArrayList<StateWire> hostWires = new ArrayList<StateWire>(matchingBundles.length);
            stateWires.put("osgi.wiring.host", hostWires);
            int i4 = 0;
            while (i4 < matchingBundles.length) {
                hostBundles[i4] = matchingBundles[i4].getBundleDescription();
                StateWire hostWire = ResolverImpl.newStateWire(rb.getBundleDescription(), rb.getHost().getVersionConstraint(), hostBundles[i4], hostBundles[i4]);
                hostWires.add(hostWire);
                if (hostBundles[i4].isResolved()) {
                    ExportPackageDescription[] newSelectedExports = null;
                    GenericDescription[] newSelectedCapabilities = null;
                    if (rb.isNewFragmentExports()) {
                        ResolverExport[] hostExports = ((ResolverBundle)matchingBundles[i4]).getSelectedExports();
                        newSelectedExports = new ExportPackageDescription[hostExports.length];
                        int j = 0;
                        while (j < hostExports.length) {
                            newSelectedExports[j] = hostExports[j].getExportPackageDescription();
                            ++j;
                        }
                    }
                    if (rb.isNewFragmentCapabilities()) {
                        GenericCapability[] hostCapabilities = ((ResolverBundle)matchingBundles[i4]).getGenericCapabilities();
                        newSelectedCapabilities = new GenericDescription[hostCapabilities.length];
                        int j = 0;
                        while (j < hostCapabilities.length) {
                            newSelectedCapabilities[j] = hostCapabilities[j].getGenericDescription();
                            ++j;
                        }
                    }
                    if (newSelectedCapabilities != null || newSelectedExports != null) {
                        if (newSelectedCapabilities == null) {
                            newSelectedCapabilities = hostBundles[i4].getSelectedGenericCapabilities();
                        }
                        if (newSelectedExports == null) {
                            newSelectedExports = hostBundles[i4].getSelectedExports();
                        }
                        this.state.resolveBundle(hostBundles[i4], true, null, newSelectedExports, hostBundles[i4].getSubstitutedExports(), newSelectedCapabilities, hostBundles[i4].getResolvedRequires(), hostBundles[i4].getResolvedImports(), hostBundles[i4].getResolvedGenericRequires(), ((BundleDescriptionImpl)hostBundles[i4]).getWires());
                    }
                }
                ++i4;
            }
        }
        this.state.resolveBundle(rb.getBundleDescription(), rb.isResolved(), hostBundles, selectedExportsArray, substitutedExportsArray, selectedCapabilitiesArray, bundlesWiredToArray, exportsWiredToArray, capabilitiesWiredToArray, stateWires);
    }

    private static ExportPackageDescription[] getExportsWiredTo(ResolverBundle rb, Map<String, List<StateWire>> stateWires) {
        ResolverImport[] imports = rb.getImportPackages();
        ArrayList<ExportPackageDescription> exportsWiredTo = new ArrayList<ExportPackageDescription>(imports.length);
        ArrayList<StateWire> importWires = new ArrayList<StateWire>(imports.length);
        int i = 0;
        while (i < imports.length) {
            if (imports[i].getSelectedSupplier() != null) {
                ExportPackageDescription supplier = (ExportPackageDescription)imports[i].getSelectedSupplier().getBaseDescription();
                exportsWiredTo.add(supplier);
                StateWire wire = ResolverImpl.newStateWire(rb.getBundleDescription(), imports[i].getVersionConstraint(), supplier.getExporter(), supplier);
                importWires.add(wire);
            }
            ++i;
        }
        if (stateWires != null && !importWires.isEmpty()) {
            stateWires.put("osgi.wiring.package", importWires);
        }
        return exportsWiredTo.toArray(new ExportPackageDescription[exportsWiredTo.size()]);
    }

    private static StateWire newStateWire(BundleDescription requirementHost, VersionConstraint declaredRequirement, BundleDescription capabilityHost, BaseDescription declaredCapability) {
        BaseDescription fragDeclared = ((BaseDescriptionImpl)declaredCapability).getFragmentDeclaration();
        declaredCapability = fragDeclared != null ? fragDeclared : declaredCapability;
        return new StateWire(requirementHost, declaredRequirement, capabilityHost, declaredCapability);
    }

    @Override
    public synchronized ExportPackageDescription resolveDynamicImport(BundleDescription importingBundle, String requestedPackage) {
        if (this.state == null) {
            throw new IllegalStateException("RESOLVER_NO_STATE");
        }
        if (!this.initialized) {
            this.initialize();
        }
        this.hook = this.state instanceof StateImpl ? ((StateImpl)this.state).getResolverHook() : null;
        try {
            ImportPackageSpecification[] addedDynamicImports;
            ResolverBundle rb = this.bundleMapping.get(importingBundle);
            if (rb.getExport(requestedPackage) != null) {
                return null;
            }
            ResolverImport[] resolverImports = rb.getImportPackages();
            int j = 0;
            while (j < resolverImports.length) {
                ExportPackageDescription supplier;
                if (resolverImports[j].isDynamic() && (supplier = this.resolveDynamicImport(resolverImports[j], requestedPackage)) != null) {
                    ExportPackageDescription exportPackageDescription = supplier;
                    return exportPackageDescription;
                }
                ++j;
            }
            ImportPackageSpecification[] importPackageSpecificationArray = addedDynamicImports = importingBundle.getAddedDynamicImportPackages();
            int n = addedDynamicImports.length;
            int n2 = 0;
            while (n2 < n) {
                ImportPackageSpecification addedDynamicImport = importPackageSpecificationArray[n2];
                ResolverImport newImport = new ResolverImport(rb, addedDynamicImport);
                ExportPackageDescription supplier = this.resolveDynamicImport(newImport, requestedPackage);
                if (supplier != null) {
                    ExportPackageDescription exportPackageDescription = supplier;
                    return exportPackageDescription;
                }
                ++n2;
            }
            if (DEBUG || DEBUG_IMPORTS) {
                ResolverImpl.log(new StringBuffer("Failed to resolve dynamic import: ").append(requestedPackage).toString());
            }
            return null;
        }
        finally {
            this.hook = null;
        }
    }

    private void addStateWire(BundleDescription importingBundle, VersionConstraint requirement, BundleDescription capabilityHost, ExportPackageDescription capability) {
        Map<String, List<StateWire>> wires = ((BundleDescriptionImpl)importingBundle).getWires();
        List<StateWire> imports = wires.get("osgi.wiring.package");
        if (imports == null) {
            imports = new ArrayList<StateWire>();
            wires.put("osgi.wiring.package", imports);
        }
        imports.add(ResolverImpl.newStateWire(importingBundle, requirement, capabilityHost, capability));
    }

    private ExportPackageDescription resolveDynamicImport(ResolverImport dynamicImport, String requestedPackage) {
        String importName = dynamicImport.getName();
        if (importName.equals("*") || importName.endsWith(".*") && requestedPackage.startsWith(importName.substring(0, importName.length() - 1))) {
            dynamicImport.setName(requestedPackage);
        }
        try {
            if (!requestedPackage.equals(dynamicImport.getName())) {
                return null;
            }
            if (this.resolveImport(dynamicImport, new ArrayList<ResolverBundle>())) {
                this.groupingChecker.populateRoots(dynamicImport.getBundle());
                while (dynamicImport.getSelectedSupplier() != null) {
                    if (this.groupingChecker.isDynamicConsistent(dynamicImport.getBundle(), (ResolverExport)dynamicImport.getSelectedSupplier()) != null) {
                        dynamicImport.selectNextSupplier();
                        continue;
                    }
                    if (DEBUG_IMPORTS) {
                        ResolverImpl.log(new StringBuffer("Resolved dynamic import: ").append(dynamicImport.getBundle()).append(":").append(dynamicImport.getName()).append(" -> ").append(((ResolverExport)dynamicImport.getSelectedSupplier()).getExporter()).append(":").append(requestedPackage).toString());
                    }
                    ResolverExport export = (ResolverExport)dynamicImport.getSelectedSupplier();
                    this.groupingChecker.populateRoots(dynamicImport.getBundle(), export);
                    ExportPackageDescription supplier = export.getExportPackageDescription();
                    if (supplier != null) {
                        this.addStateWire(dynamicImport.getBundleDescription(), dynamicImport.getVersionConstraint(), supplier.getExporter(), supplier);
                    }
                    ExportPackageDescription exportPackageDescription = supplier;
                    return exportPackageDescription;
                }
                dynamicImport.clearPossibleSuppliers();
            }
        }
        finally {
            if (importName.endsWith("*")) {
                dynamicImport.clearPossibleSuppliers();
            }
            dynamicImport.setName(null);
        }
        return null;
    }

    @Override
    public void bundleAdded(BundleDescription bundle) {
        if (!this.initialized) {
            return;
        }
        if (this.bundleMapping.get(bundle) != null) {
            return;
        }
        ResolverBundle rb = new ResolverBundle(bundle, this);
        this.bundleMapping.put(bundle, rb);
        this.unresolvedBundles.add(rb);
        this.resolverExports.put(rb.getExportPackages());
        this.resolverBundles.put(rb.getName(), rb);
        this.addGenerics(rb.getGenericCapabilities());
    }

    @Override
    public void bundleRemoved(BundleDescription bundle, boolean pending) {
        ResolverBundle rb;
        ResolverBundle resolverBundle = rb = this.initialized ? this.bundleMapping.get(bundle) : null;
        if (rb != null) {
            rb.setUninstalled();
        }
        this.internalBundleRemoved(bundle, pending);
    }

    private void internalBundleRemoved(BundleDescription bundle, boolean pending) {
        if (pending) {
            this.removalPending.put(new Long(bundle.getBundleId()), bundle);
        }
        if (!this.initialized) {
            return;
        }
        ResolverBundle rb = this.bundleMapping.get(bundle);
        if (rb == null) {
            return;
        }
        if (!pending) {
            this.bundleMapping.remove(bundle);
            this.groupingChecker.clear(rb);
        }
        if (!pending || !bundle.isResolved()) {
            this.resolverExports.remove((ResolverExport)rb.getExportPackages());
            this.resolverBundles.remove(rb);
            this.removeGenerics(rb.getGenericCapabilities());
        }
        this.unresolvedBundles.remove(rb);
    }

    private void unresolveBundle(ResolverBundle bundle, boolean removed) {
        CompositeResolveHelper helper;
        if (bundle == null) {
            return;
        }
        List<BundleDescription> removedBundles = this.removalPending.remove(new Long(bundle.getBundleDescription().getBundleId()));
        for (BundleDescription removedDesc : removedBundles) {
            ResolverBundle re = this.bundleMapping.get(removedDesc);
            this.unresolveBundle(re, true);
            this.state.removeBundleComplete(removedDesc);
            this.resolverExports.remove((ResolverExport)re.getExportPackages());
            this.resolverBundles.remove(re);
            this.removeGenerics(re.getGenericCapabilities());
            this.bundleMapping.remove(removedDesc);
            this.groupingChecker.clear(re);
            if (removedDesc != bundle.getBundleDescription()) continue;
            removed = true;
        }
        if (!bundle.getBundleDescription().isResolved() && !this.developmentMode) {
            return;
        }
        CompositeResolveHelperRegistry currentLinks = this.compositeHelpers;
        if (currentLinks != null && (helper = currentLinks.getCompositeResolveHelper(bundle.getBundleDescription())) != null) {
            helper.giveExports(null);
        }
        this.setBundleUnresolved(bundle, removed, false);
        BundleDescription[] dependents = bundle.getBundleDescription().getDependents();
        this.state.resolveBundle(bundle.getBundleDescription(), false, null, null, null, null, null, null, null, null);
        int i = 0;
        while (i < dependents.length) {
            this.unresolveBundle(this.bundleMapping.get(dependents[i]), false);
            ++i;
        }
    }

    @Override
    public void bundleUpdated(BundleDescription newDescription, BundleDescription existingDescription, boolean pending) {
        this.internalBundleRemoved(existingDescription, pending);
        this.bundleAdded(newDescription);
    }

    @Override
    public void flush() {
        this.resolverExports = null;
        this.resolverBundles = null;
        this.resolverGenerics = null;
        this.unresolvedBundles = null;
        this.bundleMapping = null;
        List<BundleDescription> removed = this.removalPending.getAllValues();
        for (BundleDescription removedDesc : removed) {
            this.state.removeBundleComplete(removedDesc);
        }
        this.removalPending.clear();
        this.initialized = false;
    }

    @Override
    public State getState() {
        return this.state;
    }

    @Override
    public void setState(State newState) {
        if (this.state != null) {
            throw new IllegalStateException("Cannot change the State of a Resolver");
        }
        this.state = newState;
        this.flush();
    }

    private void setDebugOptions() {
        FrameworkDebugOptions options = FrameworkDebugOptions.getDefault();
        if (options == null) {
            return;
        }
        DEBUG = options.getBooleanOption(OPTION_DEBUG, false);
        DEBUG_WIRING = options.getBooleanOption(OPTION_WIRING, false);
        DEBUG_IMPORTS = options.getBooleanOption(OPTION_IMPORTS, false);
        DEBUG_REQUIRES = options.getBooleanOption(OPTION_REQUIRES, false);
        DEBUG_GENERICS = options.getBooleanOption(OPTION_GENERICS, false);
        DEBUG_USES = options.getBooleanOption(OPTION_USES, false);
        DEBUG_CYCLES = options.getBooleanOption(OPTION_CYCLES, false);
    }

    private void printWirings() {
        ResolverImpl.log("****** Result Wirings ******");
        List bundles = this.resolverBundles.getAllValues();
        for (ResolverBundle rb : bundles) {
            ResolverImport[] imports;
            int i;
            VersionSupplier[] hosts;
            if (rb.getBundleDescription().isResolved()) continue;
            ResolverImpl.log(new StringBuffer("    * WIRING for ").append(rb).toString());
            BundleConstraint[] requireBundles = rb.getRequires();
            if (requireBundles.length == 0) {
                ResolverImpl.log("        (r) no requires");
            } else {
                int i2 = 0;
                while (i2 < requireBundles.length) {
                    if (requireBundles[i2].getSelectedSupplier() == null) {
                        ResolverImpl.log(new StringBuffer("        (r) ").append(rb.getBundleDescription()).append(" -> NULL!!!").toString());
                    } else {
                        ResolverImpl.log(new StringBuffer("        (r) ").append(rb.getBundleDescription()).append(" -> ").append(requireBundles[i2].getSelectedSupplier()).toString());
                    }
                    ++i2;
                }
            }
            BundleConstraint hostSpec = rb.getHost();
            if (hostSpec != null && (hosts = hostSpec.getPossibleSuppliers()) != null) {
                i = 0;
                while (i < hosts.length) {
                    ResolverImpl.log(new StringBuffer("        (h) ").append(rb.getBundleDescription()).append(" -> ").append(hosts[i].getBundleDescription()).toString());
                    ++i;
                }
            }
            if ((imports = rb.getImportPackages()).length == 0) {
                ResolverImpl.log("        (w) no imports");
                continue;
            }
            i = 0;
            while (i < imports.length) {
                if (imports[i].isDynamic() && imports[i].getSelectedSupplier() == null) {
                    ResolverImpl.log(new StringBuffer("        (w) ").append(imports[i].getBundle()).append(":").append(imports[i].getName()).append(" -> DYNAMIC").toString());
                } else if (imports[i].isOptional() && imports[i].getSelectedSupplier() == null) {
                    ResolverImpl.log(new StringBuffer("        (w) ").append(imports[i].getBundle()).append(":").append(imports[i].getName()).append(" -> OPTIONAL (could not be wired)").toString());
                } else if (imports[i].getSelectedSupplier() == null) {
                    ResolverImpl.log(new StringBuffer("        (w) ").append(imports[i].getBundle()).append(":").append(imports[i].getName()).append(" -> NULL!!!").toString());
                } else {
                    ResolverImpl.log(new StringBuffer("        (w) ").append(imports[i].getBundle()).append(":").append(imports[i].getName()).append(" -> ").append(((ResolverExport)imports[i].getSelectedSupplier()).getExporter()).append(":").append(imports[i].getSelectedSupplier().getName()).toString());
                }
                ++i;
            }
        }
    }

    static void log(String message) {
        Debug.println(message);
    }

    VersionHashMap<ResolverExport> getResolverExports() {
        return this.resolverExports;
    }

    @Override
    public void setSelectionPolicy(Comparator<BaseDescription> selectionPolicy) {
        this.selectionPolicy = selectionPolicy;
    }

    @Override
    public Comparator<BaseDescription> getSelectionPolicy() {
        return this.selectionPolicy;
    }

    public void setCompositeResolveHelperRegistry(CompositeResolveHelperRegistry compositeHelpers) {
        this.compositeHelpers = compositeHelpers;
    }

    CompositeResolveHelperRegistry getCompositeHelpers() {
        return this.compositeHelpers;
    }

    private void reorderGenerics() {
        for (VersionHashMap<GenericCapability> namespace : this.resolverGenerics.values()) {
            namespace.reorder();
        }
    }

    void removeGenerics(GenericCapability[] generics) {
        GenericCapability[] genericCapabilityArray = generics;
        int n = generics.length;
        int n2 = 0;
        while (n2 < n) {
            GenericCapability capability = genericCapabilityArray[n2];
            VersionHashMap<GenericCapability> namespace = this.resolverGenerics.get(capability.getGenericDescription().getType());
            if (namespace != null) {
                namespace.remove(capability);
            }
            ++n2;
        }
    }

    void addGenerics(GenericCapability[] generics) {
        GenericCapability[] genericCapabilityArray = generics;
        int n = generics.length;
        int n2 = 0;
        while (n2 < n) {
            GenericCapability capability = genericCapabilityArray[n2];
            String type = capability.getGenericDescription().getType();
            VersionHashMap<GenericCapability> namespace = this.resolverGenerics.get(type);
            if (namespace == null) {
                namespace = new VersionHashMap(this);
                this.resolverGenerics.put(type, namespace);
            }
            namespace.put(capability.getName(), capability);
            ++n2;
        }
    }
}

