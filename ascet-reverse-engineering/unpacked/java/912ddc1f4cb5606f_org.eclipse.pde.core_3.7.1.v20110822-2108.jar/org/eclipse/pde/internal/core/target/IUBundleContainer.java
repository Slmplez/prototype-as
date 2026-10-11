/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.internal.p2.director.PermissiveSlicer
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository
 *  org.eclipse.equinox.p2.touchpoint.eclipse.query.OSGiBundleQuery
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.target;

import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.director.PermissiveSlicer;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository;
import org.eclipse.equinox.p2.touchpoint.eclipse.query.OSGiBundleQuery;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.target.AbstractBundleContainer;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.P2TargetUtils;
import org.eclipse.pde.internal.core.target.ResolvedBundle;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;

public class IUBundleContainer
extends AbstractBundleContainer {
    public static final String TYPE = "InstallableUnit";
    private static final String FEATURE_ID_SUFFIX = ".feature.group";
    public static final int INCLUDE_REQUIRED = 1;
    public static final int INCLUDE_ALL_ENVIRONMENTS = 2;
    public static final int INCLUDE_SOURCE = 4;
    private String[] fIds;
    private Version[] fVersions;
    private IInstallableUnit[] fUnits;
    private URI[] fRepos;
    private int fFlags;
    private P2TargetUtils fSynchronizer;
    private static final boolean DEBUG_PROFILE = PDECore.getDefault().isDebugging() && "true".equals(Platform.getDebugOption((String)"org.eclipse.pde.core/target/profile"));

    IUBundleContainer(String[] ids, String[] versions, URI[] repositories, int resolutionFlags) {
        this.fIds = ids;
        this.fFlags = resolutionFlags;
        this.fVersions = new Version[versions.length];
        int i = 0;
        while (i < versions.length) {
            this.fVersions[i] = Version.create((String)versions[i]);
            ++i;
        }
        this.fRepos = repositories == null || repositories.length == 0 ? null : repositories;
    }

    IUBundleContainer(IInstallableUnit[] units, URI[] repositories, int resolutionFlags) {
        this.fIds = new String[units.length];
        this.fFlags = resolutionFlags;
        this.fVersions = new Version[units.length];
        int i = 0;
        while (i < units.length) {
            this.fIds[i] = units[i].getId();
            this.fVersions[i] = units[i].getVersion();
            ++i;
        }
        this.fRepos = repositories == null || repositories.length == 0 ? null : repositories;
    }

    public String getLocation(boolean resolve) throws CoreException {
        return P2TargetUtils.BUNDLE_POOL.toOSString();
    }

    public String getType() {
        return TYPE;
    }

    protected IFeatureModel[] resolveFeatures(ITargetDefinition definition, IProgressMonitor monitor) throws CoreException {
        this.fSynchronizer.synchronize(definition, monitor);
        return this.fFeatures;
    }

    IFeatureModel[] cacheFeatures(ITargetDefinition target) throws CoreException {
        HashSet<NameVersionDescriptor> features = new HashSet<NameVersionDescriptor>();
        IQueryResult queryResult = this.fSynchronizer.getProfile().query(QueryUtil.createIUAnyQuery(), null);
        if (queryResult.isEmpty()) {
            return new IFeatureModel[0];
        }
        Iterator i = queryResult.iterator();
        while (i.hasNext()) {
            IInstallableUnit unit = (IInstallableUnit)i.next();
            String id = unit.getId();
            if (!id.endsWith(FEATURE_ID_SUFFIX)) continue;
            id = id.substring(0, id.length() - FEATURE_ID_SUFFIX.length());
            String version = unit.getVersion().toString();
            features.add(new NameVersionDescriptor(id, version, "feature"));
        }
        if (features.isEmpty()) {
            return new IFeatureModel[0];
        }
        IFeatureModel[] allFeatures = ((TargetDefinition)target).getFeatureModels(this.getLocation(false), (IProgressMonitor)new NullProgressMonitor());
        ArrayList<IFeatureModel> result = new ArrayList<IFeatureModel>();
        int i2 = 0;
        while (i2 < allFeatures.length) {
            NameVersionDescriptor candidate = new NameVersionDescriptor(allFeatures[i2].getFeature().getId(), allFeatures[i2].getFeature().getVersion(), "feature");
            if (features.contains(candidate)) {
                result.add(allFeatures[i2]);
            }
            ++i2;
        }
        this.fFeatures = result.toArray(new IFeatureModel[result.size()]);
        return this.fFeatures;
    }

    protected IResolvedBundle[] resolveBundles(ITargetDefinition definition, IProgressMonitor monitor) throws CoreException {
        this.fSynchronizer.synchronize(definition, monitor);
        return this.fBundles;
    }

    IInstallableUnit[] cacheIUs(ITargetDefinition target) throws CoreException {
        IProfile profile = this.fSynchronizer.getProfile();
        ArrayList result = new ArrayList();
        int i = 0;
        while (i < this.fIds.length) {
            IQuery query = QueryUtil.createIUQuery((String)this.fIds[i], (Version)this.fVersions[i]);
            IQueryResult queryResult = profile.query(query, null);
            if (queryResult.isEmpty()) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.IUBundleContainer_1, (Object)this.fIds[i])));
            }
            result.add(queryResult.iterator().next());
            ++i;
        }
        this.fUnits = result.toArray(new IInstallableUnit[result.size()]);
        return this.fUnits;
    }

    IResolvedBundle[] cacheBundles(ITargetDefinition target) throws CoreException {
        boolean onlyStrict = !this.fSynchronizer.getIncludeAllRequired();
        IProfile metadata = this.fSynchronizer.getProfile();
        PermissiveSlicer slicer = new PermissiveSlicer((IQueryable)metadata, new HashMap(), true, false, true, onlyStrict, false);
        IQueryable slice = slicer.slice(this.fUnits, (IProgressMonitor)new NullProgressMonitor());
        if (slicer.getStatus().getSeverity() == 4) {
            throw new CoreException((IStatus)slicer.getStatus());
        }
        IFileArtifactRepository artifacts = null;
        try {
            artifacts = P2TargetUtils.getBundlePool();
        }
        catch (CoreException coreException) {
            if (DEBUG_PROFILE) {
                System.out.println("Bundle pool repository could not be loaded");
            }
            this.fBundles = null;
            return null;
        }
        Map bundles = this.generateResolvedBundles(slice, (IQueryable)metadata, artifacts);
        if (bundles.isEmpty()) {
            if (DEBUG_PROFILE) {
                System.out.println("Profile does not contain any bundles or artifacts were missing");
            }
            if (slicer.getStatus().getSeverity() == 2) {
                throw new CoreException((IStatus)slicer.getStatus());
            }
            this.fBundles = null;
            return null;
        }
        this.fBundles = bundles.values().toArray(new ResolvedBundle[bundles.size()]);
        return this.fBundles;
    }

    void synchronizerChanged(ITargetDefinition target) throws CoreException {
        this.cacheIUs(target);
        this.cacheBundles(target);
        this.cacheFeatures(target);
    }

    public synchronized int update(Set toUpdate, IProgressMonitor monitor) throws CoreException {
        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)100);
        IQueryable source = P2TargetUtils.getQueryableMetadata(this.fRepos, (IProgressMonitor)progress.newChild(30));
        int dirty = 0;
        int updated = 0;
        SubMonitor loopProgress = progress.newChild(70).setWorkRemaining(this.fIds.length);
        int i = 0;
        while (i < this.fIds.length) {
            if (toUpdate.isEmpty() || toUpdate.contains(this.fIds[i])) {
                IQuery query = QueryUtil.createLatestQuery((IQuery)QueryUtil.createIUQuery((String)this.fIds[i]));
                IQueryResult queryResult = source.query(query, (IProgressMonitor)loopProgress.newChild(1));
                Iterator it = queryResult.iterator();
                if (!it.hasNext()) {
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.IUBundleContainer_1, (Object)this.fIds[i])));
                }
                IInstallableUnit iu = (IInstallableUnit)it.next();
                if (!iu.getVersion().equals(this.fVersions[i])) {
                    updated = 2;
                    if (!this.fVersions[i].equals(Version.emptyVersion)) {
                        this.fVersions[i] = iu.getVersion();
                        dirty = 4;
                    }
                }
            }
            ++i;
        }
        if (updated == 2) {
            this.clearResolutionStatus();
        }
        return dirty | updated;
    }

    protected void clearResolutionStatus() {
        super.clearResolutionStatus();
        this.fSynchronizer.markDirty();
    }

    private Map generateResolvedBundles(IQueryable source, IQueryable metadata, IFileArtifactRepository artifacts) throws CoreException {
        OSGiBundleQuery query = new OSGiBundleQuery();
        IQueryResult queryResult = source.query((IQuery)query, null);
        LinkedHashMap bundles = new LinkedHashMap();
        Iterator i = queryResult.iterator();
        while (i.hasNext()) {
            IQuery sourceQuery;
            IQueryResult result;
            IInstallableUnit unit = (IInstallableUnit)i.next();
            this.generateBundle(unit, artifacts, bundles);
            if (!this.getIncludeSource() || (result = metadata.query(sourceQuery = QueryUtil.createIUQuery((String)(String.valueOf(unit.getId()) + ".source"), (Version)unit.getVersion()), null)).isEmpty()) continue;
            this.generateBundle((IInstallableUnit)result.iterator().next(), artifacts, bundles);
        }
        return bundles;
    }

    private void generateBundle(IInstallableUnit unit, IFileArtifactRepository repo, Map bundles) throws CoreException {
        Collection artifacts = unit.getArtifacts();
        Iterator iterator2 = artifacts.iterator();
        while (iterator2.hasNext()) {
            IResolvedBundle bundle;
            File file = repo.getArtifactFile((IArtifactKey)iterator2.next());
            if (file == null || (bundle = this.generateBundle(file)) == null) continue;
            bundles.put(bundle.getBundleInfo(), bundle);
        }
    }

    public boolean isContentEqual(AbstractBundleContainer container) {
        if (container instanceof IUBundleContainer) {
            IUBundleContainer iuContainer = (IUBundleContainer)container;
            boolean result = true;
            result &= iuContainer.getIncludeAllRequired() == this.getIncludeAllRequired();
            result &= iuContainer.getIncludeAllEnvironments() == this.getIncludeAllEnvironments();
            return (result &= iuContainer.getIncludeSource() == this.getIncludeSource()) && this.isEqualOrNull(this.fIds, iuContainer.fIds) && this.isEqualOrNull(this.fVersions, iuContainer.fVersions) && this.isEqualOrNull(this.fRepos, iuContainer.fRepos);
        }
        return false;
    }

    private boolean isEqualOrNull(Object[] objects1, Object[] objects2) {
        if (objects1 == null) {
            return objects2 == null;
        }
        if (objects2 == null) {
            return false;
        }
        if (objects1.length == objects2.length) {
            int i = 0;
            while (i < objects1.length) {
                if (!objects1[i].equals(objects2[i])) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    public URI[] getRepositories() {
        return this.fRepos;
    }

    public synchronized void removeInstallableUnit(IInstallableUnit unit) {
        ArrayList<String> newIds = new ArrayList<String>(this.fIds.length);
        ArrayList<Version> newVersions = new ArrayList<Version>(this.fIds.length);
        int i = 0;
        while (i < this.fIds.length) {
            if (!this.fIds[i].equals(unit.getId()) || !this.fVersions[i].equals(unit.getVersion())) {
                newIds.add(this.fIds[i]);
                newVersions.add(this.fVersions[i]);
            }
            ++i;
        }
        this.fIds = newIds.toArray(new String[newIds.size()]);
        this.fVersions = newVersions.toArray(new Version[newVersions.size()]);
        this.clearResolutionStatus();
    }

    public boolean getIncludeAllRequired() {
        if (this.fSynchronizer == null) {
            return (this.fFlags & 1) == 1;
        }
        return this.fSynchronizer.getIncludeAllRequired();
    }

    public boolean getIncludeAllEnvironments() {
        if (this.fSynchronizer == null) {
            return (this.fFlags & 2) == 2;
        }
        return this.fSynchronizer.getIncludeAllEnvironments();
    }

    public boolean getIncludeSource() {
        if (this.fSynchronizer == null) {
            return (this.fFlags & 4) == 4;
        }
        return this.fSynchronizer.getIncludeSource();
    }

    public IInstallableUnit[] getInstallableUnits() throws CoreException {
        if (this.fUnits == null) {
            return new IInstallableUnit[0];
        }
        return this.fUnits;
    }

    String[] getIds() {
        return this.fIds;
    }

    Version[] getVersions() {
        return this.fVersions;
    }

    P2TargetUtils getSynchronizer(ITargetDefinition definition) {
        if (this.fSynchronizer != null) {
            return this.fSynchronizer;
        }
        if (definition == null) {
            return null;
        }
        this.fSynchronizer = P2TargetUtils.getSynchronizer(definition);
        return this.fSynchronizer;
    }

    void setSynchronizer(P2TargetUtils value) {
        this.fSynchronizer = value;
    }

    protected void associateWithTarget(ITargetDefinition target) {
        super.associateWithTarget(target);
        this.fSynchronizer = this.getSynchronizer(target);
        this.fSynchronizer.markDirty();
        this.fSynchronizer.setIncludeAllRequired((this.fFlags & 1) == 1);
        this.fSynchronizer.setIncludeAllEnvironments((this.fFlags & 2) == 2);
        this.fSynchronizer.setIncludeSource((this.fFlags & 4) == 4);
    }
}

