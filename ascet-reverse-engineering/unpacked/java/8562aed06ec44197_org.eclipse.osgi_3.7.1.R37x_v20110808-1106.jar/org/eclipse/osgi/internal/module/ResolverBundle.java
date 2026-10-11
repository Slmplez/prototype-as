/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.internal.module.BundleConstraint;
import org.eclipse.osgi.internal.module.GenericCapability;
import org.eclipse.osgi.internal.module.GenericConstraint;
import org.eclipse.osgi.internal.module.ResolverConstraint;
import org.eclipse.osgi.internal.module.ResolverExport;
import org.eclipse.osgi.internal.module.ResolverImpl;
import org.eclipse.osgi.internal.module.ResolverImport;
import org.eclipse.osgi.internal.module.VersionSupplier;
import org.eclipse.osgi.internal.resolver.ExportPackageDescriptionImpl;
import org.eclipse.osgi.internal.resolver.GenericDescriptionImpl;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.VersionConstraint;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResolverBundle
extends VersionSupplier
implements Comparable<ResolverBundle> {
    public static final int UNRESOLVED = 0;
    public static final int RESOLVING = 1;
    public static final int RESOLVED = 2;
    private final Long bundleID;
    private BundleConstraint host;
    private ResolverImport[] imports;
    private ResolverExport[] exports;
    private BundleConstraint[] requires;
    private GenericCapability[] genericCapabilities;
    private GenericConstraint[] genericReqiures;
    private ArrayList<ResolverBundle> fragments;
    private HashMap<Long, List<ResolverExport>> fragmentExports;
    private HashMap<Long, List<ResolverImport>> fragmentImports;
    private HashMap<Long, List<BundleConstraint>> fragmentRequires;
    private HashMap<Long, List<GenericCapability>> fragmentGenericCapabilities;
    private HashMap<Long, List<GenericConstraint>> fragmentGenericRequires;
    private boolean resolvable = true;
    private int state = 0;
    private boolean uninstalled = false;
    private final ResolverImpl resolver;
    private boolean newFragmentExports;
    private boolean newFragmentCapabilities;

    ResolverBundle(BundleDescription bundle, ResolverImpl resolver) {
        super(bundle);
        this.bundleID = new Long(bundle.getBundleId());
        this.resolver = resolver;
        this.initialize(bundle.isResolved());
    }

    void initialize(boolean useSelectedExports) {
        if (this.getBundleDescription().getHost() != null) {
            this.host = new BundleConstraint(this, this.getBundleDescription().getHost());
            this.exports = new ResolverExport[0];
            this.imports = new ResolverImport[0];
            this.requires = new BundleConstraint[0];
            this.genericReqiures = new GenericConstraint[0];
            this.genericCapabilities = new GenericCapability[0];
            return;
        }
        ImportPackageSpecification[] actualImports = this.getBundleDescription().getImportPackages();
        ArrayList<ResolverImport> importList = new ArrayList<ResolverImport>(actualImports.length);
        int i = actualImports.length - 1;
        while (i >= 0) {
            if ("optional".equals(actualImports[i].getDirective("resolution"))) {
                importList.add(new ResolverImport(this, actualImports[i]));
            } else {
                importList.add(0, new ResolverImport(this, actualImports[i]));
            }
            --i;
        }
        this.imports = importList.toArray(new ResolverImport[importList.size()]);
        ExportPackageDescription[] actualExports = useSelectedExports ? this.getBundleDescription().getSelectedExports() : this.getBundleDescription().getExportPackages();
        this.exports = new ResolverExport[actualExports.length];
        int i2 = 0;
        while (i2 < actualExports.length) {
            this.exports[i2] = new ResolverExport(this, actualExports[i2]);
            ++i2;
        }
        BundleSpecification[] actualRequires = this.getBundleDescription().getRequiredBundles();
        this.requires = new BundleConstraint[actualRequires.length];
        int i3 = 0;
        while (i3 < this.requires.length) {
            this.requires[i3] = new BundleConstraint(this, actualRequires[i3]);
            ++i3;
        }
        GenericSpecification[] actualGenericRequires = this.getBundleDescription().getGenericRequires();
        this.genericReqiures = new GenericConstraint[actualGenericRequires.length];
        int i4 = 0;
        while (i4 < this.genericReqiures.length) {
            this.genericReqiures[i4] = new GenericConstraint(this, actualGenericRequires[i4]);
            ++i4;
        }
        GenericDescription[] actualCapabilities = useSelectedExports ? this.getBundleDescription().getSelectedGenericCapabilities() : this.getBundleDescription().getGenericCapabilities();
        this.genericCapabilities = new GenericCapability[actualCapabilities.length];
        int i5 = 0;
        while (i5 < this.genericCapabilities.length) {
            this.genericCapabilities[i5] = new GenericCapability(this, actualCapabilities[i5]);
            ++i5;
        }
        this.fragments = null;
        this.fragmentExports = null;
        this.fragmentImports = null;
        this.fragmentRequires = null;
        this.fragmentGenericCapabilities = null;
        this.fragmentGenericRequires = null;
    }

    ResolverExport getExport(String name) {
        ResolverExport[] allExports = this.getExports(name);
        return allExports.length == 0 ? null : allExports[0];
    }

    ResolverExport[] getExports(String name) {
        ArrayList<ResolverExport> results = new ArrayList<ResolverExport>(1);
        List resolverExports = this.resolver.getResolverExports().get(name);
        for (ResolverExport export : resolverExports) {
            if (export.getExporter() != this) continue;
            results.add(export);
        }
        return results.toArray(new ResolverExport[results.size()]);
    }

    void clearWires() {
        ResolverImport[] allImports = this.getImportPackages();
        int i = 0;
        while (i < allImports.length) {
            allImports[i].clearPossibleSuppliers();
            ++i;
        }
        if (this.host != null) {
            this.host.clearPossibleSuppliers();
        }
        BundleConstraint[] allRequires = this.getRequires();
        int i2 = 0;
        while (i2 < allRequires.length) {
            allRequires[i2].clearPossibleSuppliers();
            ++i2;
        }
        GenericConstraint[] allGenericRequires = this.getGenericRequires();
        int i3 = 0;
        while (i3 < allGenericRequires.length) {
            allGenericRequires[i3].clearPossibleSuppliers();
            ++i3;
        }
        ResolverExport[] allExports = this.getExportPackages();
        int i4 = 0;
        while (i4 < allExports.length) {
            allExports[i4].setSubstitute(null);
            ++i4;
        }
    }

    boolean isResolved() {
        return this.getState() == 2;
    }

    boolean isFragment() {
        return this.host != null;
    }

    int getState() {
        return this.state;
    }

    void setState(int state) {
        this.state = state;
    }

    private <T> List<T> getAll(T[] hostEntries, Map<Long, List<T>> fragmentMap) {
        ArrayList<T> result = new ArrayList<T>(hostEntries.length);
        T[] TArray = hostEntries;
        int n = hostEntries.length;
        int n2 = 0;
        while (n2 < n) {
            T entry = TArray[n2];
            result.add(entry);
            ++n2;
        }
        for (ResolverBundle fragment : this.fragments) {
            List<T> fragEntries = fragmentMap.get(fragment.bundleID);
            if (fragEntries == null) continue;
            result.addAll(fragEntries);
        }
        return result;
    }

    ResolverImport[] getImportPackages() {
        if (this.isFragment() || this.fragments == null || this.fragments.size() == 0) {
            return this.imports;
        }
        List<ResolverImport> result = this.getAll(this.imports, this.fragmentImports);
        return result.toArray(new ResolverImport[result.size()]);
    }

    ResolverExport[] getExportPackages() {
        if (this.isFragment() || this.fragments == null || this.fragments.size() == 0) {
            return this.exports;
        }
        List<ResolverExport> result = this.getAll(this.exports, this.fragmentExports);
        return result.toArray(new ResolverExport[result.size()]);
    }

    ResolverExport[] getSelectedExports() {
        return this.getExports(true);
    }

    ResolverExport[] getSubstitutedExports() {
        return this.getExports(false);
    }

    private ResolverExport[] getExports(boolean selected) {
        ResolverExport[] results = this.getExportPackages();
        int removedExports = 0;
        int i = 0;
        while (i < results.length) {
            if (selected ? results[i].getSubstitute() != null : results[i].getSubstitute() == null) {
                ++removedExports;
            }
            ++i;
        }
        if (removedExports == 0) {
            return results;
        }
        ResolverExport[] selectedExports = new ResolverExport[results.length - removedExports];
        int index = 0;
        int i2 = 0;
        while (i2 < results.length) {
            if (!(selected ? results[i2].getSubstitute() != null : results[i2].getSubstitute() == null)) {
                selectedExports[index] = results[i2];
                ++index;
            }
            ++i2;
        }
        return selectedExports;
    }

    BundleConstraint getHost() {
        return this.host;
    }

    GenericCapability[] getGenericCapabilities() {
        if (this.isFragment() || this.fragments == null || this.fragments.size() == 0) {
            return this.genericCapabilities;
        }
        List<GenericCapability> result = this.getAll(this.genericCapabilities, this.fragmentGenericCapabilities);
        return result.toArray(new GenericCapability[result.size()]);
    }

    BundleConstraint[] getRequires() {
        if (this.isFragment() || this.fragments == null || this.fragments.size() == 0) {
            return this.requires;
        }
        List<BundleConstraint> result = this.getAll(this.requires, this.fragmentRequires);
        return result.toArray(new BundleConstraint[result.size()]);
    }

    GenericConstraint[] getGenericRequires() {
        if (this.isFragment() || this.fragments == null || this.fragments.size() == 0) {
            return this.genericReqiures;
        }
        List<GenericConstraint> result = this.getAll(this.genericReqiures, this.fragmentGenericRequires);
        return result.toArray(new GenericConstraint[result.size()]);
    }

    BundleConstraint getRequire(String name) {
        BundleConstraint[] allRequires = this.getRequires();
        int i = 0;
        while (i < allRequires.length) {
            if (allRequires[i].getVersionConstraint().getName().equals(name)) {
                return allRequires[i];
            }
            ++i;
        }
        return null;
    }

    @Override
    public BundleDescription getBundleDescription() {
        return (BundleDescription)this.getBaseDescription();
    }

    @Override
    public ResolverBundle getResolverBundle() {
        return this;
    }

    ResolverImport getImport(String name) {
        ResolverImport[] allImports = this.getImportPackages();
        int i = 0;
        while (i < allImports.length) {
            if (allImports[i].getName().equals(name)) {
                return allImports[i];
            }
            ++i;
        }
        return null;
    }

    @Override
    public String toString() {
        return new StringBuffer("[").append(this.getBundleDescription()).append("]").toString();
    }

    private void initFragments() {
        if (this.fragments == null) {
            this.fragments = new ArrayList(1);
        }
        if (this.fragmentExports == null) {
            this.fragmentExports = new HashMap(1);
        }
        if (this.fragmentImports == null) {
            this.fragmentImports = new HashMap(1);
        }
        if (this.fragmentRequires == null) {
            this.fragmentRequires = new HashMap(1);
        }
        if (this.fragmentGenericCapabilities == null) {
            this.fragmentGenericCapabilities = new HashMap(1);
        }
        if (this.fragmentGenericRequires == null) {
            this.fragmentGenericRequires = new HashMap(1);
        }
    }

    private boolean isImported(String packageName) {
        ResolverImport[] allImports = this.getImportPackages();
        int i = 0;
        while (i < allImports.length) {
            if (packageName.equals(allImports[i].getName())) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean isRequired(String bundleName) {
        return this.getRequire(bundleName) != null;
    }

    void attachFragment(ResolverBundle fragment, boolean dynamicAttach) {
        if (this.isFragment()) {
            return;
        }
        if (!this.getBundleDescription().attachFragments() || this.isResolved() && !this.getBundleDescription().dynamicFragments()) {
            return;
        }
        if (fragment.getHost().getNumPossibleSuppliers() > 0 && !((HostSpecification)fragment.getHost().getVersionConstraint()).isMultiHost()) {
            return;
        }
        ImportPackageSpecification[] newImports = fragment.getBundleDescription().getImportPackages();
        BundleSpecification[] newRequires = fragment.getBundleDescription().getRequiredBundles();
        ExportPackageDescription[] newExports = fragment.getBundleDescription().getExportPackages();
        GenericDescription[] newGenericCapabilities = fragment.getBundleDescription().getGenericCapabilities();
        GenericSpecification[] newGenericRequires = fragment.getBundleDescription().getGenericRequires();
        if (dynamicAttach && this.constraintsConflict(fragment.getBundleDescription(), newImports, newRequires, newGenericRequires)) {
            return;
        }
        if (this.isResolved() && newExports.length > 0) {
            fragment.setNewFragmentExports(true);
        }
        if (this.isResolved() && newGenericCapabilities.length > 0) {
            fragment.setNewFragmentCapabilities(true);
        }
        this.initFragments();
        for (ResolverBundle existingFragment : this.fragments) {
            String bsn = existingFragment.getName();
            if (bsn == null || !bsn.equals(fragment.getName())) continue;
            return;
        }
        if (this.fragments.contains(fragment)) {
            return;
        }
        this.fragments.add(fragment);
        fragment.getHost().addPossibleSupplier(this);
        if (newImports.length > 0) {
            ArrayList<ResolverImport> hostImports = new ArrayList<ResolverImport>(newImports.length);
            int i = 0;
            while (i < newImports.length) {
                if (!this.isImported(newImports[i].getName())) {
                    hostImports.add(new ResolverImport(this, newImports[i]));
                }
                ++i;
            }
            this.fragmentImports.put(fragment.bundleID, hostImports);
        }
        if (newRequires.length > 0) {
            ArrayList<BundleConstraint> hostRequires = new ArrayList<BundleConstraint>(newRequires.length);
            int i = 0;
            while (i < newRequires.length) {
                if (!this.isRequired(newRequires[i].getName())) {
                    hostRequires.add(new BundleConstraint(this, newRequires[i]));
                }
                ++i;
            }
            this.fragmentRequires.put(fragment.bundleID, hostRequires);
        }
        if (newGenericRequires.length > 0) {
            ArrayList<GenericConstraint> hostGenericRequires = new ArrayList<GenericConstraint>(newGenericRequires.length);
            int i = 0;
            while (i < newGenericRequires.length) {
                hostGenericRequires.add(new GenericConstraint(this, newGenericRequires[i]));
                ++i;
            }
            this.fragmentGenericRequires.put(fragment.bundleID, hostGenericRequires);
        }
        ArrayList<ResolverExport> hostExports = new ArrayList<ResolverExport>(newExports.length);
        if (newExports.length > 0 && dynamicAttach) {
            int i = 0;
            while (i < newExports.length) {
                ResolverExport[] currentExports = this.getExports(newExports[i].getName());
                boolean foundEquivalent = false;
                int j = 0;
                while (j < currentExports.length && !foundEquivalent) {
                    if (this.equivalentExports(currentExports[j], newExports[i])) {
                        foundEquivalent = true;
                    }
                    ++j;
                }
                if (!foundEquivalent) {
                    ExportPackageDescriptionImpl hostExport = new ExportPackageDescriptionImpl(this.getBundleDescription(), newExports[i]);
                    hostExports.add(new ResolverExport(this, hostExport));
                }
                ++i;
            }
            this.fragmentExports.put(fragment.bundleID, hostExports);
        }
        ArrayList<GenericCapability> hostCapabilities = new ArrayList<GenericCapability>(newGenericCapabilities.length);
        if (newGenericCapabilities.length > 0 && dynamicAttach) {
            GenericDescription[] genericDescriptionArray = newGenericCapabilities;
            int n = newGenericCapabilities.length;
            int n2 = 0;
            while (n2 < n) {
                GenericDescription capability = genericDescriptionArray[n2];
                GenericDescriptionImpl hostCapabililty = new GenericDescriptionImpl(this.getBundleDescription(), capability);
                hostCapabilities.add(new GenericCapability(this, hostCapabililty));
                ++n2;
            }
            this.fragmentGenericCapabilities.put(fragment.bundleID, hostCapabilities);
        }
        if (dynamicAttach) {
            this.resolver.getResolverExports().put(hostExports.toArray(new ResolverExport[hostExports.size()]));
            this.resolver.addGenerics(hostCapabilities.toArray(new GenericCapability[hostCapabilities.size()]));
        }
    }

    private boolean equivalentExports(ResolverExport existingExport, ExportPackageDescription newDescription) {
        ExportPackageDescription existingDescription = existingExport.getExportPackageDescription();
        if (!existingDescription.getName().equals(newDescription.getName())) {
            return false;
        }
        if (!existingDescription.getVersion().equals(newDescription.getVersion())) {
            return false;
        }
        if (!ResolverBundle.equivalentMaps(existingDescription.getAttributes(), newDescription.getAttributes(), true)) {
            return false;
        }
        return ResolverBundle.equivalentMaps(existingDescription.getDirectives(), newDescription.getDirectives(), true);
    }

    public static boolean equivalentMaps(Map<String, Object> existingDirectives, Map<String, Object> newDirectives, boolean exactMatch) {
        if (existingDirectives == null && newDirectives == null) {
            return true;
        }
        if (existingDirectives == null ? newDirectives != null : newDirectives == null) {
            return false;
        }
        if (exactMatch && existingDirectives.size() != newDirectives.size()) {
            return false;
        }
        for (Map.Entry<String, Object> entry : existingDirectives.entrySet()) {
            Object newValue = newDirectives.get(entry.getKey());
            if (newValue == null || entry.getValue().getClass() != newValue.getClass()) {
                return false;
            }
            if (!(newValue instanceof String[] ? !Arrays.equals((Object[])entry.getValue(), (Object[])newValue) : !entry.getValue().equals(newValue))) continue;
            return false;
        }
        return true;
    }

    boolean constraintsConflict(BundleDescription fragment, ImportPackageSpecification[] newImports, BundleSpecification[] newRequires, GenericSpecification[] newGenericRequires) {
        boolean result = false;
        int i = 0;
        while (i < newImports.length) {
            ResolverImport hostImport = this.getImport(newImports[i].getName());
            ResolverExport resolvedExport = (ResolverExport)(hostImport == null ? null : hostImport.getSelectedSupplier());
            if (resolvedExport == null && this.isResolved() || resolvedExport != null && !newImports[i].isSatisfiedBy(resolvedExport.getExportPackageDescription())) {
                result = true;
                this.resolver.getState().addResolverError(fragment, 16, newImports[i].toString(), newImports[i]);
            }
            ++i;
        }
        i = 0;
        while (i < newRequires.length) {
            BundleConstraint hostRequire = this.getRequire(newRequires[i].getName());
            ResolverBundle resolvedRequire = (ResolverBundle)(hostRequire == null ? null : hostRequire.getSelectedSupplier());
            if (resolvedRequire == null && this.isResolved() || resolvedRequire != null && !newRequires[i].isSatisfiedBy(resolvedRequire.getBundleDescription())) {
                result = true;
                this.resolver.getState().addResolverError(fragment, 16, newRequires[i].toString(), newRequires[i]);
            }
            ++i;
        }
        if (this.isResolved() && newGenericRequires != null && newGenericRequires.length > 0) {
            result = true;
        }
        return result;
    }

    private void setNewFragmentExports(boolean newFragmentExports) {
        this.newFragmentExports = newFragmentExports;
    }

    boolean isNewFragmentExports() {
        return this.newFragmentExports;
    }

    private void setNewFragmentCapabilities(boolean newFragmentCapabilities) {
        this.newFragmentCapabilities = newFragmentCapabilities;
    }

    boolean isNewFragmentCapabilities() {
        return this.newFragmentCapabilities;
    }

    void detachFragment(ResolverBundle fragment, ResolverConstraint reason) {
        if (this.isFragment()) {
            return;
        }
        this.initFragments();
        ResolverImport[] oldImports = this.getImportPackages();
        BundleConstraint[] oldRequires = this.getRequires();
        if (!this.fragments.remove(fragment)) {
            return;
        }
        fragment.setNewFragmentExports(false);
        fragment.setNewFragmentCapabilities(false);
        fragment.getHost().removePossibleSupplier(this);
        this.fragmentImports.remove(fragment.bundleID);
        this.fragmentRequires.remove(fragment.bundleID);
        List<ResolverExport> removedExports = this.fragmentExports.remove(fragment.bundleID);
        this.fragmentGenericRequires.remove(fragment.bundleID);
        List<GenericCapability> removedCapabilities = this.fragmentGenericCapabilities.remove(fragment.bundleID);
        if (reason != null) {
            ResolverBundle[] remainingFrags;
            ResolverBundle[] resolverBundleArray = remainingFrags = this.fragments.toArray(new ResolverBundle[this.fragments.size()]);
            int n = remainingFrags.length;
            int n2 = 0;
            while (n2 < n) {
                ResolverBundle remainingFrag = resolverBundleArray[n2];
                ArrayList<ResolverImport> additionalImports = new ArrayList<ResolverImport>(0);
                ArrayList<BundleConstraint> additionalRequires = new ArrayList<BundleConstraint>(0);
                if (!this.hasUnresolvedConstraint(reason, fragment, remainingFrag, oldImports, oldRequires, additionalImports, additionalRequires)) {
                    if (additionalImports.size() > 0) {
                        List<ResolverImport> remainingImports = this.fragmentImports.get(remainingFrag.bundleID);
                        if (remainingImports == null) {
                            this.fragmentImports.put(remainingFrag.bundleID, additionalImports);
                        } else {
                            remainingImports.addAll(additionalImports);
                        }
                    }
                    if (additionalRequires.size() > 0) {
                        List<BundleConstraint> remainingRequires = this.fragmentRequires.get(remainingFrag.bundleID);
                        if (remainingRequires == null) {
                            this.fragmentRequires.put(remainingFrag.bundleID, additionalRequires);
                        } else {
                            remainingRequires.addAll(additionalRequires);
                        }
                    }
                }
                ++n2;
            }
        }
        ResolverExport[] results = removedExports == null ? new ResolverExport[]{} : removedExports.toArray(new ResolverExport[removedExports.size()]);
        int i = 0;
        while (i < results.length) {
            results[i].setSubstitute(results[i]);
            ++i;
        }
        this.resolver.getResolverExports().remove((ResolverExport)results);
        if (removedCapabilities != null) {
            this.resolver.removeGenerics(removedCapabilities.toArray(new GenericCapability[removedCapabilities.size()]));
        }
    }

    private boolean hasUnresolvedConstraint(ResolverConstraint reason, ResolverBundle detachedFragment, ResolverBundle remainingFragment, ResolverImport[] oldImports, BundleConstraint[] oldRequires, List<ResolverImport> additionalImports, List<BundleConstraint> additionalRequires) {
        int j;
        ImportPackageSpecification[] remainingFragImports = remainingFragment.getBundleDescription().getImportPackages();
        BundleSpecification[] remainingFragRequires = remainingFragment.getBundleDescription().getRequiredBundles();
        VersionConstraint[] constraints = reason instanceof ResolverImport ? remainingFragImports : remainingFragRequires;
        int i = 0;
        while (i < constraints.length) {
            if (reason.getName().equals(constraints[i].getName())) {
                this.detachFragment(remainingFragment, reason);
                return true;
            }
            ++i;
        }
        i = 0;
        while (i < oldImports.length) {
            if (oldImports[i].getVersionConstraint().getBundle() == detachedFragment.getBundleDescription()) {
                j = 0;
                while (j < remainingFragImports.length) {
                    if (oldImports[i].getName().equals(remainingFragImports[j].getName())) {
                        additionalImports.add(oldImports[i]);
                        oldImports[i].setVersionConstraint(remainingFragImports[j]);
                        break;
                    }
                    ++j;
                }
            }
            ++i;
        }
        i = 0;
        while (i < oldRequires.length) {
            if (oldRequires[i].getVersionConstraint().getBundle() == detachedFragment.getBundleDescription()) {
                j = 0;
                while (j < remainingFragRequires.length) {
                    if (oldRequires[i].getName().equals(remainingFragRequires[j].getName())) {
                        additionalRequires.add(oldRequires[i]);
                        oldRequires[i].setVersionConstraint(remainingFragRequires[j]);
                        break;
                    }
                    ++j;
                }
            }
            ++i;
        }
        return false;
    }

    void detachAllFragments() {
        if (this.fragments == null) {
            return;
        }
        ResolverBundle[] allFragments = this.fragments.toArray(new ResolverBundle[this.fragments.size()]);
        int i = 0;
        while (i < allFragments.length) {
            this.detachFragment(allFragments[i], null);
            ++i;
        }
        this.fragments = null;
    }

    boolean isResolvable() {
        return this.resolvable;
    }

    void setResolvable(boolean resolvable) {
        this.resolvable = resolvable;
    }

    void addExport(ResolverExport re) {
        ResolverExport[] newExports = new ResolverExport[this.exports.length + 1];
        int i = 0;
        while (i < this.exports.length) {
            newExports[i] = this.exports[i];
            ++i;
        }
        newExports[this.exports.length] = re;
        this.exports = newExports;
    }

    ResolverImpl getResolver() {
        return this.resolver;
    }

    ResolverBundle[] getFragments() {
        return this.fragments == null ? new ResolverBundle[]{} : this.fragments.toArray(new ResolverBundle[this.fragments.size()]);
    }

    @Override
    public int compareTo(ResolverBundle o) {
        String bsn = this.getName();
        String otherBsn = o.getName();
        if (bsn == null) {
            return otherBsn == null ? 0 : 1;
        }
        return otherBsn == null ? -1 : bsn.compareTo(otherBsn);
    }

    void setUninstalled() {
        this.uninstalled = true;
    }

    boolean isUninstalled() {
        return this.uninstalled;
    }
}

