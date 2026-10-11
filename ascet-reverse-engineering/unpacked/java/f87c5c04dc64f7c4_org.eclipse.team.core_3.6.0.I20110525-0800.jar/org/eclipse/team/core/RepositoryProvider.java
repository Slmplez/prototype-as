/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFileModificationValidator
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.IProjectNature
 *  org.eclipse.core.resources.IProjectNatureDescriptor
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceProxy
 *  org.eclipse.core.resources.IResourceProxyVisitor
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.team.FileModificationValidationContext
 *  org.eclipse.core.resources.team.FileModificationValidator
 *  org.eclipse.core.resources.team.IMoveDeleteHook
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core;

import java.net.URI;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFileModificationValidator;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IProjectNature;
import org.eclipse.core.resources.IProjectNatureDescriptor;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.team.FileModificationValidationContext;
import org.eclipse.core.resources.team.FileModificationValidator;
import org.eclipse.core.resources.team.IMoveDeleteHook;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.RepositoryProviderType;
import org.eclipse.team.core.Team;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.history.IFileHistoryProvider;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.PessimisticResourceRuleFactory;
import org.eclipse.team.internal.core.RepositoryProviderManager;
import org.eclipse.team.internal.core.TeamHookDispatcher;
import org.eclipse.team.internal.core.TeamPlugin;

