/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.equinox.internal.p2.director.PermissiveSlicer
 *  org.eclipse.equinox.internal.p2.engine.DownloadManager
 *  org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand
 *  org.eclipse.equinox.internal.p2.engine.InstallableUnitPhase
 *  org.eclipse.equinox.internal.p2.engine.Phase
 *  org.eclipse.equinox.internal.p2.engine.PhaseSet
 *  org.eclipse.equinox.internal.p2.engine.ProfileMetadataRepository
 *  org.eclipse.equinox.internal.p2.engine.phases.Collect
 *  org.eclipse.equinox.internal.p2.engine.phases.Install
 *  org.eclipse.equinox.internal.p2.engine.phases.Property
 *  org.eclipse.equinox.internal.p2.engine.phases.Uninstall
 *  org.eclipse.equinox.internal.p2.garbagecollector.GarbageCollector
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.IProvisioningAgentProvider
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.engine.IEngine
 *  org.eclipse.equinox.p2.engine.IPhaseSet
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 *  org.eclipse.equinox.p2.engine.IProvisioningPlan
 *  org.eclipse.equinox.p2.engine.PhaseSetFactory
 *  org.eclipse.equinox.p2.engine.ProvisioningContext
 *  org.eclipse.equinox.p2.engine.query.IUProfilePropertyQuery
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.planner.IPlanner
 *  org.eclipse.equinox.p2.planner.IProfileChangeRequest
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.IRepositoryReference
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 *  org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.pde.internal.core.target;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.equinox.internal.p2.director.PermissiveSlicer;
import org.eclipse.equinox.internal.p2.engine.DownloadManager;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitPhase;
import org.eclipse.equinox.internal.p2.engine.Phase;
import org.eclipse.equinox.internal.p2.engine.PhaseSet;
import org.eclipse.equinox.internal.p2.engine.ProfileMetadataRepository;
import org.eclipse.equinox.internal.p2.engine.phases.Collect;
import org.eclipse.equinox.internal.p2.engine.phases.Install;
import org.eclipse.equinox.internal.p2.engine.phases.Property;
import org.eclipse.equinox.internal.p2.engine.phases.Uninstall;
import org.eclipse.equinox.internal.p2.garbagecollector.GarbageCollector;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.IProvisioningAgentProvider;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IPhaseSet;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.engine.query.IUProfilePropertyQuery;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.planner.IPlanner;
import org.eclipse.equinox.p2.planner.IProfileChangeRequest;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;
import org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.target.IUBundleContainer;
import org.eclipse.pde.internal.core.target.LocalTargetHandle;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;
import org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;

public class P2TargetUtils {
    private static final String SOURCE_IU_ID = "org.eclipse.pde.core.target.source.bundles";
    public static URI AGENT_LOCATION;
    public static final IPath BUNDLE_POOL;
    static final IPath INSTALL_FOLDERS;
    static final String PROFILE_ID_PREFIX = "TARGET_DEFINITION:";
    static final String PROP_INSTALLED_IU = "org.eclipse.pde.core.installed_iu";
    static final String PROP_PROVISION_MODE = "org.eclipse.pde.core.provision_mode";
    static final String PROP_ALL_ENVIRONMENTS = "org.eclipse.pde.core.all_environments";
    static final String PROP_SEQUENCE_NUMBER = "org.eclipse.pde.core.sequence";
    static final String PROP_AUTO_INCLUDE_SOURCE = "org.eclipse.pde.core.autoIncludeSource";
    private static Map synchronizers;
    private IProfile fProfile;
    private boolean fIncludeAllRequired = true;
    private boolean fIncludeMultipleEnvironments = false;
    private boolean fIncludeSource = false;
    private boolean fDirty = false;
    private static final String NATIVE_ARTIFACTS = "nativeArtifacts";
    private static final String NATIVE_TYPE = "org.eclipse.equinox.p2.native";
    private static final String PARM_OPERAND = "operand";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;

    static {
        try {
            AGENT_LOCATION = URIUtil.fromString((String)("file:" + PDECore.getDefault().getStateLocation().append(".p2")));
        }
        catch (Exception exception) {}
        BUNDLE_POOL = PDECore.getDefault().getStateLocation().append(".bundle_pool");
        INSTALL_FOLDERS = PDECore.getDefault().getStateLocation().append(".install_folders");
        synchronizers = new HashMap();
    }

    public P2TargetUtils(ITargetDefinition target) {
        try {
            synchronizers.put(target.getHandle().getMemento(), this);
        }
        catch (CoreException coreException) {}
    }

    public static List cleanOrphanedTargetDefinitionProfiles() throws CoreException {
        ArrayList<String> list = new ArrayList<String>();
        IProfileRegistry registry = P2TargetUtils.getProfileRegistry();
        PDECore pDECore = PDECore.getDefault();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ITargetPlatformService tps = (ITargetPlatformService)pDECore.acquireService(clazz.getName());
        if (registry != null && tps != null) {
            IProfile[] profiles = registry.getProfiles();
            int i = 0;
            while (i < profiles.length) {
                String memento;
                ITargetHandle handle;
                IProfile profile = profiles[i];
                String id = profile.getProfileId();
                if (id.startsWith(PROFILE_ID_PREFIX) && !(handle = tps.getTarget(memento = id.substring(PROFILE_ID_PREFIX.length()))).exists()) {
                    P2TargetUtils.deleteProfile(handle);
                    list.add(id);
                }
                ++i;
            }
        }
        return list;
    }

