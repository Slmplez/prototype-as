/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.internal.baseadaptor.ArrayMap;
import org.eclipse.osgi.internal.resolver.BaseDescriptionImpl;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.ComputeNodeOrder;
import org.eclipse.osgi.internal.resolver.ImportsHolder;
import org.eclipse.osgi.internal.resolver.RequiresHolder;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.osgi.framework.hooks.resolver.ResolverHook;
import org.osgi.framework.hooks.resolver.ResolverHookFactory;
import org.osgi.framework.wiring.BundleCapability;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class StateHelperImpl
implements StateHelper {
    private static final StateHelper instance = new StateHelperImpl();

    @Override
    public BundleDescription[] getDependentBundles(BundleDescription[] bundles) {
        if (bundles == null || bundles.length == 0) {
            return new BundleDescription[0];
        }
        HashSet<BundleDescription> reachable = new HashSet<BundleDescription>(bundles.length);
        int i = 0;
        while (i < bundles.length) {
            if (bundles[i].isResolved()) {
                this.addDependentBundles(bundles[i], reachable);
            }
            ++i;
        }
        return reachable.toArray(new BundleDescription[reachable.size()]);
    }

    private void addDependentBundles(BundleDescription bundle, Set<BundleDescription> reachable) {
        if (reachable.contains(bundle)) {
            return;
        }
        reachable.add(bundle);
        BundleDescription[] dependents = bundle.getDependents();
        int i = 0;
        while (i < dependents.length) {
            this.addDependentBundles(dependents[i], reachable);
            ++i;
        }
    }

    @Override
    public BundleDescription[] getPrerequisites(BundleDescription[] bundles) {
        if (bundles == null || bundles.length == 0) {
            return new BundleDescription[0];
        }
        HashSet<BundleDescription> reachable = new HashSet<BundleDescription>(bundles.length);
        int i = 0;
        while (i < bundles.length) {
            this.addPrerequisites(bundles[i], reachable);
            ++i;
        }
        return reachable.toArray(new BundleDescription[reachable.size()]);
    }

    private void addPrerequisites(BundleDescription bundle, Set<BundleDescription> reachable) {
        if (reachable.contains(bundle)) {
            return;
        }
        reachable.add(bundle);
        List<BundleDescription> depList = ((BundleDescriptionImpl)bundle).getBundleDependencies();
        BundleDescription[] dependencies = depList.toArray(new BundleDescription[depList.size()]);
        int i = 0;
        while (i < dependencies.length) {
            this.addPrerequisites(dependencies[i], reachable);
            ++i;
        }
    }

    private Map<String, List<ExportPackageDescription>> getExportedPackageMap(State state) {
        HashMap<String, List<ExportPackageDescription>> result = new HashMap<String, List<ExportPackageDescription>>();
        BundleDescription[] bundles = state.getBundles();
        int i = 0;
        while (i < bundles.length) {
            ExportPackageDescription[] packages = bundles[i].getExportPackages();
            int j = 0;
            while (j < packages.length) {
                ExportPackageDescription description = packages[j];
                ArrayList<ExportPackageDescription> exports = (ArrayList<ExportPackageDescription>)result.get(description.getName());
                if (exports == null) {
                    exports = new ArrayList<ExportPackageDescription>();
                    result.put(description.getName(), exports);
                }
                exports.add(description);
                ++j;
            }
            ++i;
        }
        return result;
    }

    private Map<String, List<GenericDescription>> getGenericsMap(State state, boolean resolved) {
        HashMap<String, List<GenericDescription>> result = new HashMap<String, List<GenericDescription>>();
        BundleDescription[] bundles = state.getBundles();
        int i = 0;
        while (i < bundles.length) {
            if (!resolved || bundles[i].isResolved()) {
                GenericDescription[] generics = bundles[i].getGenericCapabilities();
                int j = 0;
                while (j < generics.length) {
                    GenericDescription description = generics[j];
                    ArrayList<GenericDescription> genericList = (ArrayList<GenericDescription>)result.get(description.getName());
                    if (genericList == null) {
                        genericList = new ArrayList<GenericDescription>(1);
                        result.put(description.getName(), genericList);
                    }
                    genericList.add(description);
                    ++j;
                }
            }
            ++i;
        }
        return result;
    }

    private VersionConstraint[] getUnsatisfiedLeaves(State state, BundleDescription[] bundles, ResolverHook hook) {
        Map<String, List<ExportPackageDescription>> packages = this.getExportedPackageMap(state);
        Map<String, List<GenericDescription>> generics = this.getGenericsMap(state, false);
        HashSet<VersionConstraint> result = new HashSet<VersionConstraint>();
        ArrayList<BundleDescription> bundleList = new ArrayList<BundleDescription>(bundles.length);
        int i = 0;
        while (i < bundles.length) {
            bundleList.add(bundles[i]);
            ++i;
        }
        i = 0;
        while (i < bundleList.size()) {
            BundleDescription description = (BundleDescription)bundleList.get(i);
            VersionConstraint[] constraints = this.getUnsatisfiedConstraints(description, hook);
            int j = 0;
            while (j < constraints.length) {
                List<GenericDescription> genericSet;
                VersionConstraint constraint = constraints[j];
                List<BaseDescription> satisfied = null;
                if (constraint instanceof BundleSpecification || constraint instanceof HostSpecification) {
                    BaseDescription[] suppliers = state.getBundles(constraint.getName());
                    satisfied = this.getPossibleCandidates(constraint, suppliers, constraint instanceof HostSpecification ? "osgi.wiring.host" : null, hook, false);
                } else if (constraint instanceof ImportPackageSpecification) {
                    List<ExportPackageDescription> exports = packages.get(constraint.getName());
                    if (exports != null) {
                        satisfied = this.getPossibleCandidates(constraint, exports.toArray(new BaseDescription[exports.size()]), null, hook, false);
                    }
                } else if (constraint instanceof GenericSpecification && (genericSet = generics.get(constraint.getName())) != null) {
                    satisfied = this.getPossibleCandidates(constraint, genericSet.toArray(new BaseDescription[genericSet.size()]), null, hook, false);
                }
                if (satisfied == null || satisfied.isEmpty()) {
                    result.add(constraint);
                } else {
                    for (BaseDescription baseDescription : satisfied) {
                        if (baseDescription.getSupplier().isResolved() || bundleList.contains(baseDescription.getSupplier())) continue;
                        bundleList.add(baseDescription.getSupplier());
                        break;
                    }
                }
                ++j;
            }
            ++i;
        }
        return result.toArray(new VersionConstraint[result.size()]);
    }

    @Override
    public VersionConstraint[] getUnsatisfiedLeaves(BundleDescription[] bundles) {
        if (bundles.length == 0) {
            return new VersionConstraint[0];
        }
        State state = bundles[0].getContainingState();
        ResolverHook hook = this.beginHook(state, Arrays.asList(bundles));
        try {
            VersionConstraint[] versionConstraintArray = this.getUnsatisfiedLeaves(state, bundles, hook);
            return versionConstraintArray;
        }
        finally {
            if (hook != null) {
                hook.end();
            }
        }
    }

    private ResolverHook beginHook(State state, Collection<BundleRevision> triggers) {
        if (!(state instanceof StateImpl)) {
            return null;
        }
        ResolverHookFactory hookFactory = ((StateImpl)state).getResolverHookFactory();
        return hookFactory == null ? null : hookFactory.begin(triggers);
    }

    @Override
    public VersionConstraint[] getUnsatisfiedConstraints(BundleDescription bundle) {
        ResolverHook hook = this.beginHook(bundle.getContainingState(), Arrays.asList(bundle));
        try {
            VersionConstraint[] versionConstraintArray = this.getUnsatisfiedConstraints(bundle, hook);
            return versionConstraintArray;
        }
        finally {
            if (hook != null) {
                hook.end();
            }
        }
    }

    private VersionConstraint[] getUnsatisfiedConstraints(BundleDescription bundle, ResolverHook hook) {
        State containingState = bundle.getContainingState();
        if (containingState == null) {
            throw new IllegalStateException("Does not belong to a state");
        }
        ArrayList<VersionConstraint> unsatisfied = new ArrayList<VersionConstraint>();
        HostSpecification host = bundle.getHost();
        if (host != null && !host.isResolved() && !this.isBundleConstraintResolvable(host, "osgi.wiring.host", hook)) {
            unsatisfied.add(host);
        }
        BundleSpecification[] requiredBundles = bundle.getRequiredBundles();
        int i = 0;
        while (i < requiredBundles.length) {
            if (!requiredBundles[i].isResolved() && !this.isBundleConstraintResolvable(requiredBundles[i], null, hook)) {
                unsatisfied.add(requiredBundles[i]);
            }
            ++i;
        }
        ImportPackageSpecification[] packages = bundle.getImportPackages();
        int i2 = 0;
        while (i2 < packages.length) {
            if (!(packages[i2].isResolved() || this.isResolvable(packages[i2], hook) || bundle.isResolved() && !"optional".equals(packages[i2].getDirective("resolution")))) {
                unsatisfied.add(packages[i2]);
            }
            ++i2;
        }
        GenericSpecification[] generics = bundle.getGenericRequires();
        int i3 = 0;
        while (i3 < generics.length) {
            if (!generics[i3].isResolved() && !this.isResolvable(generics[i3], hook)) {
                unsatisfied.add(generics[i3]);
            }
            ++i3;
        }
        NativeCodeSpecification nativeCode = bundle.getNativeCodeSpecification();
        if (nativeCode != null && !nativeCode.isResolved()) {
            unsatisfied.add(nativeCode);
        }
        return unsatisfied.toArray(new VersionConstraint[unsatisfied.size()]);
    }

    private ArrayMap<BundleCapability, BaseDescription> asArrayMap(List<BaseDescription> descriptions, String namespace) {
        ArrayList<BundleCapability> capabilities = new ArrayList<BundleCapability>(descriptions.size());
        for (BaseDescription description : descriptions) {
            capabilities.add(((BaseDescriptionImpl)description).getCapability(namespace));
        }
        return new ArrayMap<BundleCapability, BaseDescription>(capabilities, descriptions);
    }

    private List<BaseDescription> getPossibleCandidates(VersionConstraint constraint, BaseDescription[] descriptions, String namespace, ResolverHook hook, boolean resolved) {
        ArrayList<BaseDescription> candidates = new ArrayList<BaseDescription>();
        int i = 0;
        while (i < descriptions.length) {
            if ((!resolved || descriptions[i].getSupplier().isResolved()) && constraint.isSatisfiedBy(descriptions[i])) {
                candidates.add(descriptions[i]);
            }
            ++i;
        }
        if (hook != null) {
            hook.filterMatches(constraint.getRequirement(), this.asArrayMap(candidates, namespace));
        }
        return candidates;
    }

    @Override
    public boolean isResolvable(ImportPackageSpecification constraint) {
        ResolverHook hook = this.beginHook(constraint.getBundle().getContainingState(), Arrays.asList(constraint.getBundle()));
        try {
            boolean bl = this.isResolvable(constraint, hook);
            return bl;
        }
        finally {
            if (hook != null) {
                hook.end();
            }
        }
    }

    private boolean isResolvable(ImportPackageSpecification constraint, ResolverHook hook) {
        BaseDescription[] exports = constraint.getBundle().getContainingState().getExportedPackages();
        return this.getPossibleCandidates(constraint, exports, null, hook, true).size() > 0;
    }

    private boolean isResolvable(GenericSpecification constraint, ResolverHook hook) {
        Map<String, List<GenericDescription>> genericCapabilities = this.getGenericsMap(constraint.getBundle().getContainingState(), true);
        List<GenericDescription> genericList = genericCapabilities.get(constraint.getName());
        if (genericList == null) {
            return false;
        }
        return this.getPossibleCandidates(constraint, genericList.toArray(new BaseDescription[genericList.size()]), null, hook, true).size() > 0;
    }

    @Override
    public boolean isResolvable(BundleSpecification specification) {
        return this.isBundleConstraintResolvable(specification, null);
    }

    @Override
    public boolean isResolvable(HostSpecification specification) {
        return this.isBundleConstraintResolvable(specification, "osgi.wiring.host");
    }

    private boolean isBundleConstraintResolvable(VersionConstraint constraint, String namespace) {
        ResolverHook hook = this.beginHook(constraint.getBundle().getContainingState(), Arrays.asList(constraint.getBundle()));
        try {
            boolean bl = this.isBundleConstraintResolvable(constraint, namespace, hook);
            return bl;
        }
        finally {
            if (hook != null) {
                hook.end();
            }
        }
    }

    private boolean isBundleConstraintResolvable(VersionConstraint constraint, String namespace, ResolverHook hook) {
        BaseDescription[] availableBundles = constraint.getBundle().getContainingState().getBundles(constraint.getName());
        return this.getPossibleCandidates(constraint, availableBundles, namespace, hook, true).size() > 0;
    }

    @Override
    public Object[][] sortBundles(BundleDescription[] toSort) {
        ArrayList<Object[]> references = new ArrayList<Object[]>(toSort.length);
        int i = 0;
        while (i < toSort.length) {
            if (toSort[i].isResolved()) {
                this.buildReferences(toSort[i], references);
            }
            ++i;
        }
        Object[][] cycles = ComputeNodeOrder.computeNodeOrder(toSort, (Object[][])references.toArray((T[])new Object[references.size()][]));
        if (cycles.length == 0) {
            return cycles;
        }
        int i2 = 0;
        while (i2 < cycles.length) {
            int j = 0;
            while (j < cycles[i2].length) {
                BundleDescription host;
                BundleDescription fragment = (BundleDescription)cycles[i2][j];
                if (fragment.getHost() != null && (host = (BundleDescription)fragment.getHost().getSupplier()) != null) {
                    this.fixFragmentOrder(host, fragment, toSort);
                }
                ++j;
            }
            ++i2;
        }
        return cycles;
    }

    private void fixFragmentOrder(BundleDescription host, BundleDescription fragment, BundleDescription[] toSort) {
        int hostIndex = -1;
        int fragIndex = -1;
        int i = 0;
        while (i < toSort.length && (hostIndex == -1 || fragIndex == -1)) {
            if (toSort[i] == host) {
                hostIndex = i;
            } else if (toSort[i] == fragment) {
                fragIndex = i;
            }
            ++i;
        }
        if (fragIndex > -1 && fragIndex < hostIndex) {
            i = fragIndex;
            while (i < hostIndex) {
                toSort[i] = toSort[i + 1];
                ++i;
            }
            toSort[hostIndex] = fragment;
        }
    }

    private void buildReferences(BundleDescription description, List<Object[]> references) {
        HostSpecification host = description.getHost();
        if (host != null) {
            if (host.getHosts() != null) {
                BundleDescription[] hosts = host.getHosts();
                int i = 0;
                while (i < hosts.length) {
                    if (hosts[i] != description) {
                        references.add(new Object[]{description, hosts[i]});
                    }
                    ++i;
                }
            }
        } else {
            this.buildReferences(description, ((BundleDescriptionImpl)description).getBundleDependencies(), references);
        }
    }

    private void buildReferences(BundleDescription description, List<BundleDescription> dependencies, List<Object[]> references) {
        Iterator<BundleDescription> iter = dependencies.iterator();
        while (iter.hasNext()) {
            this.addReference(description, iter.next(), references);
        }
    }

    private void addReference(BundleDescription description, BundleDescription reference, List<Object[]> references) {
        if (description == reference || reference == null) {
            return;
        }
        BundleDescription[] fragments = reference.getFragments();
        int i = 0;
        while (i < fragments.length) {
            ExportPackageDescription[] exports;
            if (fragments[i].isResolved() && (exports = fragments[i].getExportPackages()).length > 0) {
                references.add(new Object[]{description, fragments[i]});
            }
            ++i;
        }
        references.add(new Object[]{description, reference});
    }

    @Override
    public ExportPackageDescription[] getVisiblePackages(BundleDescription bundle) {
        return this.getVisiblePackages(bundle, 0);
    }

    @Override
    public ExportPackageDescription[] getVisiblePackages(BundleDescription bundle, int options) {
        StateImpl state = (StateImpl)bundle.getContainingState();
        boolean strict = false;
        if (state != null) {
            strict = state.inStrictMode();
        }
        BundleDescription host = bundle.getHost() == null ? bundle : bundle.getHost().getSupplier();
        ArrayList<ExportPackageDescription> orderedPkgList = new ArrayList<ExportPackageDescription>();
        HashSet<ExportPackageDescription> pkgSet = new HashSet<ExportPackageDescription>();
        HashSet<String> importList = new HashSet<String>();
        ImportsHolder imports = new ImportsHolder(bundle, options);
        int i = 0;
        while (i < imports.getSize()) {
            ExportPackageDescription pkgSupplier = imports.getSupplier(i);
            if (pkgSupplier != null && pkgSupplier.getExporter() != host) {
                if (!this.isSystemExport(pkgSupplier, options) && !pkgSet.contains(pkgSupplier)) {
                    orderedPkgList.add(pkgSupplier);
                    pkgSet.add(pkgSupplier);
                }
                BundleSpecification[] requires = pkgSupplier.getExporter().getRequiredBundles();
                HashSet<BundleDescription> visited = new HashSet<BundleDescription>();
                visited.add(bundle);
                HashSet<String> importNames = new HashSet<String>(1);
                importNames.add(imports.getName(i));
                int j = 0;
                while (j < requires.length) {
                    BundleDescription bundleSupplier = (BundleDescription)requires[j].getSupplier();
                    if (bundleSupplier != null) {
                        this.getPackages(bundleSupplier, bundle.getSymbolicName(), importList, orderedPkgList, pkgSet, visited, strict, importNames, options);
                    }
                    ++j;
                }
                importList.add(imports.getName(i));
            }
            ++i;
        }
        RequiresHolder requires = new RequiresHolder(bundle, options);
        HashSet<BundleDescription> visited = new HashSet<BundleDescription>(requires.getSize());
        visited.add(bundle);
        int i2 = 0;
        while (i2 < requires.getSize()) {
            BundleDescription bundleSupplier = requires.getSupplier(i2);
            if (bundleSupplier != null) {
                this.getPackages(bundleSupplier, bundle.getSymbolicName(), importList, orderedPkgList, pkgSet, visited, strict, null, options);
            }
            ++i2;
        }
        return orderedPkgList.toArray(new ExportPackageDescription[orderedPkgList.size()]);
    }

    private void getPackages(BundleDescription requiredBundle, String symbolicName, Set<String> importList, List<ExportPackageDescription> orderedPkgList, Set<ExportPackageDescription> pkgSet, Set<BundleDescription> visited, boolean strict, Set<String> pkgNames, int options) {
        if (visited.contains(requiredBundle)) {
            return;
        }
        visited.add(requiredBundle);
        ExportPackageDescription[] substitutedExports = requiredBundle.getSubstitutedExports();
        ExportPackageDescription[] imports = requiredBundle.getResolvedImports();
        HashSet<String> substituteNames = null;
        int i = 0;
        while (i < substitutedExports.length) {
            if (pkgNames == null || pkgNames.contains(substitutedExports[i].getName())) {
                int j = 0;
                while (j < imports.length) {
                    if (substitutedExports[i].getName().equals(imports[j].getName()) && !pkgSet.contains(imports[j])) {
                        if (substituteNames == null) {
                            substituteNames = new HashSet<String>(1);
                        } else {
                            substituteNames.clear();
                        }
                        substituteNames.add(substitutedExports[i].getName());
                        this.getPackages(imports[j].getSupplier(), symbolicName, importList, orderedPkgList, pkgSet, new HashSet<BundleDescription>(0), strict, substituteNames, options);
                    }
                    ++j;
                }
            }
            ++i;
        }
        importList = substitutedExports.length == 0 ? importList : new HashSet<String>(importList);
        i = 0;
        while (i < substitutedExports.length) {
            importList.add(substitutedExports[i].getName());
            ++i;
        }
        ExportPackageDescription[] exports = requiredBundle.getSelectedExports();
        HashSet<String> exportNames = new HashSet<String>(exports.length);
        int i2 = 0;
        while (i2 < exports.length) {
            if (!(pkgNames != null && !pkgNames.contains(exports[i2].getName()) || this.isSystemExport(exports[i2], options) || !this.isFriend(symbolicName, exports[i2], strict) || importList.contains(exports[i2].getName()) || pkgSet.contains(exports[i2]) || exportNames.contains(exports[i2].getName()))) {
                orderedPkgList.add(exports[i2]);
                pkgSet.add(exports[i2]);
                exportNames.add(exports[i2].getName());
            }
            ++i2;
        }
        RequiresHolder requiredBundles = new RequiresHolder(requiredBundle, options);
        int i3 = 0;
        while (i3 < requiredBundles.getSize()) {
            if (requiredBundles.getSupplier(i3) != null) {
                if (requiredBundles.isExported(i3)) {
                    this.getPackages(requiredBundles.getSupplier(i3), symbolicName, importList, orderedPkgList, pkgSet, visited, strict, pkgNames, options);
                } else if (exportNames.size() > 0) {
                    HashSet<BundleDescription> tmpVisited = new HashSet<BundleDescription>();
                    this.getPackages(requiredBundles.getSupplier(i3), symbolicName, importList, orderedPkgList, pkgSet, tmpVisited, strict, exportNames, options);
                }
            }
            ++i3;
        }
    }

    private boolean isSystemExport(ExportPackageDescription export, int options) {
        if ((options & 1) != 0) {
            return false;
        }
        return (Integer)export.getDirective("x-equinox-ee") >= 0;
    }

    private boolean isFriend(String consumerBSN, ExportPackageDescription export, boolean strict) {
        if (!strict) {
            return true;
        }
        String[] friends = (String[])export.getDirective("x-friends");
        if (friends == null) {
            return true;
        }
        int i = 0;
        while (i < friends.length) {
            if (friends[i].equals(consumerBSN)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    @Override
    public int getAccessCode(BundleDescription bundle, ExportPackageDescription export) {
        if (((Boolean)export.getDirective("x-internal")).booleanValue()) {
            return 2;
        }
        if (!this.isFriend(bundle.getSymbolicName(), export, true)) {
            return 2;
        }
        return 1;
    }

    public static StateHelper getInstance() {
        return instance;
    }
}

