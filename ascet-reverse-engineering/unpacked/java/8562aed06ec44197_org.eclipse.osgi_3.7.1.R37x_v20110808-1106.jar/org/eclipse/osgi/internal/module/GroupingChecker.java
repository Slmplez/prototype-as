/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.internal.module.BundleConstraint;
import org.eclipse.osgi.internal.module.GenericCapability;
import org.eclipse.osgi.internal.module.GenericConstraint;
import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.internal.module.ResolverExport;
import org.eclipse.osgi.internal.module.ResolverImport;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GroupingChecker {
    final PackageRoots nullPackageRoots = new PackageRoots(null);
    private Map<ResolverBundle, Map<String, PackageRoots>> bundles = new HashMap<ResolverBundle, Map<String, PackageRoots>>();

    public void populateRoots(ResolverBundle bundle) {
        ExportPackageDescription[] imports;
        if (this.bundles.containsKey(bundle)) {
            return;
        }
        BundleConstraint[] requires = bundle.getRequires();
        int j = 0;
        while (j < requires.length) {
            ResolverBundle selectedSupplier = (ResolverBundle)requires[j].getSelectedSupplier();
            if (selectedSupplier != null) {
                this.isConsistentInternal(bundle, selectedSupplier, new ArrayList<ResolverBundle>(1), true, null);
            }
            ++j;
        }
        ExportPackageDescription[] exportPackageDescriptionArray = imports = bundle.getBundleDescription().getResolvedImports();
        int n = imports.length;
        int n2 = 0;
        while (n2 < n) {
            ExportPackageDescription importPkg = exportPackageDescriptionArray[n2];
            List exports = bundle.getResolver().getResolverExports().get(importPkg.getName());
            for (ResolverExport export : exports) {
                if (export.getExportPackageDescription() != importPkg) continue;
                this.isConsistentInternal(bundle, export, true, null);
            }
            ++n2;
        }
    }

    public void populateRoots(ResolverBundle importingBundle, ResolverExport export) {
        Map<String, PackageRoots> packageRoots = this.bundles.get(importingBundle);
        if (packageRoots != null) {
            packageRoots.remove(export.getName());
        }
        PackageRoots roots = this.getPackageRoots(export.getExporter(), export.getName(), null);
        packageRoots.put(export.getName(), roots);
    }

    public PackageRoots[][] isConsistent(ResolverBundle requiringBundle, ResolverBundle matchingBundle) {
        List<PackageRoots[]> results = this.isConsistentInternal(requiringBundle, matchingBundle, new ArrayList<ResolverBundle>(1), false, null);
        return results == null ? null : (PackageRoots[][])results.toArray((T[])new PackageRoots[results.size()][]);
    }

    private List<PackageRoots[]> isConsistentInternal(ResolverBundle requiringBundle, ResolverBundle matchingBundle, List<ResolverBundle> visited, boolean dynamicImport, List<PackageRoots[]> results) {
        if (visited.contains(matchingBundle)) {
            return results;
        }
        visited.add(matchingBundle);
        ResolverExport[] matchingExports = matchingBundle.getExportPackages();
        int i = 0;
        while (i < matchingExports.length) {
            ResolverExport matchingExport = matchingExports[i];
            if (matchingExports[i].getSubstitute() != null) {
                matchingExport = (ResolverExport)matchingExports[i].getSubstitute();
            }
            results = this.isConsistentInternal(requiringBundle, matchingExport, dynamicImport, results);
            ++i;
        }
        BundleConstraint[] supplierRequires = matchingBundle.getRequires();
        int j = 0;
        while (j < supplierRequires.length) {
            ResolverBundle reexported = (ResolverBundle)supplierRequires[j].getSelectedSupplier();
            if (reexported != null && ((BundleSpecification)supplierRequires[j].getVersionConstraint()).isExported()) {
                results = this.isConsistentInternal(requiringBundle, reexported, visited, dynamicImport, results);
            }
            ++j;
        }
        return results;
    }

    public PackageRoots[][] isConsistent(ResolverBundle importingBundle, ResolverExport matchingExport) {
        List<PackageRoots[]> results = this.isConsistentInternal(importingBundle, matchingExport, false, null);
        return results == null ? null : (PackageRoots[][])results.toArray((T[])new PackageRoots[results.size()][]);
    }

    public PackageRoots[][] isConsistent(ResolverBundle requiringBundle, GenericCapability matchingCapability) {
        String[] uses = matchingCapability.getUsesDirective();
        if (uses == null) {
            return null;
        }
        ArrayList<PackageRoots[]> results = new ArrayList<PackageRoots[]>(0);
        String[] stringArray = uses;
        int n = uses.length;
        int n2 = 0;
        while (n2 < n) {
            String usedPackage = stringArray[n2];
            PackageRoots providingRoots = this.getPackageRoots(matchingCapability.getResolverBundle(), usedPackage, null);
            providingRoots.addConflicts(requiringBundle, usedPackage, null, results);
            ++n2;
        }
        return results.size() == 0 ? null : (PackageRoots[][])results.toArray((T[])new PackageRoots[results.size()][]);
    }

    public PackageRoots[][] isDynamicConsistent(ResolverBundle importingBundle, ResolverExport matchingExport) {
        List<PackageRoots[]> results = this.isConsistentInternal(importingBundle, matchingExport, true, null);
        return results == null ? null : (PackageRoots[][])results.toArray((T[])new PackageRoots[results.size()][]);
    }

    private List<PackageRoots[]> isConsistentInternal(ResolverBundle importingBundle, ResolverExport matchingExport, boolean dyanamicImport, List<PackageRoots[]> results) {
        GenericConstraint[] genericRequires;
        PackageRoots exportingRoots = this.getPackageRoots(matchingExport.getExporter(), matchingExport.getName(), null);
        results = exportingRoots.isConsistentClassSpace(importingBundle, null, results);
        if (!dyanamicImport) {
            return results;
        }
        PackageRoots importingRoots = this.getPackageRoots(importingBundle, matchingExport.getName(), null);
        Map<String, PackageRoots> importingPackages = this.bundles.get(importingBundle);
        if (importingPackages != null) {
            for (PackageRoots roots : importingPackages.values()) {
                if (roots == importingRoots) continue;
                results = roots.isConsistentClassSpace(exportingRoots, matchingExport.getExporter(), null, results);
            }
        }
        GenericConstraint[] genericConstraintArray = genericRequires = importingBundle.getGenericRequires();
        int n = genericRequires.length;
        int n2 = 0;
        while (n2 < n) {
            GenericCapability supplier;
            String[] uses;
            GenericConstraint constraint = genericConstraintArray[n2];
            if (constraint.supplierHasUses() && (uses = (supplier = (GenericCapability)constraint.getSelectedSupplier()).getUsesDirective()) != null) {
                String[] stringArray = uses;
                int n3 = uses.length;
                int n4 = 0;
                while (n4 < n3) {
                    String usedPackage = stringArray[n4];
                    if (usedPackage.equals(matchingExport.getName())) {
                        results = exportingRoots.addConflicts(supplier.getResolverBundle(), usedPackage, null, results);
                    }
                    ++n4;
                }
            }
            ++n2;
        }
        return results;
    }

    PackageRoots getPackageRoots(ResolverBundle bundle, String packageName, List<ResolverBundle> visited) {
        PackageRoots packageRoots;
        Map<String, PackageRoots> packages = this.bundles.get(bundle);
        if (packages == null) {
            packages = new HashMap<String, PackageRoots>(5);
            this.bundles.put(bundle, packages);
        }
        if ((packageRoots = packages.get(packageName)) == null) {
            packageRoots = this.createPackageRoots(bundle, packageName, visited == null ? new ArrayList(1) : visited);
            packages.put(packageName, packageRoots);
        }
        return packageRoots != null ? packageRoots : this.nullPackageRoots;
    }

    private PackageRoots createPackageRoots(ResolverBundle bundle, String packageName, List<ResolverBundle> visited) {
        if (visited.contains(bundle)) {
            return null;
        }
        visited.add(bundle);
        if (bundle.getBundleDescription().isResolved()) {
            ExportPackageDescription[] imports;
            ExportPackageDescription[] exportPackageDescriptionArray = imports = bundle.getBundleDescription().getResolvedImports();
            int n = imports.length;
            int n2 = 0;
            while (n2 < n) {
                ExportPackageDescription importPkg = exportPackageDescriptionArray[n2];
                if (importPkg.getExporter() != bundle.getBundleDescription() && importPkg.getName().equals(packageName)) {
                    List exports = bundle.getResolver().getResolverExports().get(packageName);
                    for (ResolverExport export : exports) {
                        if (export.getExportPackageDescription() != importPkg) continue;
                        return this.getPackageRoots(export.getExporter(), packageName, visited);
                    }
                }
                ++n2;
            }
        } else {
            ResolverExport selectedExport;
            ResolverImport imported = bundle.getImport(packageName);
            if (imported != null && imported.getSelectedSupplier() != null && (selectedExport = (ResolverExport)imported.getSelectedSupplier()).getExporter() != bundle) {
                return this.getPackageRoots(selectedExport.getExporter(), packageName, visited);
            }
        }
        ResolverExport[] exports = bundle.getExports(packageName);
        ArrayList<PackageRoots> roots = new ArrayList<PackageRoots>(0);
        BundleConstraint[] requires = bundle.getRequires();
        int i = 0;
        while (i < requires.length) {
            ResolverBundle supplier = (ResolverBundle)requires[i].getSelectedSupplier();
            if (supplier != null) {
                if (supplier.getExport(packageName) != null) {
                    PackageRoots requiredRoots = this.getPackageRoots(supplier, packageName, visited);
                    if (requiredRoots != this.nullPackageRoots) {
                        roots.add(requiredRoots);
                    }
                } else {
                    BundleConstraint[] supplierRequires = supplier.getRequires();
                    int j = 0;
                    while (j < supplierRequires.length) {
                        PackageRoots reExportedRoots;
                        ResolverBundle reexported = (ResolverBundle)supplierRequires[j].getSelectedSupplier();
                        if (reexported != null && ((BundleSpecification)supplierRequires[j].getVersionConstraint()).isExported() && reexported.getExport(packageName) != null && (reExportedRoots = this.getPackageRoots(reexported, packageName, visited)) != this.nullPackageRoots) {
                            roots.add(reExportedRoots);
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
        if (exports.length > 0 || roots.size() > 1) {
            PackageRoots[] requiredRoots = roots.toArray(new PackageRoots[roots.size()]);
            if (exports.length == 0) {
                PackageRoots superSet = requiredRoots[0];
                int i2 = 1;
                while (i2 < requiredRoots.length) {
                    if (requiredRoots[i2].superSet(superSet)) {
                        superSet = requiredRoots[i2];
                    } else if (!superSet.superSet(requiredRoots[i2])) {
                        superSet = null;
                        break;
                    }
                    ++i2;
                }
                if (superSet != null) {
                    return superSet;
                }
            }
            PackageRoots result = new PackageRoots(packageName);
            int i3 = 0;
            while (i3 < requiredRoots.length) {
                result.merge(requiredRoots[i3]);
                ++i3;
            }
            i3 = 0;
            while (i3 < exports.length) {
                result.addRoot(exports[i3]);
                ++i3;
            }
            return result;
        }
        return roots.size() == 0 ? this.nullPackageRoots : (PackageRoots)roots.get(0);
    }

    public void clear() {
        this.bundles.clear();
    }

    public void clear(ResolverBundle rb) {
        this.bundles.remove(rb);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class PackageRoots {
        private String name;
        private ResolverExport[] roots;

        PackageRoots(String name) {
            this.name = name;
        }

        public boolean hasRoots() {
            return this.roots != null && this.roots.length > 0;
        }

        public void addRoot(ResolverExport export) {
            if (this.roots == null) {
                this.roots = new ResolverExport[]{export};
                return;
            }
            String exportBSN = export.getExporter().getName();
            if (exportBSN != null) {
                int i = 0;
                while (i < this.roots.length) {
                    if (export.getExporter() != this.roots[i].getExporter() && exportBSN.equals(this.roots[i].getExporter().getName())) {
                        return;
                    }
                    ++i;
                }
            }
            if (!this.contains(export, this.roots)) {
                ResolverExport[] newRoots = new ResolverExport[this.roots.length + 1];
                System.arraycopy(this.roots, 0, newRoots, 0, this.roots.length);
                newRoots[this.roots.length] = export;
                this.roots = newRoots;
            }
        }

        private boolean contains(ResolverExport export, ResolverExport[] exports) {
            int i = 0;
            while (i < exports.length) {
                if (exports[i] == export) {
                    return true;
                }
                ++i;
            }
            return false;
        }

        public void merge(PackageRoots packageRoots) {
            if (packageRoots == null || packageRoots.roots == null) {
                return;
            }
            int size = packageRoots.roots.length;
            int i = 0;
            while (i < size) {
                this.addRoot(packageRoots.roots[i]);
                ++i;
            }
        }

        public List<PackageRoots[]> isConsistentClassSpace(ResolverBundle importingBundle, List<PackageRoots> visited, List<PackageRoots[]> results) {
            if (this.roots == null) {
                return results;
            }
            if (visited == null) {
                visited = new ArrayList<PackageRoots>(1);
            }
            if (visited.contains(this)) {
                return results;
            }
            visited.add(this);
            int size = this.roots.length;
            int i = 0;
            while (i < size) {
                ResolverExport root = this.roots[i];
                String[] uses = root.getUsesDirective();
                if (uses != null) {
                    int j = 0;
                    while (j < uses.length) {
                        PackageRoots importingUsedRoots;
                        PackageRoots thisUsedRoots;
                        if (!uses[j].equals(root.getName()) && (thisUsedRoots = GroupingChecker.this.getPackageRoots(root.getExporter(), uses[j], null)) != (importingUsedRoots = GroupingChecker.this.getPackageRoots(importingBundle, uses[j], null))) {
                            if (thisUsedRoots != GroupingChecker.this.nullPackageRoots && importingUsedRoots != GroupingChecker.this.nullPackageRoots && !this.subSet(thisUsedRoots.roots, importingUsedRoots.roots) && !this.subSet(importingUsedRoots.roots, thisUsedRoots.roots)) {
                                if (results == null) {
                                    results = new ArrayList<PackageRoots[]>(1);
                                }
                                results.add(new PackageRoots[]{this, importingUsedRoots});
                            }
                            results = thisUsedRoots.isConsistentClassSpace(importingBundle, visited, results);
                        }
                        ++j;
                    }
                }
                ++i;
            }
            return results;
        }

        public List<PackageRoots[]> isConsistentClassSpace(PackageRoots exportingRoots, ResolverBundle exporter, List<PackageRoots> visited, List<PackageRoots[]> results) {
            if (this.roots == null) {
                return results;
            }
            int size = this.roots.length;
            int i = 0;
            while (i < size) {
                ResolverExport root = this.roots[i];
                String[] uses = root.getUsesDirective();
                if (uses != null) {
                    if (visited == null) {
                        visited = new ArrayList<PackageRoots>(1);
                    }
                    if (visited.contains(this)) {
                        return results;
                    }
                    visited.add(this);
                    int j = 0;
                    while (j < uses.length) {
                        if (!uses[j].equals(root.getName()) && uses[j].equals(exportingRoots.name)) {
                            PackageRoots thisUsedRoots = GroupingChecker.this.getPackageRoots(root.getExporter(), uses[j], null);
                            PackageRoots exportingUsedRoots = GroupingChecker.this.getPackageRoots(exporter, uses[j], null);
                            if (thisUsedRoots == exportingRoots) {
                                return results;
                            }
                            if (thisUsedRoots != GroupingChecker.this.nullPackageRoots && exportingUsedRoots != GroupingChecker.this.nullPackageRoots && !this.subSet(thisUsedRoots.roots, exportingUsedRoots.roots) && !this.subSet(exportingUsedRoots.roots, thisUsedRoots.roots)) {
                                if (results == null) {
                                    results = new ArrayList<PackageRoots[]>(1);
                                }
                                results.add(new PackageRoots[]{this, exportingUsedRoots});
                            }
                            results = thisUsedRoots.isConsistentClassSpace(exportingRoots, exporter, visited, results);
                        }
                        ++j;
                    }
                }
                ++i;
            }
            return results;
        }

        List<PackageRoots[]> addConflicts(ResolverBundle bundle, String usedPackage, List<PackageRoots> visited, List<PackageRoots[]> results) {
            PackageRoots bundleUsedRoots = GroupingChecker.this.getPackageRoots(bundle, usedPackage, null);
            if (this == bundleUsedRoots) {
                return results;
            }
            if (this != GroupingChecker.this.nullPackageRoots && bundleUsedRoots != GroupingChecker.this.nullPackageRoots && !this.subSet(this.roots, bundleUsedRoots.roots) && !this.subSet(bundleUsedRoots.roots, this.roots)) {
                if (results == null) {
                    results = new ArrayList<PackageRoots[]>(1);
                }
                results.add(new PackageRoots[]{this, bundleUsedRoots});
            }
            return this.isConsistentClassSpace(bundleUsedRoots, bundle, visited, results);
        }

        private boolean subSet(ResolverExport[] superSet, ResolverExport[] subSet) {
            int i = 0;
            while (i < subSet.length) {
                boolean found = false;
                int j = 0;
                while (j < superSet.length) {
                    if (subSet[i].getExporter() == superSet[j].getExporter()) {
                        found = true;
                        break;
                    }
                    ++j;
                }
                if (!found) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        public boolean superSet(PackageRoots subSet) {
            return this.subSet(this.roots, subSet.roots);
        }

        public String getName() {
            return this.name;
        }

        public ResolverExport[] getRoots() {
            return this.roots;
        }
    }
}