    private static void delete(File folder) {
        File[] files = folder.listFiles();
        int i = 0;
        while (i < files.length) {
            File file = files[i];
            if (file.isDirectory()) {
                P2TargetUtils.delete(file);
            }
            file.delete();
            ++i;
        }
        folder.delete();
    }

    public static void deleteProfile(ITargetHandle handle) throws CoreException {
        IProfile profile;
        IProfileRegistry registry = P2TargetUtils.getProfileRegistry();
        if (registry != null && (profile = registry.getProfile(P2TargetUtils.getProfileId(handle))) != null) {
            File folder;
            String location = profile.getProperty("org.eclipse.equinox.p2.installFolder");
            registry.removeProfile(P2TargetUtils.getProfileId(handle));
            if (location != null && location.length() > 0 && (folder = new File(location)).exists()) {
                P2TargetUtils.delete(folder);
            }
        }
    }

    public static void garbageCollect() {
        try {
            IProfile[] profiles = P2TargetUtils.getProfileRegistry().getProfiles();
            int i = 0;
            while (i < profiles.length) {
                if (profiles[i].getProfileId().startsWith(PROFILE_ID_PREFIX)) {
                    P2TargetUtils.getGarbageCollector().runGC(profiles[i]);
                }
                ++i;
            }
        }
        catch (CoreException coreException) {
            return;
        }
    }

    private String generateEnvironmentProperties(ITargetDefinition target) {
        StringBuffer env = new StringBuffer();
        String ws = target.getWS();
        if (ws == null) {
            ws = Platform.getWS();
        }
        env.append("osgi.ws=");
        env.append(ws);
        env.append(",");
        String os = target.getOS();
        if (os == null) {
            os = Platform.getOS();
        }
        env.append("osgi.os=");
        env.append(os);
        env.append(",");
        String arch = target.getArch();
        if (arch == null) {
            arch = Platform.getOSArch();
        }
        env.append("osgi.arch=");
        env.append(arch);
        return env.toString();
    }

    private String generateNLProperty(ITargetDefinition target) {
        String nl = target.getNL();
        if (nl == null) {
            nl = Platform.getNL();
        }
        return nl;
    }