public abstract class RepositoryProvider
implements IProjectNature,
IAdaptable {
    private static final String TEAM_SETID = "org.eclipse.team.repository-provider";
    private static final List AllProviderTypeIds = RepositoryProvider.initializeAllProviderTypes();
    private IProject project;
    private static final ILock mappingLock = Job.getJobManager().newLock();
    private static final Object NOT_MAPPED = new Object();

    /*
     * Unable to fully structure code
     */
    public static void map(IProject project, String id) throws TeamException {
        rule = ResourcesPlugin.getWorkspace().getRuleFactory().modifyRule((IResource)project);
        try {
            block15: {
                Job.getJobManager().beginRule(rule, null);
                RepositoryProvider.mappingLock.acquire();
                existingProvider = null;
                if (project.getPersistentProperty(TeamPlugin.PROVIDER_PROP_KEY) != null) {
                    existingProvider = RepositoryProvider.getProvider(project);
                }
                if (existingProvider == null) ** GOTO lbl19
                if (!existingProvider.getID().equals(id)) break block15;
                {
                    catch (Throwable var7_8) {
                        throw var7_8;
                    }
                }
                RepositoryProvider.mappingLock.release();
                return;
            }
            try {
                try {
                    RepositoryProvider.unmap(project);
lbl19:
                    // 2 sources

                    provider = RepositoryProvider.mapNewProvider(project, id);
                    try {
                        project.setPersistentProperty(TeamPlugin.PROVIDER_PROP_KEY, id);
                    }
                    catch (CoreException outer) {
                        try {
                            project.setSessionProperty(TeamPlugin.PROVIDER_PROP_KEY, null);
                        }
                        catch (CoreException inner) {
                            TeamPlugin.log(4, NLS.bind((String)Messages.RepositoryProvider_couldNotClearAfterError, (Object[])new String[]{project.getName(), id}), inner);
                        }
                        throw outer;
                    }
                    provider.configure();
                    project.touch(null);
                    TeamHookDispatcher.setProviderRuleFactory(project, provider.getRuleFactory());
                    RepositoryProviderManager.getInstance().providerMapped(provider);
                }
                finally {
                    RepositoryProvider.mappingLock.release();
                }
            }
            catch (CoreException e) {
                throw TeamPlugin.wrapException(e);
            }
        }
        finally {
            Job.getJobManager().endRule(rule);
        }
    }

    private static RepositoryProvider mapNewProvider(final IProject project, final String id) throws TeamException {
        RepositoryProvider provider = RepositoryProvider.newProvider(id);
        if (provider == null) {
            throw new TeamException(NLS.bind((String)Messages.RepositoryProvider_couldNotInstantiateProvider, (Object[])new String[]{project.getName(), id}));
        }
        if (!provider.canHandleLinkedResourceURI()) {
            try {
                project.accept(new IResourceProxyVisitor(){

                    public boolean visit(IResourceProxy proxy) throws CoreException {
                        if (!(!proxy.isLinked() || RepositoryProvider.this.canHandleLinkedResources() && proxy.requestFullPath().segmentCount() <= 2 && "file".equals(proxy.requestResource().getLocationURI().getScheme()))) {
                            throw new TeamException((IStatus)new Status(4, "org.eclipse.team.core", 378, NLS.bind((String)Messages.RepositoryProvider_linkedURIsExist, (Object[])new String[]{project.getName(), id}), null));
                        }
                        return true;
                    }
                }, 0);
            }
            catch (CoreException e) {
                if (e instanceof TeamException) {
                    TeamException te = (TeamException)e;
                    throw te;
                }
                throw new TeamException(e);
            }
        }
        if (!provider.canHandleLinkedResources()) {
            try {
                IResource[] members = project.members();
                int i = 0;
                while (i < members.length) {
                    IResource resource = members[i];
                    if (resource.isLinked()) {
                        throw new TeamException((IStatus)new Status(4, "org.eclipse.team.core", 378, NLS.bind((String)Messages.RepositoryProvider_linkedResourcesExist, (Object[])new String[]{project.getName(), id}), null));
                    }
                    ++i;
                }
            }
            catch (CoreException e) {
                throw TeamPlugin.wrapException(e);
            }
        }
        try {
            project.setSessionProperty(TeamPlugin.PROVIDER_PROP_KEY, (Object)provider);
            provider.setProject(project);
        }
        catch (CoreException e) {
            throw TeamPlugin.wrapException(e);
        }
        return provider;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static RepositoryProvider mapExistingProvider(IProject project, String id) throws TeamException {
        try {
            block8: {
                mappingLock.acquire();
                try {
                    String currentId = project.getPersistentProperty(TeamPlugin.PROVIDER_PROP_KEY);
                    if (currentId == null) {
                        return null;
                    }
                    if (currentId.equals(id)) break block8;
                }
                catch (CoreException e) {
                    throw TeamPlugin.wrapException(e);
                }
                RepositoryProvider repositoryProvider = RepositoryProvider.lookupProviderProp(project);
                return repositoryProvider;
            }
            RepositoryProvider repositoryProvider = RepositoryProvider.mapNewProvider(project, id);
            return repositoryProvider;
        }
        finally {
            mappingLock.release();
        }
    }

    public static void unmap(IProject project) throws TeamException {
        ISchedulingRule rule = ResourcesPlugin.getWorkspace().getRuleFactory().modifyRule((IResource)project);
        try {
            try {
                Job.getJobManager().beginRule(rule, null);
                try {
                    mappingLock.acquire();
                    String id = project.getPersistentProperty(TeamPlugin.PROVIDER_PROP_KEY);
                    if (id == null) {
                        throw new TeamException(NLS.bind((String)Messages.RepositoryProvider_No_Provider_Registered, (Object[])new String[]{project.getName()}));
                    }
                    RepositoryProvider provider = RepositoryProvider.getProvider(project);
                    if (provider == null) {
                        TeamPlugin.log(4, NLS.bind((String)Messages.RepositoryProvider_couldNotInstantiateProvider, (Object[])new String[]{project.getName(), id}), null);
                    }
                    if (provider != null) {
                        provider.deconfigure();
                    }
                    project.setSessionProperty(TeamPlugin.PROVIDER_PROP_KEY, null);
                    project.setPersistentProperty(TeamPlugin.PROVIDER_PROP_KEY, null);
                    if (provider != null) {
                        provider.deconfigured();
                    }
                    project.touch(null);
                    TeamHookDispatcher.setProviderRuleFactory(project, null);
                    RepositoryProviderManager.getInstance().providerUnmapped(project);
                }
                finally {
                    mappingLock.release();
                }
            }
            catch (CoreException e) {
                throw TeamPlugin.wrapException(e);
            }
        }
        finally {
            Job.getJobManager().endRule(rule);
        }
    }

    private static RepositoryProvider lookupProviderProp(IProject project) throws CoreException {
        Object provider = project.getSessionProperty(TeamPlugin.PROVIDER_PROP_KEY);
        if (provider instanceof RepositoryProvider) {
            return (RepositoryProvider)provider;
        }
        return null;
    }

    public abstract void configureProject() throws CoreException;

    public final void configure() throws CoreException {
        try {
            this.configureProject();
        }
        catch (CoreException e) {
            try {
                RepositoryProvider.unmap(this.getProject());
            }
            catch (TeamException e2) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.team.core", 0, String.valueOf(Messages.RepositoryProvider_Error_removing_nature_from_project___1) + this.getID(), (Throwable)((Object)e2)));
            }
            throw e;
        }
    }

    protected void deconfigured() {
    }

    public abstract String getID();

    public IFileModificationValidator getFileModificationValidator() {
        return null;
    }

    public FileModificationValidator getFileModificationValidator2() {
        final IFileModificationValidator fileModificationValidator = this.getFileModificationValidator();
        if (fileModificationValidator == null) {
            return null;
        }
        return new FileModificationValidator(){

            public IStatus validateSave(IFile file) {
                return fileModificationValidator.validateSave(file);
            }

            public IStatus validateEdit(IFile[] files, FileModificationValidationContext context) {
                Object shell = context == null ? null : context.getShell();
                return fileModificationValidator.validateEdit(files, shell);
            }
        };
    }

    public IFileHistoryProvider getFileHistoryProvider() {
        return null;
    }

    public IMoveDeleteHook getMoveDeleteHook() {
        return null;
    }

    public String toString() {
        return NLS.bind((String)Messages.RepositoryProvider_toString, (Object[])new String[]{this.getProject().getName(), this.getID()});
    }

    public static final String[] getAllProviderTypeIds() {
        IProjectNatureDescriptor[] desc = ResourcesPlugin.getWorkspace().getNatureDescriptors();
        HashSet<String> teamSet = new HashSet<String>();
        teamSet.addAll(AllProviderTypeIds);
        int i = 0;
        while (i < desc.length) {
            String[] setIds = desc[i].getNatureSetIds();
            int j = 0;
            while (j < setIds.length) {
                if (setIds[j].equals(TEAM_SETID)) {
                    teamSet.add(desc[i].getNatureId());
                }
                ++j;
            }
            ++i;
        }
        return teamSet.toArray(new String[teamSet.size()]);
    }

    public static final RepositoryProvider getProvider(IProject project) {
        block9: {
            block10: {
                if (!project.isAccessible()) break block9;
                RepositoryProvider provider = RepositoryProvider.lookupProviderProp(project);
                if (provider != null) {
                    return provider;
                }
                if (!RepositoryProvider.isMarkedAsUnshared(project)) break block10;
                return null;
            }
            try {
                String id = project.getPersistentProperty(TeamPlugin.PROVIDER_PROP_KEY);
                if (id != null) {
                    return RepositoryProvider.mapExistingProvider(project, id);
                }
                IProjectDescription projectDesc = project.getDescription();
                String[] natureIds = projectDesc.getNatureIds();
                IWorkspace workspace = ResourcesPlugin.getWorkspace();
                int i = 0;
                while (i < natureIds.length) {
                    IProjectNatureDescriptor desc = workspace.getNatureDescriptor(natureIds[i]);
                    if (desc != null) {
                        String[] setIds = desc.getNatureSetIds();
                        int j = 0;
                        while (j < setIds.length) {
                            if (setIds[j].equals(TEAM_SETID)) {
                                return RepositoryProvider.getProvider(project, natureIds[i]);
                            }
                            ++j;
                        }
                    }
                    ++i;
                }
            }
            catch (CoreException e) {
                if (RepositoryProvider.isAcceptableException(e)) break block9;
                TeamPlugin.log(e);
            }
        }
        RepositoryProvider.markAsUnshared(project);
        return null;
    }

    private static boolean isAcceptableException(CoreException e) {
        return e.getStatus().getCode() == 368;
    }

    public static final RepositoryProvider getProvider(IProject project, String id) {
        block10: {
            IProjectNatureDescriptor desc;
            block14: {
                block13: {
                    block12: {
                        block11: {
                            if (!project.isAccessible()) break block10;
                            RepositoryProvider provider = RepositoryProvider.lookupProviderProp(project);
                            if (provider == null) break block11;
                            if (provider.getID().equals(id)) {
                                return provider;
                            }
                            return null;
                        }
                        if (!RepositoryProvider.isMarkedAsUnshared(project)) break block12;
                        return null;
                    }
                    String existingID = project.getPersistentProperty(TeamPlugin.PROVIDER_PROP_KEY);
                    if (!id.equals(existingID)) break block13;
                    RepositoryProvider newProvider = RepositoryProvider.mapExistingProvider(project, id);
                    if (newProvider != null && newProvider.getID().equals(id)) {
                        return newProvider;
                    }
                    return null;
                }
                desc = ResourcesPlugin.getWorkspace().getNatureDescriptor(id);
                if (desc != null) break block14;
                return null;
            }
            try {
                String[] setIds = desc.getNatureSetIds();
                int i = 0;
                while (i < setIds.length) {
                    if (setIds[i].equals(TEAM_SETID)) {
                        return (RepositoryProvider)project.getNature(id);
                    }
                    ++i;
                }
            }
            catch (CoreException e) {
                if (RepositoryProvider.isAcceptableException(e)) break block10;
                TeamPlugin.log(e);
            }
        }
        RepositoryProvider.markAsUnshared(project);
        return null;
    }

    public static boolean isShared(IProject project) {
        boolean shared;
        block7: {
            block6: {
                if (!project.isAccessible()) {
                    return false;
                }
                try {
                    if (RepositoryProvider.lookupProviderProp(project) == null) break block6;
                    return true;
                }
                catch (CoreException e) {
                    TeamPlugin.log(e);
                    return false;
                }
            }
            if (!RepositoryProvider.isMarkedAsUnshared(project)) break block7;
            return false;
        }
        boolean bl = shared = project.getPersistentProperty(TeamPlugin.PROVIDER_PROP_KEY) != null;
        if (!shared) {
            RepositoryProvider.markAsUnshared(project);
        }
        return shared;
    }

    private static boolean isMarkedAsUnshared(IProject project) {
        try {
            return project.getSessionProperty(TeamPlugin.PROVIDER_PROP_KEY) == NOT_MAPPED;
        }
        catch (CoreException coreException) {
            return false;
        }
    }

    private static void markAsUnshared(IProject project) {
        try {
            project.setSessionProperty(TeamPlugin.PROVIDER_PROP_KEY, NOT_MAPPED);
        }
        catch (CoreException coreException) {}
    }

    public IProject getProject() {
        return this.project;
    }

    public void setProject(IProject project) {
        this.project = project;
    }

    private static List initializeAllProviderTypes() {
        IExtensionPoint extension;
        ArrayList<String> allIDs = new ArrayList<String>();
        TeamPlugin plugin = TeamPlugin.getPlugin();
        if (plugin != null && (extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.team.core", "repository")) != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String extensionId = configElements[j].getAttribute("id");
                    allIDs.add(extensionId);
                    ++j;
                }
                ++i;
            }
        }
        return allIDs;
    }

    private static RepositoryProvider newProvider(String id) {
        IExtensionPoint extension;
        TeamPlugin plugin = TeamPlugin.getPlugin();
        if (plugin != null && (extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.team.core", "repository")) != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String extensionId = configElements[j].getAttribute("id");
                    if (extensionId != null && extensionId.equals(id)) {
                        try {
                            return (RepositoryProvider)configElements[j].createExecutableExtension("class");
                        }
                        catch (CoreException e) {
                            TeamPlugin.log(e);
                        }
                        catch (ClassCastException e) {
                            String className = configElements[j].getAttribute("class");
                            TeamPlugin.log(4, NLS.bind((String)Messages.RepositoryProvider_invalidClass, (Object[])new String[]{id, className}), e);
                        }
                        return null;
                    }
                    ++j;
                }
                ++i;
            }
        }
        return null;
    }

    public IStatus validateCreateLink(IResource resource, int updateFlags, IPath location) {
        if (this.canHandleLinkedResources()) {
            return Team.OK_STATUS;
        }
        return new Status(4, "org.eclipse.team.core", 378, NLS.bind((String)Messages.RepositoryProvider_linkedResourcesNotSupported, (Object[])new String[]{this.getProject().getName(), this.getID()}), null);
    }

    public IStatus validateCreateLink(IResource resource, int updateFlags, URI location) {
        if (resource.getProjectRelativePath().segmentCount() == 1 && "file".equals(location.getScheme())) {
            return this.validateCreateLink(resource, updateFlags, URIUtil.toPath((URI)location));
        }
        if (this.canHandleLinkedResourceURI()) {
            return Team.OK_STATUS;
        }
        return new Status(4, "org.eclipse.team.core", 378, NLS.bind((String)Messages.RepositoryProvider_linkedURIsNotSupported, (Object[])new String[]{this.getProject().getName(), this.getID()}), null);
    }

    public boolean canHandleLinkedResources() {
        return this.canHandleLinkedResourceURI();
    }

    public boolean canHandleLinkedResourceURI() {
        return false;
    }

    public Object getAdapter(Class adapter) {
        return null;
    }

    public IResourceRuleFactory getRuleFactory() {
        return new PessimisticResourceRuleFactory();
    }

    public final Subscriber getSubscriber() {
        RepositoryProviderType type = RepositoryProviderType.getProviderType(this.getID());
        if (type != null) {
            return type.getSubscriber();
        }
        return null;
    }
}

