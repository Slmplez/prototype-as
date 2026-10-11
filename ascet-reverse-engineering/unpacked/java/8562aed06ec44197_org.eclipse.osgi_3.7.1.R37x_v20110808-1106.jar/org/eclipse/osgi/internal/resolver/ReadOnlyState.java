/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collection;
import java.util.Dictionary;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.internal.resolver.StateHelperImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.Resolver;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.State;
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
public final class ReadOnlyState
implements State {
    private final State target;

    public ReadOnlyState(State target) {
        this.target = target;
    }

    @Override
    public boolean addBundle(BundleDescription description) {
        throw new UnsupportedOperationException();
    }

    @Override
    public StateDelta compare(State state) throws BundleException {
        return this.target.compare(state);
    }

    @Override
    public BundleDescription getBundle(long id) {
        return this.target.getBundle(id);
    }

    @Override
    public BundleDescription getBundle(String symbolicName, Version version) {
        return this.target.getBundle(symbolicName, version);
    }

    @Override
    public BundleDescription getBundleByLocation(String location) {
        return this.target.getBundleByLocation(location);
    }

    @Override
    public BundleDescription[] getBundles() {
        return this.target.getBundles();
    }

    @Override
    public BundleDescription[] getBundles(String symbolicName) {
        return this.target.getBundles(symbolicName);
    }

    @Override
    public StateDelta getChanges() {
        return this.target.getChanges();
    }

    @Override
    public ExportPackageDescription[] getExportedPackages() {
        return this.target.getExportedPackages();
    }

    @Override
    public StateObjectFactory getFactory() {
        return this.target.getFactory();
    }

    @Override
    public BundleDescription[] getResolvedBundles() {
        return this.target.getResolvedBundles();
    }

    @Override
    public long getTimeStamp() {
        return this.target.getTimeStamp();
    }

    @Override
    public boolean isEmpty() {
        return this.target.isEmpty();
    }

    @Override
    public boolean isResolved() {
        return this.target.isResolved();
    }

    @Override
    public boolean removeBundle(BundleDescription bundle) {
        throw new UnsupportedOperationException();
    }

    @Override
    public BundleDescription removeBundle(long bundleId) {
        throw new UnsupportedOperationException();
    }

    @Override
    public StateDelta resolve() {
        throw new UnsupportedOperationException();
    }

    @Override
    public StateDelta resolve(boolean incremental) {
        throw new UnsupportedOperationException();
    }

    @Override
    public StateDelta resolve(BundleDescription[] discard) {
        throw new UnsupportedOperationException();
    }

    @Override
    public StateDelta resolve(BundleDescription[] resolve, boolean discard) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setOverrides(Object value) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean updateBundle(BundleDescription newDescription) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void resolveConstraint(VersionConstraint constraint, BaseDescription supplier) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void resolveBundle(BundleDescription bundle, boolean status, BundleDescription[] hosts, ExportPackageDescription[] selectedExports, BundleDescription[] resolvedRequires, ExportPackageDescription[] resolvedImports) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void resolveBundle(BundleDescription bundle, boolean status, BundleDescription[] host, ExportPackageDescription[] selectedExports, ExportPackageDescription[] substitutedExports, BundleDescription[] resolvedRequires, ExportPackageDescription[] resolveImports) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void resolveBundle(BundleDescription bundle, boolean status, BundleDescription[] hosts, ExportPackageDescription[] selectedExports, ExportPackageDescription[] substitutedExports, GenericDescription[] selectedCapabilities, BundleDescription[] resolvedRequires, ExportPackageDescription[] resolvedImports, GenericDescription[] resolvedCapabilities, Map<String, List<StateWire>> resolvedRequirements) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void removeBundleComplete(BundleDescription bundle) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Resolver getResolver() {
        return null;
    }

    @Override
    public void setResolver(Resolver value) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean setPlatformProperties(Dictionary<?, ?> platformProperties) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean setPlatformProperties(Dictionary<?, ?>[] platformProperties) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Dictionary[] getPlatformProperties() {
        return this.target.getPlatformProperties();
    }

    @Override
    public ExportPackageDescription linkDynamicImport(BundleDescription importingBundle, String requestedPackage) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setTimeStamp(long timeStamp) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ExportPackageDescription[] getSystemPackages() {
        return this.target.getSystemPackages();
    }

    @Override
    public void addResolverError(BundleDescription bundle, int type, String data, VersionConstraint unsatisfied) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ResolverError[] getResolverErrors(BundleDescription bundle) {
        return this.target.getResolverErrors(bundle);
    }

    @Override
    public void removeResolverErrors(BundleDescription bundle) {
        throw new UnsupportedOperationException();
    }

    @Override
    public StateHelper getStateHelper() {
        return StateHelperImpl.getInstance();
    }

    @Override
    public long getHighestBundleId() {
        return this.target.getHighestBundleId();
    }

    @Override
    public void setNativePathsInvalid(NativeCodeDescription nativeCodeDescription, boolean hasInvalidPaths) {
        throw new UnsupportedOperationException();
    }

    @Override
    public BundleDescription[] getDisabledBundles() {
        return this.target.getDisabledBundles();
    }

    @Override
    public void addDisabledInfo(DisabledInfo disabledInfo) {
        throw new UnsupportedOperationException();
    }

    @Override
    public DisabledInfo[] getDisabledInfos(BundleDescription bundle) {
        return this.target.getDisabledInfos(bundle);
    }

    @Override
    public DisabledInfo getDisabledInfo(BundleDescription bundle, String policyName) {
        return this.target.getDisabledInfo(bundle, policyName);
    }

    @Override
    public void removeDisabledInfo(DisabledInfo disabledInfo) {
        throw new UnsupportedOperationException();
    }

    @Override
    public BundleDescription[] getRemovalPending() {
        throw new UnsupportedOperationException();
    }

    @Override
    public Collection<BundleDescription> getDependencyClosure(Collection<BundleDescription> bundles) {
        return this.target.getDependencyClosure(bundles);
    }

    @Override
    public void addDynamicImportPackages(BundleDescription importingBundle, ImportPackageSpecification[] dynamicImports) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setResolverHookFactory(ResolverHookFactory hookFactory) {
    }
}