    public static IProvisioningAgent getAgent() throws CoreException {
        String filter = "(locationURI=" + String.valueOf(AGENT_LOCATION) + ")";
        ServiceReference[] serviceReferences = null;
        BundleContext context = PDECore.getDefault().getBundleContext();
        try {
            serviceReferences = context.getServiceReferences(IProvisioningAgent.SERVICE_NAME, filter);
            if (serviceReferences != null) {
                IProvisioningAgent iProvisioningAgent = (IProvisioningAgent)context.getService(serviceReferences[0]);
                return iProvisioningAgent;
            }
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
        }
        finally {
            if (serviceReferences != null) {
                context.ungetService(serviceReferences[0]);
            }
        }
        IProvisioningAgentProvider provider = (IProvisioningAgentProvider)PDECore.getDefault().acquireService(IProvisioningAgentProvider.SERVICE_NAME);
        try {
            GarbageCollector garbageCollector;
            if (provider == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_7));
            }
            IProvisioningAgent agent = provider.createAgent(AGENT_LOCATION);
            if (agent == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_7));
            }
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.equinox.internal.p2.garbagecollector.GarbageCollector");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((garbageCollector = (GarbageCollector)agent.getService(clazz.getName())) != null) {
                garbageCollector.stop();
            }
            return agent;
        }
        catch (ProvisionException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_7, (Throwable)e));
        }
    }

    public static IProvisioningAgent getGlobalAgent() throws CoreException {
        IProvisioningAgent agent = (IProvisioningAgent)PDECore.getDefault().acquireService(IProvisioningAgent.SERVICE_NAME);
        if (agent == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_11));
        }
        return agent;
    }

    public static IAgentLocation getAgentLocation() throws CoreException {
        IAgentLocation result = (IAgentLocation)P2TargetUtils.getAgent().getService(IAgentLocation.SERVICE_NAME);
        if (result == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_10));
        }
        return result;
    }

    public static IArtifactRepositoryManager getArtifactRepositoryManager() throws CoreException {
        IArtifactRepositoryManager manager;
        IProvisioningAgent iProvisioningAgent = P2TargetUtils.getAgent();
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((manager = (IArtifactRepositoryManager)iProvisioningAgent.getService(clazz.getName())) == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_3));
        }
        return manager;
    }

    public static IFileArtifactRepository getBundlePool() throws CoreException {
        URI uri = BUNDLE_POOL.toFile().toURI();
        IArtifactRepositoryManager manager = P2TargetUtils.getArtifactRepositoryManager();
        try {
            if (manager.contains(uri)) {
                return (IFileArtifactRepository)manager.loadRepository(uri, null);
            }
        }
        catch (CoreException coreException) {}
        String repoName = "PDE Target Bundle Pool";
        IArtifactRepository result = manager.createRepository(uri, repoName, "org.eclipse.equinox.p2.artifact.repository.simpleRepository", null);
        return (IFileArtifactRepository)result;
    }

    public static IEngine getEngine() throws CoreException {
        IEngine engine;
        IProvisioningAgent iProvisioningAgent = P2TargetUtils.getAgent();
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.equinox.p2.engine.IEngine");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((engine = (IEngine)iProvisioningAgent.getService(clazz.getName())) == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_4));
        }
        return engine;
    }

    public static GarbageCollector getGarbageCollector() throws CoreException {
        GarbageCollector engine;
        IProvisioningAgent iProvisioningAgent = P2TargetUtils.getAgent();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.equinox.internal.p2.garbagecollector.GarbageCollector");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((engine = (GarbageCollector)iProvisioningAgent.getService(clazz.getName())) == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_9));
        }
        return engine;
    }

    public static IPlanner getPlanner() throws CoreException {
        IPlanner planner;
        IProvisioningAgent iProvisioningAgent = P2TargetUtils.getAgent();
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.equinox.p2.planner.IPlanner");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((planner = (IPlanner)iProvisioningAgent.getService(clazz.getName())) == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_5));
        }
        return planner;
    }

    public static IPreferencesService getPreferences() {
        PDECore pDECore = PDECore.getDefault();
        Class<?> clazz = class$5;
        if (clazz == null) {
            try {
                clazz = class$5 = Class.forName("org.eclipse.core.runtime.preferences.IPreferencesService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IPreferencesService)pDECore.acquireService(clazz.getName());
    }

    private boolean checkProfile(ITargetDefinition target) throws CoreException {
        if (this.fProfile == null) {
            return false;
        }
        if (this.fDirty) {
            return false;
        }
        String profileNumber = this.fProfile.getProperty(PROP_SEQUENCE_NUMBER);
        if (Integer.toString(((TargetDefinition)target).getSequenceNumber()).equals(profileNumber)) {
            return true;
        }
        boolean all = false;
        String value = this.fProfile.getProperty(PROP_ALL_ENVIRONMENTS);
        if (value != null) {
            all = Boolean.valueOf(value);
            if (!Boolean.toString(this.getIncludeAllEnvironments()).equals(value)) {
                return false;
            }
        }
        String property = null;
        if (!all && !(property = this.generateEnvironmentProperties(target)).equals(value = this.fProfile.getProperty("org.eclipse.equinox.p2.environments"))) {
            return false;
        }
        property = this.generateNLProperty(target);
        if (!property.equals(value = this.fProfile.getProperty("org.eclipse.equinox.p2.nl"))) {
            return false;
        }
        if (!this.getProvisionMode(target).equals(this.fProfile.getProperty(PROP_PROVISION_MODE))) {
            return false;
        }
        if (this.getIncludeSource() != Boolean.valueOf(this.fProfile.getProperty(PROP_AUTO_INCLUDE_SOURCE)).booleanValue()) {
            return false;
        }
        IUProfilePropertyQuery propertyQuery = new IUProfilePropertyQuery(PROP_INSTALLED_IU, Boolean.toString(true));
        IQueryResult queryResult = this.fProfile.query((IQuery)propertyQuery, null);
        Iterator iterator = queryResult.iterator();
        HashSet<NameVersionDescriptor> installedIUs = new HashSet<NameVersionDescriptor>();
        while (iterator.hasNext()) {
            IInstallableUnit unit = (IInstallableUnit)iterator.next();
            installedIUs.add(new NameVersionDescriptor(unit.getId(), unit.getVersion().toString()));
        }
        IBundleContainer[] containers = target.getBundleContainers();
        if (containers == null) {
            return installedIUs.isEmpty();
        }
        int i = 0;
        while (i < containers.length) {
            if (containers[i] instanceof IUBundleContainer) {
                IUBundleContainer bc = (IUBundleContainer)containers[i];
                String[] ids = bc.getIds();
                Version[] versions = bc.getVersions();
                int j = 0;
                while (j < versions.length) {
                    if (!installedIUs.remove(new NameVersionDescriptor(ids[j], versions[j].toString()))) {
                        return false;
                    }
                    ++j;
                }
            }
            ++i;
        }
        return installedIUs.isEmpty();
    }

    public void setIncludeAllRequired(boolean value) {
        this.fIncludeAllRequired = value;
    }

    public boolean getIncludeAllRequired() {
        return this.fIncludeAllRequired;
    }

    public void setIncludeAllEnvironments(boolean value) {
        this.fIncludeMultipleEnvironments = value;
    }

    public boolean getIncludeAllEnvironments() {
        return this.fIncludeMultipleEnvironments;
    }

    public void setIncludeSource(boolean value) {
        this.fIncludeSource = value;
    }

    public boolean getIncludeSource() {
        return this.fIncludeSource;
    }

    public static boolean isResolved(ITargetDefinition target) {
        P2TargetUtils synchronizer = P2TargetUtils.getSynchronizer(target);
        if (synchronizer == null) {
            return false;
        }
        try {
            return synchronizer.checkProfile(target);
        }
        catch (CoreException coreException) {
            return false;
        }
    }

    static synchronized P2TargetUtils getSynchronizer(ITargetDefinition target) {
        try {
            String memento = target.getHandle().getMemento();
            P2TargetUtils result = (P2TargetUtils)synchronizers.get(memento);
            if (result != null) {
                return result;
            }
            result = new P2TargetUtils(target);
            synchronizers.put(memento, result);
            return result;
        }
        catch (CoreException e) {
            throw new IllegalStateException(e.toString());
        }
    }

    public static IQueryResult getIUs(ITargetDefinition target, IProgressMonitor monitor) throws CoreException {
        P2TargetUtils synchronizer = P2TargetUtils.getSynchronizer(target);
        if (synchronizer == null) {
            return null;
        }
        synchronizer.synchronize(target, monitor);
        return synchronizer.getProfile().query(QueryUtil.createIUAnyQuery(), null);
    }

    public synchronized void synchronize(ITargetDefinition target, IProgressMonitor monitor) throws CoreException {
        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)100);
        if (this.fProfile == null) {
            this.fProfile = P2TargetUtils.getProfileRegistry().getProfile(P2TargetUtils.getProfileId(target));
        }
        if (this.fProfile != null && this.checkProfile(target)) {
            this.notify(target, (IProgressMonitor)progress.newChild(25));
            return;
        }
        P2TargetUtils.deleteProfile(target.getHandle());
        this.createProfile(target);
        if (progress.isCanceled()) {
            return;
        }
        progress.setWorkRemaining(75);
        if (this.getIncludeAllRequired()) {
            this.resolveWithPlanner(target, (IProgressMonitor)progress.newChild(60));
        } else {
            this.resolveWithSlicer(target, (IProgressMonitor)progress.newChild(60));
        }
        this.notify(target, (IProgressMonitor)progress.newChild(15));
        this.fDirty = false;
    }

    private void createProfile(ITargetDefinition target) throws CoreException, ProvisionException {
        IProfileRegistry registry = P2TargetUtils.getProfileRegistry();
        if (registry == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.AbstractTargetHandle_0));
        }
        HashMap<String, String> properties = new HashMap<String, String>();
        properties.put("org.eclipse.equinox.p2.installFolder", INSTALL_FOLDERS.append(Long.toString(LocalTargetHandle.nextTimeStamp())).toOSString());
        properties.put("org.eclipse.equinox.p2.cache", BUNDLE_POOL.toOSString());
        properties.put("org.eclipse.update.install.features", Boolean.TRUE.toString());
        properties.put("org.eclipse.equinox.p2.environments", this.generateEnvironmentProperties(target));
        properties.put("org.eclipse.equinox.p2.nl", this.generateNLProperty(target));
        properties.put(PROP_SEQUENCE_NUMBER, Integer.toString(((TargetDefinition)target).getSequenceNumber()));
        properties.put(PROP_PROVISION_MODE, this.getProvisionMode(target));
        properties.put(PROP_ALL_ENVIRONMENTS, Boolean.toString(this.getIncludeAllEnvironments()));
        properties.put(PROP_AUTO_INCLUDE_SOURCE, Boolean.toString(this.getIncludeSource()));
        this.fProfile = registry.addProfile(P2TargetUtils.getProfileId(target), properties);
    }

    private void notify(ITargetDefinition target, IProgressMonitor monitor) throws CoreException {
        ((TargetDefinition)target).flushCaches(BUNDLE_POOL.toOSString());
        IBundleContainer[] containers = target.getBundleContainers();
        if (containers != null) {
            int i = 0;
            while (i < containers.length) {
                IBundleContainer container = containers[i];
                if (container instanceof IUBundleContainer) {
                    ((IUBundleContainer)container).synchronizerChanged(target);
                }
                ++i;
            }
        }
    }

    private static String getProfileId(ITargetHandle handle) throws CoreException {
        StringBuffer buffer = new StringBuffer();
        buffer.append(PROFILE_ID_PREFIX);
        buffer.append(handle.getMemento());
        return buffer.toString();
    }

    public static String getProfileId(ITargetDefinition definition) {
        try {
            return P2TargetUtils.getProfileId(definition.getHandle());
        }
        catch (CoreException coreException) {
            return null;
        }
    }

    public static IProfileRegistry getProfileRegistry() throws CoreException {
        IProfileRegistry result = (IProfileRegistry)P2TargetUtils.getAgent().getService(IProfileRegistry.SERVICE_NAME);
        if (result == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_8));
        }
        return result;
    }

    private String getProvisionMode(ITargetDefinition target) {
        return this.getIncludeAllRequired() ? "planner" : "slicer";
    }

    public static IMetadataRepositoryManager getRepoManager() throws CoreException {
        IMetadataRepositoryManager manager = (IMetadataRepositoryManager)P2TargetUtils.getAgent().getService(IMetadataRepositoryManager.SERVICE_NAME);
        if (manager == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.IUBundleContainer_2));
        }
        return manager;
    }

    static IQueryable getQueryableMetadata(URI[] repos, IProgressMonitor monitor) throws CoreException {
        IMetadataRepositoryManager manager = P2TargetUtils.getRepoManager();
        if (repos == null) {
            repos = manager.getKnownRepositories(0);
        }
        SubProgressMonitor loadMonitor = new SubProgressMonitor(monitor, 10);
        int repoCount = repos.length;
        loadMonitor.beginTask(null, repoCount * 10);
        ArrayList<IMetadataRepository> result = new ArrayList<IMetadataRepository>(repoCount);
        MultiStatus repoStatus = new MultiStatus("org.eclipse.pde.core", 0, Messages.IUBundleContainer_ProblemsLoadingRepositories, null);
        int i = 0;
        while (i < repoCount) {
            try {
                result.add(manager.loadRepository(repos[i], (IProgressMonitor)new SubProgressMonitor((IProgressMonitor)loadMonitor, 10)));
            }
            catch (ProvisionException e) {
                repoStatus.add(e.getStatus());
            }
            ++i;
        }
        loadMonitor.done();
        if (result.size() != repos.length) {
            throw new CoreException((IStatus)repoStatus);
        }
        if (result.size() == 1) {
            return (IQueryable)result.get(0);
        }
        return QueryUtil.compoundQueryable(result);
    }

    private void resolveWithPlanner(ITargetDefinition target, IProgressMonitor monitor) throws CoreException {
        SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.IUBundleContainer_0, (int)200);
        IInstallableUnit[] units = this.getRootIUs(target);
        if (subMonitor.isCanceled()) {
            return;
        }
        IPlanner planner = P2TargetUtils.getPlanner();
        IProfileChangeRequest request = planner.createChangeRequest(this.fProfile);
        this.computeRemovals(this.fProfile, request, this.getIncludeSource());
        request.addAll(Arrays.asList(units));
        int i = 0;
        while (i < units.length) {
            IInstallableUnit unit = units[i];
            request.setInstallableUnitProfileProperty(unit, PROP_INSTALLED_IU, Boolean.toString(true));
            ++i;
        }
        ProvisioningContext context = new ProvisioningContext(P2TargetUtils.getAgent());
        context.setMetadataRepositories(this.getMetadataRepositories(target));
        context.setArtifactRepositories(this.getArtifactRepositories(target));
        if (subMonitor.isCanceled()) {
            return;
        }
        IProvisioningPlan plan = planner.getProvisioningPlan(request, context, (IProgressMonitor)subMonitor.newChild(20));
        IStatus status = plan.getStatus();
        if (!status.isOK()) {
            throw new CoreException(status);
        }
        this.setPlanProperties(plan, target, "planner");
        IProvisioningPlan installerPlan = plan.getInstallerPlan();
        if (installerPlan != null) {
            PDECore.log((IStatus)new Status(1, "org.eclipse.pde.core", Messages.IUBundleContainer_6));
        }
        subMonitor.worked(10);
        if (subMonitor.isCanceled()) {
            return;
        }
        IPhaseSet phases = this.createPhaseSet();
        IEngine engine = P2TargetUtils.getEngine();
        IStatus result = engine.perform(plan, phases, (IProgressMonitor)subMonitor.newChild(100));
        if (subMonitor.isCanceled()) {
            return;
        }
        if (!result.isOK()) {
            throw new CoreException(result);
        }
        try {
            this.planInSourceBundles(this.fProfile, context, (IProgressMonitor)subMonitor.newChild(60));
        }
        catch (CoreException e) {
            P2TargetUtils.getProfileRegistry().removeProfile(this.fProfile.getProfileId(), this.fProfile.getTimestamp());
            throw e;
        }
    }

    private void setPlanProperties(IProvisioningPlan plan, ITargetDefinition definition, String mode) {
        plan.setProfileProperty(PROP_PROVISION_MODE, mode);
        plan.setProfileProperty(PROP_ALL_ENVIRONMENTS, Boolean.toString(this.getIncludeAllEnvironments()));
        plan.setProfileProperty(PROP_AUTO_INCLUDE_SOURCE, Boolean.toString(this.getIncludeSource()));
        plan.setProfileProperty(PROP_SEQUENCE_NUMBER, Integer.toString(((TargetDefinition)definition).getSequenceNumber()));
    }

    private IPhaseSet createPhaseSet() {
        ArrayList<Object> phases = new ArrayList<Object>(4);
        phases.add(new Collect(100));
        phases.add(new Property(1));
        phases.add(new Uninstall(50, true));
        phases.add(new Install(50));
        phases.add((Object)new CollectNativesPhase(100));
        return new PhaseSet(phases.toArray(new Phase[phases.size()]));
    }

    private void computeRemovals(IProfile profile, IProfileChangeRequest request, boolean includeSource) {
        IInstallableUnit sourceIU;
        if (!includeSource && (sourceIU = this.getCurrentSourceIU((IQueryable)profile)) != null) {
            request.remove(sourceIU);
        }
        IUProfilePropertyQuery query = new IUProfilePropertyQuery(PROP_INSTALLED_IU, Boolean.toString(true));
        IQueryResult installedIUs = profile.query((IQuery)query, null);
        request.removeAll((Collection)installedIUs.toSet());
    }

    private void planInSourceBundles(IProfile fProfile, ProvisioningContext context, IProgressMonitor monitor) throws CoreException {
        SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.P2TargetUtils_ProvisioningSourceTask, (int)100);
        IInstallableUnit currentSourceIU = this.getCurrentSourceIU((IQueryable)fProfile);
        Version sourceVersion = Version.createOSGi((int)1, (int)0, (int)0);
        if (currentSourceIU != null) {
            Integer major = (Integer)currentSourceIU.getVersion().getSegment(0);
            sourceVersion = Version.createOSGi((int)(major + 1), (int)0, (int)0);
        }
        IInstallableUnit sourceIU = this.createSourceIU((IQueryable)fProfile, sourceVersion);
        IPlanner planner = P2TargetUtils.getPlanner();
        IProfileChangeRequest request = planner.createChangeRequest(fProfile);
        if (currentSourceIU != null) {
            request.remove(currentSourceIU);
        }
        request.add(sourceIU);
        IProvisioningPlan plan = planner.getProvisioningPlan(request, context, (IProgressMonitor)subMonitor.newChild(25));
        IStatus status = plan.getStatus();
        if (!status.isOK()) {
            throw new CoreException(status);
        }
        if (subMonitor.isCanceled()) {
            return;
        }
        long oldTimestamp = fProfile.getTimestamp();
        IPhaseSet phases = PhaseSetFactory.createDefaultPhaseSetExcluding((String[])new String[]{PhaseSetFactory.PHASE_CHECK_TRUST, PhaseSetFactory.PHASE_CONFIGURE, PhaseSetFactory.PHASE_UNCONFIGURE, PhaseSetFactory.PHASE_UNINSTALL});
        IEngine engine = P2TargetUtils.getEngine();
        plan.setProfileProperty(PROP_PROVISION_MODE, "planner");
        plan.setProfileProperty(PROP_ALL_ENVIRONMENTS, Boolean.toString(false));
        IStatus result = engine.perform(plan, phases, (IProgressMonitor)subMonitor.newChild(75));
        if (subMonitor.isCanceled()) {
            return;
        }
        if (!result.isOK()) {
            throw new CoreException(result);
        }
        P2TargetUtils.getProfileRegistry().removeProfile(fProfile.getProfileId(), oldTimestamp);
    }

    private IInstallableUnit createSourceIU(IQueryable queryable, Version iuVersion) {
        IRequirement bundleRequirement = MetadataFactory.createRequirement((String)"org.eclipse.equinox.p2.eclipse.type", (String)"bundle", null, null, (boolean)false, (boolean)false, (boolean)false);
        IQueryResult profileIUs = queryable.query(QueryUtil.createIUAnyQuery(), null);
        ArrayList<IRequirement> requirements = new ArrayList<IRequirement>();
        Iterator i = profileIUs.iterator();
        while (i.hasNext()) {
            IInstallableUnit profileIU = (IInstallableUnit)i.next();
            if (!profileIU.satisfies(bundleRequirement)) continue;
            String id = String.valueOf(profileIU.getId()) + ".source";
            Version version = profileIU.getVersion();
            VersionRange range = new VersionRange(version, true, version, true);
            IRequirement sourceRequirement = MetadataFactory.createRequirement((String)"osgi.bundle", (String)id, (VersionRange)range, null, (boolean)true, (boolean)false, (boolean)true);
            requirements.add(sourceRequirement);
        }
        MetadataFactory.InstallableUnitDescription sourceDescription = new MetadataFactory.InstallableUnitDescription();
        sourceDescription.setSingleton(true);
        sourceDescription.setId(SOURCE_IU_ID);
        sourceDescription.setVersion(iuVersion);
        sourceDescription.addRequirements(requirements);
        IProvidedCapability capability = MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.iu", (String)SOURCE_IU_ID, (Version)iuVersion);
        sourceDescription.setCapabilities(new IProvidedCapability[]{capability});
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)sourceDescription);
    }

    private IInstallableUnit getCurrentSourceIU(IQueryable queryable) {
        IQuery query = QueryUtil.createIUQuery((String)SOURCE_IU_ID);
        IQueryResult list = queryable.query(query, null);
        IInstallableUnit currentSourceIU = null;
        if (!list.isEmpty()) {
            currentSourceIU = (IInstallableUnit)list.iterator().next();
        }
        return currentSourceIU;
    }

    private void resolveWithSlicer(ITargetDefinition target, IProgressMonitor monitor) throws CoreException {
        SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.IUBundleContainer_0, (int)100);
        IInstallableUnit[] units = this.getRootIUs(target);
        if (subMonitor.isCanceled()) {
            return;
        }
        URI[] repositories = this.getMetadataRepositories(target);
        int repoCount = repositories.length;
        if (repoCount == 0) {
            return;
        }
        IQueryable allMetadata = P2TargetUtils.getQueryableMetadata(repositories, (IProgressMonitor)subMonitor.newChild(10));
        IQueryResult queryResult = this.slice(units, allMetadata, target, (IProgressMonitor)subMonitor.newChild(10));
        if (subMonitor.isCanceled() || queryResult == null || queryResult.isEmpty()) {
            return;
        }
        if (this.getIncludeSource()) {
            IInstallableUnit sourceIU = this.createSourceIU((IQueryable)queryResult, Version.createOSGi((int)1, (int)0, (int)0));
            IInstallableUnit[] units2 = new IInstallableUnit[units.length + 1];
            System.arraycopy(units, 0, units2, 0, units.length);
            units2[units.length] = sourceIU;
            queryResult = this.slice(units2, allMetadata, target, (IProgressMonitor)subMonitor.newChild(10));
            if (subMonitor.isCanceled() || queryResult == null || queryResult.isEmpty()) {
                return;
            }
        }
        IEngine engine = P2TargetUtils.getEngine();
        ProvisioningContext context = new ProvisioningContext(P2TargetUtils.getAgent());
        context.setMetadataRepositories(repositories);
        context.setArtifactRepositories(this.getArtifactRepositories(target));
        IProvisioningPlan plan = engine.createPlan(this.fProfile, context);
        this.setPlanProperties(plan, target, "slicer");
        Set newSet = queryResult.toSet();
        Iterator itor = newSet.iterator();
        while (itor.hasNext()) {
            plan.addInstallableUnit((IInstallableUnit)itor.next());
        }
        int i = 0;
        while (i < units.length) {
            IInstallableUnit unit = units[i];
            plan.setInstallableUnitProfileProperty(unit, PROP_INSTALLED_IU, Boolean.toString(true));
            ++i;
        }
        Set toRemove = this.fProfile.query(QueryUtil.ALL_UNITS, null).toSet();
        toRemove.removeAll(newSet);
        Iterator i2 = toRemove.iterator();
        while (i2.hasNext()) {
            plan.removeInstallableUnit((IInstallableUnit)i2.next());
        }
        if (subMonitor.isCanceled()) {
            return;
        }
        subMonitor.worked(10);
        IPhaseSet phases = this.createPhaseSet();
        IStatus result = engine.perform(plan, phases, (IProgressMonitor)subMonitor.newChild(60));
        if (!result.isOK()) {
            throw new CoreException(result);
        }
    }

    private IQueryResult slice(IInstallableUnit[] units, IQueryable allMetadata, ITargetDefinition definition, IProgressMonitor monitor) throws CoreException {
        SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (int)100);
        PermissiveSlicer slicer = null;
        if (this.getIncludeAllEnvironments()) {
            slicer = new PermissiveSlicer(allMetadata, new HashMap(), true, false, true, true, false);
        } else {
            HashMap<String, String> props = new HashMap<String, String>();
            props.put("osgi.os", definition.getOS() != null ? definition.getOS() : Platform.getOS());
            props.put("osgi.ws", definition.getWS() != null ? definition.getWS() : Platform.getWS());
            props.put("osgi.arch", definition.getArch() != null ? definition.getArch() : Platform.getOSArch());
            props.put("osgi.nl", definition.getNL() != null ? definition.getNL() : Platform.getNL());
            props.put("org.eclipse.update.install.features", Boolean.TRUE.toString());
            slicer = new PermissiveSlicer(allMetadata, props, true, false, false, true, false);
        }
        IQueryable slice = slicer.slice(units, (IProgressMonitor)subMonitor.newChild(50));
        MultiStatus sliceStatus = slicer.getStatus();
        if (sliceStatus.getSeverity() == 4) {
            throw new CoreException((IStatus)sliceStatus);
        }
        IQueryResult queryResult = null;
        if (slice != null) {
            queryResult = slice.query(QueryUtil.createIUAnyQuery(), (IProgressMonitor)subMonitor.newChild(50));
        }
        if (!sliceStatus.isOK() && !queryResult.iterator().hasNext()) {
            throw new CoreException((IStatus)sliceStatus);
        }
        return queryResult;
    }

    private URI[] getArtifactRepositories(ITargetDefinition target) throws CoreException {
        HashSet<URI> result = new HashSet<URI>();
        IBundleContainer[] containers = target.getBundleContainers();
        IArtifactRepositoryManager manager = P2TargetUtils.getArtifactRepositoryManager();
        int i = 0;
        while (i < containers.length) {
            IBundleContainer container = containers[i];
            if (container instanceof IUBundleContainer) {
                URI[] repos = ((IUBundleContainer)container).getRepositories();
                if (repos == null) {
                    repos = manager.getKnownRepositories(0);
                }
                result.addAll(Arrays.asList(repos));
            }
            ++i;
        }
        if (this.useAdditionalLocalArtifacts()) {
            result.addAll(Arrays.asList(manager.getKnownRepositories(0)));
            this.findProfileRepos(result);
            this.findWorkspaceRepos(result);
        }
        return result.toArray(new URI[result.size()]);
    }

    private boolean useAdditionalLocalArtifacts() {
        return true;
    }

    private void findWorkspaceRepos(Set additionalRepos) {
        IPreferencesService prefs = P2TargetUtils.getPreferences();
        if (prefs == null) {
            return;
        }
        String recent = prefs.getString("org.eclipse.ui.ide", "RECENT_WORKSPACES", null, null);
        if (recent == null) {
            return;
        }
        String[] recents = recent.split("\n");
        int i = 0;
        while (i < recents.length) {
            String bundlePool = String.valueOf(recents[i]) + "/.metadata/.plugins/org.eclipse.pde.core/.bundle_pool";
            if (new File(bundlePool).exists()) {
                try {
                    URI uri = new URI("file", bundlePool, null);
                    additionalRepos.add(uri);
                }
                catch (URISyntaxException uRISyntaxException) {}
            }
            ++i;
        }
    }

    private void findProfileRepos(Set additionalRepos) {
        try {
            IProfileRegistry profileRegistry = (IProfileRegistry)P2TargetUtils.getGlobalAgent().getService(IProfileRegistry.SERVICE_NAME);
            if (profileRegistry == null) {
                return;
            }
            IProfile self = profileRegistry.getProfile("_SELF_");
            if (self == null) {
                return;
            }
            IAgentLocation location = (IAgentLocation)P2TargetUtils.getGlobalAgent().getService(IAgentLocation.SERVICE_NAME);
            URI dataArea = location.getDataArea("org.eclipse.equinox.p2.engine");
            dataArea = URIUtil.append((URI)dataArea, (String)("profileRegistry/" + self.getProfileId() + ".profile"));
            ProfileMetadataRepository profileRepo = new ProfileMetadataRepository(P2TargetUtils.getGlobalAgent(), dataArea, null);
            Collection repos = profileRepo.getReferences();
            Iterator i = repos.iterator();
            while (i.hasNext()) {
                IRepositoryReference reference;
                Object element = i.next();
                if (!(element instanceof IRepositoryReference) || (reference = (IRepositoryReference)element).getType() != 1 || reference.getLocation() == null) continue;
                additionalRepos.add(reference.getLocation());
            }
        }
        catch (CoreException coreException) {
            return;
        }
    }

    private IInstallableUnit[] getRootIUs(ITargetDefinition definition) throws CoreException {
        HashSet result = new HashSet();
        IBundleContainer[] containers = definition.getBundleContainers();
        int i = 0;
        while (i < containers.length) {
            IBundleContainer container = containers[i];
            if (container instanceof IUBundleContainer) {
                IUBundleContainer iuContainer = (IUBundleContainer)container;
                IQueryable repos = P2TargetUtils.getQueryableMetadata(iuContainer.getRepositories(), (IProgressMonitor)new NullProgressMonitor());
                String[] ids = iuContainer.getIds();
                Version[] versions = iuContainer.getVersions();
                int j = 0;
                while (j < ids.length) {
                    IQuery query = QueryUtil.createIUQuery((String)ids[j], (Version)versions[j]);
                    IQueryResult queryResult = repos.query(query, null);
                    if (queryResult.isEmpty()) {
                        throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.IUBundleContainer_1, (Object)ids[j])));
                    }
                    result.add(queryResult.iterator().next());
                    ++j;
                }
            }
            ++i;
        }
        return result.toArray(new IInstallableUnit[result.size()]);
    }

    private URI[] getMetadataRepositories(ITargetDefinition target) throws CoreException {
        HashSet<URI> result = new HashSet<URI>();
        IBundleContainer[] containers = target.getBundleContainers();
        IMetadataRepositoryManager manager = P2TargetUtils.getRepoManager();
        int i = 0;
        while (i < containers.length) {
            IBundleContainer container = containers[i];
            if (container instanceof IUBundleContainer) {
                URI[] repos = ((IUBundleContainer)container).getRepositories();
                if (repos == null) {
                    repos = manager.getKnownRepositories(0);
                }
                result.addAll(Arrays.asList(repos));
            }
            ++i;
        }
        return result.toArray(new URI[result.size()]);
    }

    IProfile getProfile() {
        return this.fProfile;
    }

    void markDirty() {
        this.fDirty = true;
    }

    protected static class CollectNativesAction
    extends ProvisioningAction {
        protected CollectNativesAction() {
        }

        public IStatus execute(Map parameters) {
            InstallableUnitOperand operand = (InstallableUnitOperand)parameters.get(P2TargetUtils.PARM_OPERAND);
            IInstallableUnit installableUnit = operand.second();
            if (installableUnit == null) {
                return Status.OK_STATUS;
            }
            try {
                Collection toDownload = installableUnit.getArtifacts();
                if (toDownload == null) {
                    return Status.OK_STATUS;
                }
                List artifactRequests = (List)parameters.get(P2TargetUtils.NATIVE_ARTIFACTS);
                IFileArtifactRepository destinationArtifactRepository = P2TargetUtils.getBundlePool();
                IArtifactRepositoryManager manager = P2TargetUtils.getArtifactRepositoryManager();
                Iterator i = toDownload.iterator();
                while (i.hasNext()) {
                    IArtifactKey keyToDownload = (IArtifactKey)i.next();
                    IArtifactRequest request = manager.createMirrorRequest(keyToDownload, (IArtifactRepository)destinationArtifactRepository, null, null);
                    artifactRequests.add(request);
                }
            }
            catch (CoreException e) {
                return e.getStatus();
            }
            return Status.OK_STATUS;
        }

        public IStatus undo(Map parameters) {
            return Status.OK_STATUS;
        }
    }

    protected static class CollectNativesPhase
    extends InstallableUnitPhase {
        public CollectNativesPhase(int weight) {
            super(P2TargetUtils.NATIVE_ARTIFACTS, weight);
        }

        protected List getActions(InstallableUnitOperand operand) {
            IInstallableUnit unit = operand.second();
            if (unit != null && unit.getTouchpointType().getId().equals(P2TargetUtils.NATIVE_TYPE)) {
                return Collections.singletonList(new CollectNativesAction());
            }
            return null;
        }

        protected IStatus initializePhase(IProgressMonitor monitor, IProfile profile, Map parameters) {
            parameters.put(P2TargetUtils.NATIVE_ARTIFACTS, new ArrayList());
            parameters.put("profile", profile);
            return null;
        }

        protected IStatus completePhase(IProgressMonitor monitor, IProfile profile, Map parameters) {
            List artifactRequests = (List)parameters.get(P2TargetUtils.NATIVE_ARTIFACTS);
            ProvisioningContext context = (ProvisioningContext)parameters.get("context");
            IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
            DownloadManager dm = new DownloadManager(context, agent);
            Iterator i = artifactRequests.iterator();
            while (i.hasNext()) {
                dm.add((IArtifactRequest)i.next());
            }
            return dm.start(monitor);
        }
    }
}

