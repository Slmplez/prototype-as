/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.internal.resolver.BaseDescriptionImpl;
import org.eclipse.osgi.internal.resolver.ExportPackageDescriptionImpl;
import org.eclipse.osgi.internal.resolver.GenericDescriptionImpl;
import org.eclipse.osgi.internal.resolver.ImportPackageSpecificationImpl;
import org.eclipse.osgi.internal.resolver.NativeCodeDescriptionImpl;
import org.eclipse.osgi.internal.resolver.NativeCodeSpecificationImpl;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.internal.resolver.StateReader;
import org.eclipse.osgi.internal.resolver.VersionConstraintImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateWire;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.osgi.framework.AdminPermission;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleReference;
import org.osgi.framework.wiring.BundleCapability;
import org.osgi.framework.wiring.BundleRequirement;
import org.osgi.framework.wiring.BundleRevision;
import org.osgi.framework.wiring.BundleWire;
import org.osgi.framework.wiring.BundleWiring;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class BundleDescriptionImpl
extends BaseDescriptionImpl
implements BundleDescription,
KeyedElement {
    static final String[] EMPTY_STRING = new String[0];
    static final ImportPackageSpecification[] EMPTY_IMPORTS = new ImportPackageSpecification[0];
    static final BundleSpecification[] EMPTY_BUNDLESPECS = new BundleSpecification[0];
    static final ExportPackageDescription[] EMPTY_EXPORTS = new ExportPackageDescription[0];
    static final BundleDescription[] EMPTY_BUNDLEDESCS = new BundleDescription[0];
    static final GenericSpecification[] EMPTY_GENERICSPECS = new GenericSpecification[0];
    static final GenericDescription[] EMPTY_GENERICDESCS = new GenericDescription[0];
    static final RuntimePermission GET_CLASSLOADER_PERM = new RuntimePermission("getClassLoader");
    static final int RESOLVED = 1;
    static final int SINGLETON = 2;
    static final int REMOVAL_PENDING = 4;
    static final int FULLY_LOADED = 8;
    static final int LAZY_LOADED = 16;
    static final int HAS_DYNAMICIMPORT = 32;
    static final int ATTACH_FRAGMENTS = 64;
    static final int DYNAMIC_FRAGMENTS = 128;
    private volatile int stateBits = 200;
    private volatile long bundleId = -1L;
    volatile HostSpecification host;
    private volatile StateImpl containingState;
    private volatile Object userObject;
    private volatile int lazyDataOffset = -1;
    private volatile int lazyDataSize = -1;
    private List<BundleDescription> dependencies;
    private List<BundleDescription> dependents;
    private String[] mandatory;
    private Map<String, Object> attributes;
    private volatile LazyData lazyData;
    private volatile int equinox_ee = -1;
    private DescriptionWiring bundleWiring;

    @Override
    public long getBundleId() {
        return this.bundleId;
    }

    @Override
    public String getSymbolicName() {
        return this.getName();
    }

    @Override
    public BundleDescription getSupplier() {
        return this;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String getLocation() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            return currentData.location;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String getPlatformFilter() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            return currentData.platformFilter;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String[] getExecutionEnvironments() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.executionEnvironments == null) {
                return EMPTY_STRING;
            }
            return currentData.executionEnvironments;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ImportPackageSpecification[] getImportPackages() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.importPackages == null) {
                return EMPTY_IMPORTS;
            }
            return currentData.importPackages;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ImportPackageSpecification[] getAddedDynamicImportPackages() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.addedDynamicImports == null) {
                return EMPTY_IMPORTS;
            }
            return currentData.addedDynamicImports.toArray(new ImportPackageSpecification[currentData.addedDynamicImports.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleSpecification[] getRequiredBundles() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.requiredBundles == null) {
                return EMPTY_BUNDLESPECS;
            }
            return currentData.requiredBundles;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public GenericSpecification[] getGenericRequires() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.genericRequires == null) {
                return EMPTY_GENERICSPECS;
            }
            return currentData.genericRequires;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public GenericDescription[] getGenericCapabilities() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.genericCapabilities == null) {
                return EMPTY_GENERICDESCS;
            }
            return currentData.genericCapabilities;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public NativeCodeSpecification getNativeCodeSpecification() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            return currentData.nativeCode;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ExportPackageDescription[] getExportPackages() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            return currentData.exportPackages == null ? EMPTY_EXPORTS : currentData.exportPackages;
        }
    }

    @Override
    public boolean isResolved() {
        return (this.stateBits & 1) != 0;
    }

    @Override
    public State getContainingState() {
        return this.containingState;
    }

    @Override
    public BundleDescription[] getFragments() {
        if (this.host != null) {
            return EMPTY_BUNDLEDESCS;
        }
        StateImpl currentState = (StateImpl)this.getContainingState();
        if (currentState == null) {
            throw new IllegalStateException("BundleDescription does not belong to a state.");
        }
        return currentState.getFragments(this);
    }

    @Override
    public HostSpecification getHost() {
        return this.host;
    }

    @Override
    public boolean isSingleton() {
        return (this.stateBits & 2) != 0;
    }

    @Override
    public boolean isRemovalPending() {
        return (this.stateBits & 4) != 0;
    }

    @Override
    public boolean hasDynamicImports() {
        return (this.stateBits & 0x20) != 0;
    }

    @Override
    public boolean attachFragments() {
        return (this.stateBits & 0x40) != 0;
    }

    @Override
    public boolean dynamicFragments() {
        return (this.stateBits & 0x80) != 0;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ExportPackageDescription[] getSelectedExports() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.selectedExports == null) {
                return EMPTY_EXPORTS;
            }
            return currentData.selectedExports;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public GenericDescription[] getSelectedGenericCapabilities() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.selectedCapabilities == null) {
                return EMPTY_GENERICDESCS;
            }
            return currentData.selectedCapabilities;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ExportPackageDescription[] getSubstitutedExports() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.substitutedExports == null) {
                return EMPTY_EXPORTS;
            }
            return currentData.substitutedExports;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription[] getResolvedRequires() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.resolvedRequires == null) {
                return EMPTY_BUNDLEDESCS;
            }
            return currentData.resolvedRequires;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public ExportPackageDescription[] getResolvedImports() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.resolvedImports == null) {
                return EMPTY_EXPORTS;
            }
            return currentData.resolvedImports;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public GenericDescription[] getResolvedGenericRequires() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.resolvedCapabilities == null) {
                return EMPTY_GENERICDESCS;
            }
            return currentData.resolvedCapabilities;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Map<String, List<StateWire>> getWires() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            if (currentData.stateWires == null) {
                currentData.stateWires = new HashMap<String, List<StateWire>>(0);
            }
            return currentData.stateWires;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    Map<String, List<StateWire>> getWiresInternal() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            return currentData.stateWires;
        }
    }

    protected void setBundleId(long bundleId) {
        this.bundleId = bundleId;
    }

    protected void setSymbolicName(String symbolicName) {
        this.setName(symbolicName);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setLocation(String location) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.location = location;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setPlatformFilter(String platformFilter) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.platformFilter = platformFilter;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setExecutionEnvironments(String[] executionEnvironments) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.executionEnvironments = executionEnvironments;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setExportPackages(ExportPackageDescription[] exportPackages) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.exportPackages = exportPackages;
            if (exportPackages != null) {
                int i = 0;
                while (i < exportPackages.length) {
                    ((ExportPackageDescriptionImpl)exportPackages[i]).setExporter(this);
                    ++i;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setImportPackages(ImportPackageSpecification[] importPackages) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.importPackages = importPackages;
            if (importPackages != null) {
                int i = 0;
                while (i < importPackages.length) {
                    ((ImportPackageSpecificationImpl)importPackages[i]).setBundle(this);
                    if ("dynamic".equals(importPackages[i].getDirective("resolution"))) {
                        this.stateBits |= 0x20;
                    }
                    ++i;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setRequiredBundles(BundleSpecification[] requiredBundles) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.requiredBundles = requiredBundles;
            if (requiredBundles != null) {
                int i = 0;
                while (i < requiredBundles.length) {
                    ((VersionConstraintImpl)((Object)requiredBundles[i])).setBundle(this);
                    ++i;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setGenericCapabilities(GenericDescription[] genericCapabilities) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.genericCapabilities = genericCapabilities;
            if (genericCapabilities != null) {
                int i = 0;
                while (i < genericCapabilities.length) {
                    ((GenericDescriptionImpl)genericCapabilities[i]).setSupplier(this);
                    ++i;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setGenericRequires(GenericSpecification[] genericRequires) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.genericRequires = genericRequires;
            if (genericRequires != null) {
                int i = 0;
                while (i < genericRequires.length) {
                    ((VersionConstraintImpl)((Object)genericRequires[i])).setBundle(this);
                    ++i;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setNativeCodeSpecification(NativeCodeSpecification nativeCode) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.nativeCode = nativeCode;
            if (nativeCode != null) {
                ((NativeCodeSpecificationImpl)nativeCode).setBundle(this);
                NativeCodeDescription[] suppliers = nativeCode.getPossibleSuppliers();
                if (suppliers != null) {
                    int i = 0;
                    while (i < suppliers.length) {
                        ((NativeCodeDescriptionImpl)suppliers[i]).setSupplier(this);
                        ++i;
                    }
                }
            }
        }
    }

    protected int getStateBits() {
        return this.stateBits;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setStateBit(int stateBit, boolean on) {
        Object object = this.monitor;
        synchronized (object) {
            if (on) {
                this.stateBits |= stateBit;
            } else {
                this.stateBits &= ~stateBit;
                if (stateBit == 1) {
                    if (this.bundleWiring != null) {
                        this.bundleWiring.invalidate();
                    }
                    this.bundleWiring = null;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setContainingState(State value) {
        Object object = this.monitor;
        synchronized (object) {
            this.containingState = (StateImpl)value;
            this.stateBits = this.containingState != null && this.containingState.getReader() != null ? (this.containingState.getReader().isLazyLoaded() ? (this.stateBits |= 0x10) : (this.stateBits &= 0xFFFFFFEF)) : (this.stateBits &= 0xFFFFFFEF);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setHost(HostSpecification host) {
        Object object = this.monitor;
        synchronized (object) {
            this.host = host;
            if (host != null) {
                ((VersionConstraintImpl)((Object)host)).setBundle(this);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setLazyLoaded(boolean lazyLoad) {
        this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            this.stateBits = lazyLoad ? (this.stateBits |= 0x10) : (this.stateBits &= 0xFFFFFFEF);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setSelectedExports(ExportPackageDescription[] selectedExports) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.selectedExports = selectedExports;
            if (selectedExports != null) {
                int i = 0;
                while (i < selectedExports.length) {
                    ((ExportPackageDescriptionImpl)selectedExports[i]).setExporter(this);
                    ++i;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setSelectedCapabilities(GenericDescription[] selectedCapabilities) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.selectedCapabilities = selectedCapabilities;
            if (selectedCapabilities != null) {
                GenericDescription[] genericDescriptionArray = selectedCapabilities;
                int n = selectedCapabilities.length;
                int n2 = 0;
                while (n2 < n) {
                    GenericDescription capability = genericDescriptionArray[n2];
                    ((GenericDescriptionImpl)capability).setSupplier(this);
                    ++n2;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setSubstitutedExports(ExportPackageDescription[] substitutedExports) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.substitutedExports = substitutedExports;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setResolvedImports(ExportPackageDescription[] resolvedImports) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.resolvedImports = resolvedImports;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setResolvedRequires(BundleDescription[] resolvedRequires) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.resolvedRequires = resolvedRequires;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setResolvedCapabilities(GenericDescription[] resolvedCapabilities) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.resolvedCapabilities = resolvedCapabilities;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setStateWires(Map<String, List<StateWire>> stateWires) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.stateWires = stateWires;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void clearAddedDynamicImportPackages() {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.addedDynamicImports = null;
        }
    }

    @Override
    public String toString() {
        if (this.getSymbolicName() == null) {
            return new StringBuffer("[").append(this.getBundleId()).append("]").toString();
        }
        return new StringBuffer(String.valueOf(this.getSymbolicName())).append("_").append(this.getVersion()).toString();
    }

    @Override
    public Object getKey() {
        return new Long(this.bundleId);
    }

    @Override
    public boolean compare(KeyedElement other) {
        if (!(other instanceof BundleDescriptionImpl)) {
            return false;
        }
        BundleDescriptionImpl otherBundleDescription = (BundleDescriptionImpl)other;
        return this.bundleId == otherBundleDescription.bundleId;
    }

    @Override
    public int getKeyHashCode() {
        return (int)(this.bundleId ^ this.bundleId >>> 32);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void removeDependencies() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.dependencies == null) {
                return;
            }
            Iterator<BundleDescription> iter = this.dependencies.iterator();
            while (iter.hasNext()) {
                ((BundleDescriptionImpl)iter.next()).removeDependent(this);
            }
            this.dependencies = null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void addDependencies(BaseDescription[] newDependencies, boolean checkDups) {
        Object object = this.monitor;
        synchronized (object) {
            if (newDependencies == null) {
                return;
            }
            if (!checkDups && this.dependencies == null) {
                this.dependencies = new ArrayList<BundleDescription>(newDependencies.length);
            }
            int i = 0;
            while (i < newDependencies.length) {
                this.addDependency((BaseDescriptionImpl)newDependencies[i], checkDups);
                ++i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void addDependency(BaseDescriptionImpl dependency, boolean checkDups) {
        Object object = this.monitor;
        synchronized (object) {
            BundleDescriptionImpl bundle = (BundleDescriptionImpl)dependency.getSupplier();
            if (bundle == this) {
                return;
            }
            if (this.dependencies == null) {
                this.dependencies = new ArrayList<BundleDescription>(10);
            }
            if (!checkDups || !this.dependencies.contains(bundle)) {
                bundle.addDependent(this);
                this.dependencies.add(bundle);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    List<BundleDescription> getBundleDependencies() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.dependencies == null) {
                return new ArrayList<BundleDescription>(0);
            }
            ArrayList<BundleDescription> required = new ArrayList<BundleDescription>(this.dependencies.size());
            for (BundleDescription dep : this.dependencies) {
                if (dep == this || dep.getHost() != null) continue;
                required.add(dep);
            }
            return required;
        }
    }

    @Override
    public Object getUserObject() {
        return this.userObject;
    }

    @Override
    public void setUserObject(Object userObject) {
        this.userObject = userObject;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void addDependent(BundleDescription dependent) {
        Object object = this.monitor;
        synchronized (object) {
            if (this.dependents == null) {
                this.dependents = new ArrayList<BundleDescription>(10);
            }
            this.dependents.add(dependent);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void removeDependent(BundleDescription dependent) {
        Object object = this.monitor;
        synchronized (object) {
            if (this.dependents == null) {
                return;
            }
            this.dependents.remove(dependent);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription[] getDependents() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.dependents == null) {
                return EMPTY_BUNDLEDESCS;
            }
            return this.dependents.toArray(new BundleDescription[this.dependents.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    boolean hasDependents() {
        Object object = this.monitor;
        synchronized (object) {
            return this.dependents == null ? false : this.dependents.size() > 0;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setFullyLoaded(boolean fullyLoaded) {
        Object object = this.monitor;
        synchronized (object) {
            this.stateBits = fullyLoaded ? (this.stateBits |= 8) : (this.stateBits &= 0xFFFFFFF7);
        }
    }

    boolean isFullyLoaded() {
        return (this.stateBits & 8) != 0;
    }

    void setLazyDataOffset(int lazyDataOffset) {
        this.lazyDataOffset = lazyDataOffset;
    }

    int getLazyDataOffset() {
        return this.lazyDataOffset;
    }

    void setLazyDataSize(int lazyDataSize) {
        this.lazyDataSize = lazyDataSize;
    }

    int getLazyDataSize() {
        return this.lazyDataSize;
    }

    private LazyData loadLazyData() {
        StateReader reader;
        if ((this.stateBits & 0x10) == 0) {
            return this.lazyData;
        }
        StateImpl currentState = (StateImpl)this.getContainingState();
        StateReader stateReader = reader = currentState == null ? null : currentState.getReader();
        if (reader == null) {
            throw new IllegalStateException("No valid reader for the bundle description");
        }
        Object object = currentState.monitor;
        synchronized (object) {
            if (this.isFullyLoaded()) {
                reader.setAccessedFlag(true);
                return this.lazyData;
            }
            try {
                reader.fullyLoad(this);
                return this.lazyData;
            }
            catch (IOException e) {
                throw new RuntimeException(e.getMessage(), e);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addDynamicResolvedImport(ExportPackageDescriptionImpl result) {
        Object object = this.monitor;
        synchronized (object) {
            this.addDependency(result, true);
            this.checkLazyData();
            if (this.lazyData.resolvedImports == null) {
                this.lazyData.resolvedImports = new ExportPackageDescription[]{result};
                return;
            }
            ExportPackageDescription[] newImports = new ExportPackageDescription[this.lazyData.resolvedImports.length + 1];
            System.arraycopy(this.lazyData.resolvedImports, 0, newImports, 0, this.lazyData.resolvedImports.length);
            newImports[newImports.length - 1] = result;
            this.lazyData.resolvedImports = newImports;
        }
        this.setLazyLoaded(false);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addDynamicImportPackages(ImportPackageSpecification[] dynamicImport) {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            ImportPackageSpecification addImport;
            if (currentData.addedDynamicImports == null) {
                currentData.addedDynamicImports = new ArrayList<ImportPackageSpecification>();
            }
            ImportPackageSpecification[] importPackageSpecificationArray = dynamicImport;
            int n = dynamicImport.length;
            int n2 = 0;
            while (n2 < n) {
                addImport = importPackageSpecificationArray[n2];
                if (!"dynamic".equals(addImport.getDirective("resolution"))) {
                    throw new IllegalArgumentException("Import must be a dynamic import.");
                }
                ++n2;
            }
            importPackageSpecificationArray = dynamicImport;
            n = dynamicImport.length;
            n2 = 0;
            while (n2 < n) {
                block9: {
                    addImport = importPackageSpecificationArray[n2];
                    for (ImportPackageSpecification currentImport : currentData.addedDynamicImports) {
                        if (!this.equalImports(addImport, currentImport)) {
                            continue;
                        }
                        break block9;
                    }
                    ((ImportPackageSpecificationImpl)addImport).setBundle(this);
                    currentData.addedDynamicImports.add(addImport);
                }
                ++n2;
            }
        }
        this.setLazyLoaded(false);
    }

    private boolean equalImports(ImportPackageSpecification addImport, ImportPackageSpecification currentImport) {
        if (!this.isEqual(addImport.getName(), currentImport.getName())) {
            return false;
        }
        if (!this.isEqual(addImport.getVersionRange(), currentImport.getVersionRange())) {
            return false;
        }
        if (!this.isEqual(addImport.getBundleSymbolicName(), currentImport.getBundleSymbolicName())) {
            return false;
        }
        if (!this.isEqual(addImport.getBundleVersionRange(), currentImport.getBundleVersionRange())) {
            return false;
        }
        return this.isEqual(addImport.getAttributes(), currentImport.getAttributes());
    }

    private boolean isEqual(Object o1, Object o2) {
        return o1 == null ? o2 == null : o1.equals(o2);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void unload() {
        StateReader reader;
        StateImpl currentState = (StateImpl)this.getContainingState();
        StateReader stateReader = reader = currentState == null ? null : currentState.getReader();
        if (reader == null) {
            throw new IllegalStateException("BundleDescription does not belong to a reader.");
        }
        Object object = currentState.monitor;
        synchronized (object) {
            if ((this.stateBits & 0x10) == 0) {
                return;
            }
            if (!this.isFullyLoaded()) {
                return;
            }
            Object object2 = this.monitor;
            synchronized (object2) {
                this.setFullyLoaded(false);
                this.lazyData = null;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setDynamicStamps(Map<String, Long> dynamicStamps) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            this.lazyData.dynamicStamps = dynamicStamps;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setDynamicStamp(String requestedPackage, Long timestamp) {
        Object object = this.monitor;
        synchronized (object) {
            this.checkLazyData();
            if (this.lazyData.dynamicStamps == null) {
                if (timestamp == null) {
                    return;
                }
                this.lazyData.dynamicStamps = new HashMap<String, Long>();
            }
            if (timestamp == null) {
                this.lazyData.dynamicStamps.remove(requestedPackage);
            } else {
                this.lazyData.dynamicStamps.put(requestedPackage, timestamp);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    long getDynamicStamp(String requestedPackage) {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            Long stamp = currentData.dynamicStamps == null ? null : currentData.dynamicStamps.get(requestedPackage);
            return stamp == null ? 0L : stamp;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    Map<String, Long> getDynamicStamps() {
        LazyData currentData = this.loadLazyData();
        Object object = this.monitor;
        synchronized (object) {
            return currentData.dynamicStamps;
        }
    }

    public void setEquinoxEE(int equinox_ee) {
        this.equinox_ee = equinox_ee;
    }

    public int getEquinoxEE() {
        return this.equinox_ee;
    }

    private void checkLazyData() {
        if (this.lazyData == null) {
            this.lazyData = new LazyData();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, Object> getAttributes() {
        Object object = this.monitor;
        synchronized (object) {
            return this.attributes;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setAttributes(Map<String, ?> attributes) {
        Object object = this.monitor;
        synchronized (object) {
            this.attributes = attributes;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    Object getDirective(String key) {
        Object object = this.monitor;
        synchronized (object) {
            block8: {
                block10: {
                    block9: {
                        if ("mandatory".equals(key)) {
                            return this.mandatory;
                        }
                        if ("singleton".equals(key)) {
                            return this.isSingleton() ? Boolean.TRUE : Boolean.FALSE;
                        }
                        if (!"fragment-attachment".equals(key)) break block8;
                        if (this.attachFragments()) break block9;
                        return "never";
                    }
                    if (!this.dynamicFragments()) break block10;
                    return "always";
                }
                return "resolve-time";
            }
        }
        return null;
    }

    void setDirective(String key, Object value) {
        if ("mandatory".equals(key)) {
            this.mandatory = (String[])value;
        }
    }

    @Override
    public Map<String, String> getDeclaredDirectives() {
        String[] mandatoryDirective;
        HashMap<String, String> result = new HashMap<String, String>(2);
        if (!this.attachFragments()) {
            result.put("fragment-attachment", "never");
        } else if (this.dynamicFragments()) {
            result.put("fragment-attachment", "always");
        } else {
            result.put("fragment-attachment", "resolve-time");
        }
        if (this.isSingleton()) {
            result.put("singleton", Boolean.TRUE.toString());
        }
        if ((mandatoryDirective = (String[])this.getDirective("mandatory")) != null) {
            result.put("mandatory", ExportPackageDescriptionImpl.toString(mandatoryDirective));
        }
        return Collections.unmodifiableMap(result);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, Object> getDeclaredAttributes() {
        HashMap<String, Object> result = new HashMap<String, Object>(1);
        Object object = this.monitor;
        synchronized (object) {
            if (this.attributes != null) {
                result.putAll(this.attributes);
            }
        }
        result.put("osgi.wiring.bundle", this.getName());
        result.put("bundle-version", this.getVersion());
        return Collections.unmodifiableMap(result);
    }

    @Override
    public List<BundleRequirement> getDeclaredRequirements(String namespace) {
        int n;
        int n2;
        VersionConstraint[] versionConstraintArray;
        ArrayList<BundleRequirement> result = new ArrayList<BundleRequirement>();
        if (namespace == null || "osgi.wiring.bundle".equals(namespace)) {
            BundleSpecification[] requires = this.getRequiredBundles();
            versionConstraintArray = requires;
            n2 = requires.length;
            n = 0;
            while (n < n2) {
                VersionConstraint require = versionConstraintArray[n];
                result.add(require.getRequirement());
                ++n;
            }
        }
        if (this.host != null && (namespace == null || "osgi.wiring.host".equals(namespace))) {
            result.add(this.host.getRequirement());
        }
        if (namespace == null || "osgi.wiring.package".equals(namespace)) {
            ImportPackageSpecification[] imports = this.getImportPackages();
            versionConstraintArray = imports;
            n2 = imports.length;
            n = 0;
            while (n < n2) {
                VersionConstraint importPkg = versionConstraintArray[n];
                result.add(importPkg.getRequirement());
                ++n;
            }
        }
        GenericSpecification[] genericSpecifications = this.getGenericRequires();
        versionConstraintArray = genericSpecifications;
        n2 = genericSpecifications.length;
        n = 0;
        while (n < n2) {
            VersionConstraint requirement = versionConstraintArray[n];
            if (namespace == null || namespace.equals(requirement.getType())) {
                result.add(requirement.getRequirement());
            }
            ++n;
        }
        return Collections.unmodifiableList(result);
    }

    @Override
    public List<BundleCapability> getDeclaredCapabilities(String namespace) {
        int n;
        int n2;
        BaseDescription[] baseDescriptionArray;
        ArrayList<BundleCapability> result = new ArrayList<BundleCapability>();
        if (this.host == null && this.getSymbolicName() != null) {
            if (namespace == null || "osgi.wiring.bundle".equals(namespace)) {
                result.add(this.getCapability());
            }
            if (this.attachFragments() && (namespace == null || "osgi.wiring.host".equals(namespace))) {
                result.add(this.getCapability("osgi.wiring.host"));
            }
        }
        if (namespace == null || "osgi.wiring.package".equals(namespace)) {
            ExportPackageDescription[] exports = this.getExportPackages();
            baseDescriptionArray = exports;
            n2 = exports.length;
            n = 0;
            while (n < n2) {
                BaseDescription exportPkg = baseDescriptionArray[n];
                result.add(exportPkg.getCapability());
                ++n;
            }
        }
        GenericDescription[] genericCapabilities = this.getGenericCapabilities();
        baseDescriptionArray = genericCapabilities;
        n2 = genericCapabilities.length;
        n = 0;
        while (n < n2) {
            BaseDescription capabilitiy = baseDescriptionArray[n];
            if (namespace == null || namespace.equals(capabilitiy.getType())) {
                result.add(capabilitiy.getCapability());
            }
            ++n;
        }
        return Collections.unmodifiableList(result);
    }

    @Override
    public int getTypes() {
        return this.getHost() != null ? 1 : 0;
    }

    @Override
    public Bundle getBundle() {
        Object ref = this.getUserObject();
        if (ref instanceof BundleReference) {
            return ((BundleReference)ref).getBundle();
        }
        return null;
    }

    @Override
    String getInternalNameSpace() {
        return "osgi.wiring.bundle";
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleWiring getWiring() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.bundleWiring != null || !this.isResolved()) {
                return this.bundleWiring;
            }
            this.bundleWiring = new DescriptionWiring();
            return this.bundleWiring;
        }
    }

    static class BundleWireImpl
    implements BundleWire {
        private final BundleCapability capability;
        private final BundleWiring provider;
        private final BundleRequirement requirement;
        private final BundleWiring requirer;

        public BundleWireImpl(StateWire wire) {
            VersionConstraint declaredRequirement = wire.getDeclaredRequirement();
            this.capability = declaredRequirement instanceof HostSpecification ? ((BaseDescriptionImpl)wire.getDeclaredCapability()).getCapability("osgi.wiring.host") : wire.getDeclaredCapability().getCapability();
            this.provider = wire.getCapabilityHost().getWiring();
            this.requirement = declaredRequirement.getRequirement();
            this.requirer = wire.getRequirementHost().getWiring();
        }

        public BundleCapability getCapability() {
            return this.capability;
        }

        public BundleRequirement getRequirement() {
            return this.requirement;
        }

        public BundleWiring getProviderWiring() {
            return this.provider;
        }

        public BundleWiring getRequirerWiring() {
            return this.requirer;
        }

        public int hashCode() {
            int hashcode = 31 + this.capability.hashCode();
            hashcode = hashcode * 31 + this.requirement.hashCode();
            hashcode = hashcode * 31 + this.provider.hashCode();
            hashcode = hashcode * 31 + this.requirer.hashCode();
            return hashcode;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof BundleWireImpl)) {
                return false;
            }
            BundleWireImpl other = (BundleWireImpl)obj;
            return this.capability.equals(other.getCapability()) && this.requirement.equals(other.getRequirement()) && this.provider.equals(other.getProviderWiring()) && this.requirer.equals(other.getRequirerWiring());
        }

        public String toString() {
            return this.getRequirement() + " -> " + this.getCapability();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class DescriptionWiring
    implements BundleWiring {
        private volatile boolean valid = true;

        DescriptionWiring() {
        }

        @Override
        public Bundle getBundle() {
            return BundleDescriptionImpl.this.getBundle();
        }

        @Override
        public boolean isInUse() {
            return this.valid && (this.isCurrent() || BundleDescriptionImpl.this.hasDependents());
        }

        void invalidate() {
            this.valid = false;
        }

        @Override
        public boolean isCurrent() {
            return this.valid && !BundleDescriptionImpl.this.isRemovalPending();
        }

        @Override
        public List<BundleCapability> getCapabilities(String namespace) {
            int n;
            int n2;
            BaseDescription[] baseDescriptionArray;
            if (!this.isInUse()) {
                return null;
            }
            ArrayList<BundleCapability> result = Collections.EMPTY_LIST;
            if (BundleDescriptionImpl.this.host != null) {
                return result;
            }
            result = new ArrayList<BundleCapability>();
            if (BundleDescriptionImpl.this.getSymbolicName() != null) {
                if (namespace == null || "osgi.wiring.bundle".equals(namespace)) {
                    result.add(BundleDescriptionImpl.this.getCapability());
                }
                if (BundleDescriptionImpl.this.attachFragments() && (namespace == null || "osgi.wiring.host".equals(namespace))) {
                    result.add(BundleDescriptionImpl.this.getCapability("osgi.wiring.host"));
                }
            }
            if (namespace == null || "osgi.wiring.package".equals(namespace)) {
                ExportPackageDescription[] exports = BundleDescriptionImpl.this.getSelectedExports();
                baseDescriptionArray = exports;
                n2 = exports.length;
                n = 0;
                while (n < n2) {
                    BaseDescription exportPkg = baseDescriptionArray[n];
                    result.add(exportPkg.getCapability());
                    ++n;
                }
            }
            GenericDescription[] genericCapabilities = BundleDescriptionImpl.this.getSelectedGenericCapabilities();
            baseDescriptionArray = genericCapabilities;
            n2 = genericCapabilities.length;
            n = 0;
            while (n < n2) {
                BaseDescription capabilitiy = baseDescriptionArray[n];
                if (namespace == null || namespace.equals(capabilitiy.getType())) {
                    result.add(capabilitiy.getCapability());
                }
                ++n;
            }
            return result;
        }

        @Override
        public List<BundleRequirement> getRequirements(String namespace) {
            List<BundleWire> requiredWires = this.getRequiredWires(namespace);
            if (requiredWires == null) {
                return null;
            }
            ArrayList<BundleRequirement> requirements = new ArrayList<BundleRequirement>(requiredWires.size());
            for (BundleWire wire : requiredWires) {
                if (requirements.contains(wire.getRequirement())) continue;
                requirements.add(wire.getRequirement());
            }
            if ((namespace == null || "osgi.wiring.package".equals(namespace)) && BundleDescriptionImpl.this.hasDynamicImports()) {
                ImportPackageSpecification[] imports;
                ImportPackageSpecification[] importPackageSpecificationArray = imports = BundleDescriptionImpl.this.getImportPackages();
                int n = imports.length;
                int n2 = 0;
                while (n2 < n) {
                    BundleRequirement req;
                    ImportPackageSpecification impPackage = importPackageSpecificationArray[n2];
                    if ("dynamic".equals(impPackage.getDirective("resolution")) && !requirements.contains(req = impPackage.getRequirement())) {
                        requirements.add(req);
                    }
                    ++n2;
                }
            }
            return requirements;
        }

        @Override
        public List<BundleWire> getProvidedWires(String namespace) {
            if (!this.isInUse()) {
                return null;
            }
            BundleDescription[] dependentBundles = BundleDescriptionImpl.this.getDependents();
            ArrayList<BundleWire> unorderedResult = new ArrayList<BundleWire>();
            BundleDescription[] bundleDescriptionArray = dependentBundles;
            int n = dependentBundles.length;
            int n2 = 0;
            while (n2 < n) {
                BundleDescription dependent = bundleDescriptionArray[n2];
                List<BundleWire> dependentWires = dependent.getWiring().getRequiredWires(namespace);
                if (dependentWires != null) {
                    for (BundleWire bundleWire : dependentWires) {
                        if (bundleWire.getProviderWiring() != this) continue;
                        unorderedResult.add(bundleWire);
                    }
                }
                ++n2;
            }
            ArrayList<BundleWire> orderedResult = new ArrayList<BundleWire>(unorderedResult.size());
            List<BundleCapability> capabilities = this.getCapabilities(namespace);
            for (BundleCapability capability : capabilities) {
                Iterator wires = unorderedResult.iterator();
                while (wires.hasNext()) {
                    BundleWire wire = (BundleWire)wires.next();
                    if (!wire.getCapability().equals(capability)) continue;
                    wires.remove();
                    orderedResult.add(wire);
                }
            }
            return orderedResult;
        }

        @Override
        public List<BundleWire> getRequiredWires(String namespace) {
            if (!this.isInUse()) {
                return null;
            }
            ArrayList<BundleWire> result = Collections.EMPTY_LIST;
            Map<String, List<StateWire>> wireMap = BundleDescriptionImpl.this.getWires();
            if (namespace == null) {
                result = new ArrayList<BundleWire>();
                for (List<StateWire> wires : wireMap.values()) {
                    for (StateWire wire : wires) {
                        result.add(new BundleWireImpl(wire));
                    }
                }
                return result;
            }
            List<StateWire> wires = wireMap.get(namespace);
            if (wires == null) {
                return result;
            }
            result = new ArrayList(wires.size());
            for (StateWire wire : wires) {
                result.add(new BundleWireImpl(wire));
            }
            return result;
        }

        @Override
        public BundleRevision getRevision() {
            return BundleDescriptionImpl.this;
        }

        @Override
        public ClassLoader getClassLoader() {
            SecurityManager sm = System.getSecurityManager();
            if (sm != null) {
                sm.checkPermission(GET_CLASSLOADER_PERM);
            }
            if (!this.isInUse()) {
                return null;
            }
            return (ClassLoader)((Object)this.getBundleClassLoader());
        }

        private BundleClassLoader getBundleClassLoader() {
            Object o = BundleDescriptionImpl.this.getUserObject();
            if (!(o instanceof BundleLoaderProxy)) {
                if (o instanceof BundleReference) {
                    o = ((BundleReference)o).getBundle();
                }
                if (o instanceof BundleHost) {
                    o = ((BundleHost)o).getLoaderProxy();
                }
            }
            if (o instanceof BundleLoaderProxy) {
                return ((BundleLoaderProxy)o).getBundleLoader().createClassLoader();
            }
            return null;
        }

        private boolean hasResourcePermission() {
            SecurityManager sm = System.getSecurityManager();
            if (sm != null) {
                try {
                    sm.checkPermission(new AdminPermission(this.getBundle(), "resource"));
                }
                catch (SecurityException securityException) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public List<URL> findEntries(String path, String filePattern, int options) {
            if (!this.hasResourcePermission() || !this.isInUse()) {
                return null;
            }
            List<URL> result = Collections.EMPTY_LIST;
            BundleClassLoader bcl = this.getBundleClassLoader();
            if (bcl != null) {
                result = bcl.findEntries(path, filePattern, options);
            }
            return Collections.unmodifiableList(result);
        }

        @Override
        public Collection<String> listResources(String path, String filePattern, int options) {
            if (!this.hasResourcePermission() || !this.isInUse()) {
                return null;
            }
            Collection<Object> result = Collections.EMPTY_LIST;
            BundleClassLoader bcl = this.getBundleClassLoader();
            if (bcl != null) {
                result = bcl.listResources(path, filePattern, options);
            }
            return Collections.unmodifiableCollection(result);
        }

        public String toString() {
            return BundleDescriptionImpl.this.toString();
        }
    }

    final class LazyData {
        String location;
        String platformFilter;
        BundleSpecification[] requiredBundles;
        ExportPackageDescription[] exportPackages;
        ImportPackageSpecification[] importPackages;
        GenericDescription[] genericCapabilities;
        GenericSpecification[] genericRequires;
        NativeCodeSpecification nativeCode;
        ExportPackageDescription[] selectedExports;
        GenericDescription[] selectedCapabilities;
        BundleDescription[] resolvedRequires;
        ExportPackageDescription[] resolvedImports;
        GenericDescription[] resolvedCapabilities;
        ExportPackageDescription[] substitutedExports;
        String[] executionEnvironments;
        Map<String, Long> dynamicStamps;
        Map<String, List<StateWire>> stateWires;
        List<ImportPackageSpecification> addedDynamicImports;

        LazyData() {
        }
    }
}

