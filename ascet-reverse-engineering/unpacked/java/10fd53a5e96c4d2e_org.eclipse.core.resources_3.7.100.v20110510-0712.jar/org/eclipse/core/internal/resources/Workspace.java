/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Map;
import java.util.Stack;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.events.BuildManager;
import org.eclipse.core.internal.events.ILifecycleListener;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.events.NotificationManager;
import org.eclipse.core.internal.events.ResourceChangeEvent;
import org.eclipse.core.internal.events.ResourceComparator;
import org.eclipse.core.internal.localstore.FileSystemResourceManager;
import org.eclipse.core.internal.properties.IPropertyManager;
import org.eclipse.core.internal.refresh.RefreshManager;
import org.eclipse.core.internal.resources.AliasManager;
import org.eclipse.core.internal.resources.BuildConfiguration;
import org.eclipse.core.internal.resources.CharsetManager;
import org.eclipse.core.internal.resources.ComputeProjectOrder;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.ContentDescriptionManager;
import org.eclipse.core.internal.resources.File;
import org.eclipse.core.internal.resources.FilterDescription;
import org.eclipse.core.internal.resources.FilterTypeManager;
import org.eclipse.core.internal.resources.Folder;
import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.LinkDescription;
import org.eclipse.core.internal.resources.LocalMetaArea;
import org.eclipse.core.internal.resources.LocationValidator;
import org.eclipse.core.internal.resources.MarkerManager;
import org.eclipse.core.internal.resources.MoveDeleteHook;
import org.eclipse.core.internal.resources.NatureManager;
import org.eclipse.core.internal.resources.PathVariableManager;
import org.eclipse.core.internal.resources.PathVariableUtil;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ProjectDescriptionReader;
import org.eclipse.core.internal.resources.ProjectInfo;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.ResourcesCompatibilityHelper;
import org.eclipse.core.internal.resources.RootInfo;
import org.eclipse.core.internal.resources.Rules;
import org.eclipse.core.internal.resources.SaveManager;
import org.eclipse.core.internal.resources.Synchronizer;
import org.eclipse.core.internal.resources.WorkManager;
import org.eclipse.core.internal.resources.WorkspaceDescription;
import org.eclipse.core.internal.resources.WorkspacePreferences;
import org.eclipse.core.internal.resources.WorkspaceRoot;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.utils.StringPoolJob;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeIterator;
import org.eclipse.core.internal.watson.IElementContentVisitor;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFileModificationValidator;
import org.eclipse.core.resources.IFilterMatcherDescriptor;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IProjectNatureDescriptor;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.ISavedState;
import org.eclipse.core.resources.ISynchronizer;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceDescription;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.WorkspaceLock;
import org.eclipse.core.resources.team.FileModificationValidationContext;
import org.eclipse.core.resources.team.FileModificationValidator;
import org.eclipse.core.resources.team.IMoveDeleteHook;
import org.eclipse.core.resources.team.TeamHook;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.osgi.util.NLS;
import org.xml.sax.InputSource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Workspace
extends PlatformObject
implements IWorkspace,
ICoreConstants {
    public static final boolean caseSensitive = "macosx".equals(Platform.getOS()) ? false : new java.io.File("a").compareTo(new java.io.File("A")) != 0;
    public static boolean DEBUG = false;
    protected WorkManager _workManager;
    protected AliasManager aliasManager;
    protected BuildManager buildManager;
    protected volatile IBuildConfiguration[] buildOrder = null;
    protected CharsetManager charsetManager;
    protected ContentDescriptionManager contentDescriptionManager;
    protected boolean crashed = false;
    protected final IWorkspaceRoot defaultRoot = new WorkspaceRoot((IPath)Path.ROOT, this);
    protected WorkspacePreferences description;
    protected FileSystemResourceManager fileSystemManager;
    protected final CopyOnWriteArrayList<ILifecycleListener> lifecycleListeners = new CopyOnWriteArrayList();
    protected LocalMetaArea localMetaArea;
    protected final LocationValidator locationValidator = new LocationValidator(this);
    protected MarkerManager markerManager;
    protected IMoveDeleteHook moveDeleteHook = null;
    protected NatureManager natureManager;
    protected FilterTypeManager filterManager;
    protected long nextMarkerId = 0L;
    protected long nextNodeId = 1L;
    protected NotificationManager notificationManager;
    protected boolean openFlag = false;
    protected ElementTree operationTree;
    protected PathVariableManager pathVariableManager;
    protected IPropertyManager propertyManager;
    protected RefreshManager refreshManager;
    private IResourceRuleFactory ruleFactory;
    protected SaveManager saveManager;
    protected boolean shouldValidate = true;
    private StringPoolJob stringPoolJob;
    protected Synchronizer synchronizer;
    protected TeamHook teamHook = null;
    protected volatile ElementTree tree;
    protected Thread treeLocked = null;
    protected IFileModificationValidator validator = null;

    public static boolean clear(java.io.File root) {
        boolean result = Workspace.clearChildren(root);
        try {
            if (root.exists()) {
                result &= root.delete();
            }
        }
        catch (Exception exception) {
            result = false;
        }
        return result;
    }

    public static boolean clearChildren(java.io.File root) {
        String[] list;
        boolean result = true;
        if (root.isDirectory() && (list = root.list()) != null) {
            int i = 0;
            while (i < list.length) {
                result &= Workspace.clear(new java.io.File(root, list[i]));
                ++i;
            }
        }
        return result;
    }

    public static WorkspaceDescription defaultWorkspaceDescription() {
        return new WorkspaceDescription("Workspace");
    }

    private static boolean isDuplicate(Object[] array, int position) {
        if (array == null || position >= array.length) {
            return false;
        }
        int j = position - 1;
        while (j >= 0) {
            if (array[j].equals(array[position])) {
                return true;
            }
            --j;
        }
        return false;
    }

    public Workspace() {
        this.localMetaArea = new LocalMetaArea();
        this.tree = new ElementTree();
        this.tree.immutable();
        this.treeLocked = Thread.currentThread();
        this.tree.setTreeData(this.newElement(8));
    }

    protected void aboutToBuild(Object source, int trigger) {
        this.broadcastPostChange();
        this.broadcastBuildEvent(source, 8, trigger);
    }

    public void addLifecycleListener(ILifecycleListener listener) {
        this.lifecycleListeners.addIfAbsent(listener);
    }

    @Override
    public void addResourceChangeListener(IResourceChangeListener listener) {
        this.notificationManager.addListener(listener, 7);
    }

    @Override
    public void addResourceChangeListener(IResourceChangeListener listener, int eventMask) {
        this.notificationManager.addListener(listener, eventMask);
    }

    @Override
    @Deprecated
    public ISavedState addSaveParticipant(Plugin plugin, ISaveParticipant participant) throws CoreException {
        Assert.isNotNull((Object)plugin, (String)"Plugin must not be null");
        Assert.isNotNull((Object)participant, (String)"Participant must not be null");
        return this.saveManager.addParticipant(plugin.getBundle().getSymbolicName(), participant);
    }

    @Override
    public ISavedState addSaveParticipant(String pluginId, ISaveParticipant participant) throws CoreException {
        Assert.isNotNull((Object)pluginId, (String)"Plugin id must not be null");
        Assert.isNotNull((Object)participant, (String)"Participant must not be null");
        return this.saveManager.addParticipant(pluginId, participant);
    }

    public void beginOperation(boolean createNewTree) throws CoreException {
        WorkManager workManager = this.getWorkManager();
        workManager.incrementNestedOperations();
        if (!workManager.isBalanced()) {
            Assert.isTrue((boolean)false, (String)"Operation was not prepared.");
        }
        if (workManager.getPreparedOperationDepth() > 1) {
            if (createNewTree && this.tree.isImmutable()) {
                this.newWorkingTree();
            }
            return;
        }
        this.operationTree = this.tree;
        if (createNewTree && this.tree.isImmutable()) {
            this.newWorkingTree();
        }
    }

    public void broadcastBuildEvent(Object source, int type, int buildTrigger) {
        ResourceChangeEvent event = new ResourceChangeEvent(source, type, buildTrigger, null);
        this.notificationManager.broadcastChanges(this.tree, event, false);
    }

    protected void broadcastEvent(LifecycleEvent event) throws CoreException {
        for (ILifecycleListener listener : this.lifecycleListeners) {
            listener.handleEvent(event);
        }
    }

    public void broadcastPostChange() {
        ResourceChangeEvent event = new ResourceChangeEvent(this, 1, 0, null);
        this.notificationManager.broadcastChanges(this.tree, event, true);
    }

    private void recursivelyAddBuildConfigs(Collection<IBuildConfiguration> configs, IBuildConfiguration config) {
        try {
            IBuildConfiguration[] referenced = config.getProject().getReferencedBuildConfigs(config.getName(), false);
            int i = 0;
            while (i < referenced.length) {
                if (!configs.contains(referenced[i])) {
                    configs.add(referenced[i]);
                    this.recursivelyAddBuildConfigs(configs, referenced[i]);
                }
                ++i;
            }
        }
        catch (CoreException coreException) {
            Assert.isTrue((boolean)false);
        }
    }

    @Override
    public void build(int trigger, IProgressMonitor monitor) throws CoreException {
        this.buildInternal(EMPTY_BUILD_CONFIG_ARRAY, trigger, true, monitor);
    }

    @Override
    public void build(IBuildConfiguration[] configs, int trigger, boolean buildReferences, IProgressMonitor monitor) throws CoreException {
        if (configs.length == 0) {
            return;
        }
        this.buildInternal(configs, trigger, buildReferences, monitor);
    }

    private void buildInternal(IBuildConfiguration[] configs, int trigger, boolean buildReferences, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        boolean relaxed = false;
        if (Job.getJobManager().currentRule() == null && configs.length > 0) {
            relaxed = true;
            IBuildConfiguration[] iBuildConfigurationArray = configs;
            int n = configs.length;
            int n2 = 0;
            while (n2 < n) {
                IBuildConfiguration config = iBuildConfigurationArray[n2];
                ISchedulingRule requested = this.getBuildManager().getRule(config, trigger, null, null);
                if (requested != null && requested.contains((ISchedulingRule)this.getRoot())) {
                    relaxed = false;
                    break;
                }
                ++n2;
            }
        }
        ISchedulingRule buildRule = this.getRuleFactory().buildRule();
        ISchedulingRule rule = relaxed ? null : buildRule;
        try {
            monitor.beginTask("", Policy.opWork);
            try {
                IStatus result;
                try {
                    this.prepareOperation(rule == null ? buildRule : rule, monitor);
                    this.beginOperation(true);
                    this.aboutToBuild(this, trigger);
                }
                finally {
                    if (rule == null) {
                        this.endOperation(buildRule, false, monitor);
                        this.prepareOperation(rule, monitor);
                        this.beginOperation(false);
                    }
                }
                try {
                    IBuildConfiguration[] requestedConfigs = configs;
                    if (configs == EMPTY_BUILD_CONFIG_ARRAY) {
                        if (trigger != 15) {
                            configs = this.getBuildOrder();
                        } else {
                            ArrayList<IBuildConfiguration> configArr = new ArrayList<IBuildConfiguration>();
                            IProject[] prjs = this.getRoot().getProjects();
                            int i = 0;
                            while (i < prjs.length) {
                                if (prjs[i].isAccessible()) {
                                    configArr.addAll(Arrays.asList(prjs[i].getBuildConfigs()));
                                }
                                ++i;
                            }
                            configs = configArr.toArray(new IBuildConfiguration[configArr.size()]);
                        }
                    } else {
                        HashSet<IBuildConfiguration> refsList = new HashSet<IBuildConfiguration>();
                        int i = 0;
                        while (i < configs.length) {
                            if (configs[i].getProject().isAccessible() && configs[i].getProject().hasBuildConfig(configs[i].getName())) {
                                refsList.add(configs[i]);
                                if (buildReferences) {
                                    this.recursivelyAddBuildConfigs(refsList, configs[i]);
                                }
                            }
                            ++i;
                        }
                        ProjectBuildConfigOrder order = this.computeProjectBuildConfigOrder(refsList.toArray(new IBuildConfiguration[refsList.size()]));
                        configs = order.buildConfigurations;
                    }
                    result = this.getBuildManager().build(configs, requestedConfigs, trigger, Policy.subMonitorFor(monitor, Policy.opWork));
                }
                finally {
                    if (rule == null) {
                        this.endOperation(rule, false, monitor);
                        this.prepareOperation(buildRule, monitor);
                        this.beginOperation(false);
                    }
                    this.broadcastBuildEvent(this, 16, trigger);
                }
                if (!result.isOK()) {
                    throw new ResourceException(result);
                }
            }
            finally {
                if (this.tree.isImmutable()) {
                    this.newWorkingTree();
                }
                this.endOperation(buildRule, false, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    private boolean canCreateExtensions() {
        return Platform.getBundle((String)"org.eclipse.osgi").getState() != 16;
    }

    @Override
    public void checkpoint(boolean build) {
        try {
            ISchedulingRule rule = this.getWorkManager().getNotifyRule();
            try {
                this.prepareOperation(rule, null);
                this.beginOperation(true);
                this.broadcastPostChange();
            }
            finally {
                this.endOperation(rule, build, null);
            }
        }
        catch (CoreException e) {
            Policy.log(e.getStatus());
        }
    }

    public void close(IProgressMonitor monitor) throws CoreException {
        if (!this.isOpen()) {
            return;
        }
        monitor = Policy.monitorFor(monitor);
        try {
            String msg = Messages.resources_closing_0;
            int rootCount = this.tree.getChildCount((IPath)Path.ROOT);
            monitor.beginTask(msg, rootCount + 2);
            monitor.subTask(msg);
            try {
                this.stringPoolJob.cancel();
                this.saveManager.shutdown(null);
                this.prepareOperation(this.getRoot(), monitor);
                this.notificationManager.shutdown(null);
                this.beginOperation(true);
                IProject[] projects = this.getRoot().getProjects(8);
                int i = 0;
                while (i < projects.length) {
                    this.broadcastEvent(LifecycleEvent.newEvent(1, projects[i]));
                    monitor.worked(1);
                    ++i;
                }
                this.deleteResource(this.getRoot());
                this.openFlag = false;
            }
            finally {
                this.shutdown(Policy.subMonitorFor(monitor, 2, 2));
            }
        }
        finally {
            Job.getJobManager().endRule((ISchedulingRule)this.getRoot());
            monitor.done();
        }
    }

    private ComputeProjectOrder.VertexOrder computeFullProjectOrder() {
        TreeSet<IProject> allAccessibleProjects = new TreeSet<IProject>(new Comparator<IProject>(){

            @Override
            public int compare(IProject px, IProject py) {
                return py.getName().compareTo(px.getName());
            }
        });
        IProject[] allProjects = this.getRoot().getProjects(8);
        ArrayList<IProject[]> edges = new ArrayList<IProject[]>(allProjects.length);
        int i = 0;
        while (i < allProjects.length) {
            ProjectDescription desc;
            Project project = (Project)allProjects[i];
            if (project.isAccessible() && (desc = project.internalGetDescription()) != null) {
                IProject[] refs = desc.getAllReferences(false);
                allAccessibleProjects.add(project);
                int j = 0;
                while (j < refs.length) {
                    IProject ref = refs[j];
                    if (ref.isAccessible() && !ref.equals(project)) {
                        edges.add(new IProject[]{project, ref});
                    }
                    ++j;
                }
            }
            ++i;
        }
        return ComputeProjectOrder.computeVertexOrder(allAccessibleProjects, edges);
    }

    private ComputeProjectOrder.VertexOrder computeActiveBuildConfigOrder() {
        TreeSet<IBuildConfiguration> allAccessibleBuildConfigs = new TreeSet<IBuildConfiguration>(new BuildConfigurationComparator());
        IProject[] allProjects = this.getRoot().getProjects(8);
        ArrayList<IBuildConfiguration[]> edges = new ArrayList<IBuildConfiguration[]>(allProjects.length);
        int i = 0;
        while (i < allProjects.length) {
            Project project = (Project)allProjects[i];
            if (project.isAccessible() && !allAccessibleBuildConfigs.contains(project.internalGetActiveBuildConfig())) {
                allAccessibleBuildConfigs.add(project.internalGetActiveBuildConfig());
                Stack<IBuildConfiguration> stack = new Stack<IBuildConfiguration>();
                stack.push(project.internalGetActiveBuildConfig());
                while (!stack.isEmpty()) {
                    IBuildConfiguration buildConfiguration = (IBuildConfiguration)stack.pop();
                    Project subProject = (Project)buildConfiguration.getProject();
                    IBuildConfiguration[] refs = subProject.internalGetReferencedBuildConfigs(buildConfiguration.getName(), false);
                    int j = 0;
                    while (j < refs.length) {
                        IBuildConfiguration ref = refs[j];
                        if (!ref.equals(buildConfiguration)) {
                            edges.add(new IBuildConfiguration[]{buildConfiguration, ref});
                            if (!allAccessibleBuildConfigs.contains(ref)) {
                                allAccessibleBuildConfigs.add(ref);
                                stack.push(ref);
                            }
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
        return ComputeProjectOrder.computeVertexOrder(allAccessibleBuildConfigs, edges);
    }

    private ComputeProjectOrder.VertexOrder computeFullBuildConfigOrder() {
        TreeSet<IBuildConfiguration> allAccessibleBuildConfigurations = new TreeSet<IBuildConfiguration>(new BuildConfigurationComparator());
        IProject[] allProjects = this.getRoot().getProjects(8);
        ArrayList<IBuildConfiguration[]> edges = new ArrayList<IBuildConfiguration[]>(allProjects.length);
        int i = 0;
        while (i < allProjects.length) {
            Project project = (Project)allProjects[i];
            if (project.isAccessible()) {
                IBuildConfiguration[] configs = project.internalGetBuildConfigs(false);
                int j = 0;
                while (j < configs.length) {
                    IBuildConfiguration config = configs[j];
                    allAccessibleBuildConfigurations.add(config);
                    IBuildConfiguration[] refs = project.internalGetReferencedBuildConfigs(config.getName(), false);
                    int k = 0;
                    while (k < refs.length) {
                        IBuildConfiguration ref = refs[k];
                        if (!ref.equals(config)) {
                            allAccessibleBuildConfigurations.add(ref);
                            edges.add(new IBuildConfiguration[]{config, ref});
                        }
                        ++k;
                    }
                    ++j;
                }
            }
            ++i;
        }
        return ComputeProjectOrder.computeVertexOrder(allAccessibleBuildConfigurations, edges);
    }

    private static IWorkspace.ProjectOrder vertexOrderToProjectOrder(ComputeProjectOrder.VertexOrder order) {
        IProject[] projects = new IProject[order.vertexes.length];
        System.arraycopy(order.vertexes, 0, projects, 0, order.vertexes.length);
        IProject[][] knots = new IProject[order.knots.length][];
        int i = 0;
        while (i < order.knots.length) {
            knots[i] = new IProject[order.knots[i].length];
            System.arraycopy(order.knots[i], 0, knots[i], 0, order.knots[i].length);
            ++i;
        }
        return new IWorkspace.ProjectOrder(projects, order.hasCycles, knots);
    }

    private static ProjectBuildConfigOrder vertexOrderToProjectBuildConfigOrder(ComputeProjectOrder.VertexOrder order) {
        IBuildConfiguration[] buildConfigs = new IBuildConfiguration[order.vertexes.length];
        System.arraycopy(order.vertexes, 0, buildConfigs, 0, order.vertexes.length);
        IBuildConfiguration[][] knots = new IBuildConfiguration[order.knots.length][];
        int i = 0;
        while (i < order.knots.length) {
            knots[i] = new IBuildConfiguration[order.knots[i].length];
            System.arraycopy(order.knots[i], 0, knots[i], 0, order.knots[i].length);
            ++i;
        }
        return new ProjectBuildConfigOrder(buildConfigs, order.hasCycles, knots);
    }

    @Override
    public IProject[][] computePrerequisiteOrder(IProject[] targets) {
        return this.computePrerequisiteOrder1(targets);
    }

    private IProject[][] computePrerequisiteOrder1(IProject[] projects) {
        IProject project;
        IWorkspace.ProjectOrder r = this.computeProjectOrder(projects);
        if (!r.hasCycles) {
            return new IProject[][]{r.projects, new IProject[0]};
        }
        HashSet<IProject> bad = new HashSet<IProject>();
        HashSet<IProject> keepers = new HashSet<IProject>(Arrays.asList(r.projects));
        int i = 0;
        while (i < r.knots.length) {
            IProject[] knot = r.knots[i];
            int j = 0;
            while (j < knot.length) {
                project = knot[j];
                if (keepers.contains(project)) {
                    bad.add(project);
                }
                ++j;
            }
            ++i;
        }
        IProject[] result2 = new IProject[bad.size()];
        bad.toArray(result2);
        LinkedList<IProject> p = new LinkedList<IProject>();
        p.addAll(Arrays.asList(r.projects));
        ListIterator it = p.listIterator();
        while (it.hasNext()) {
            project = (IProject)it.next();
            if (!bad.contains(project)) continue;
            it.remove();
        }
        IProject[] result1 = new IProject[p.size()];
        p.toArray(result1);
        return new IProject[][]{result1, result2};
    }

    @Override
    public IWorkspace.ProjectOrder computeProjectOrder(IProject[] projects) {
        ComputeProjectOrder.VertexOrder fullProjectOrder = this.computeFullProjectOrder();
        final HashSet<IProject> projectSet = new HashSet<IProject>(projects.length);
        projectSet.addAll(Arrays.asList(projects));
        ComputeProjectOrder.VertexFilter filter = new ComputeProjectOrder.VertexFilter(){

            public boolean matches(Object vertex) {
                return !projectSet.contains(vertex);
            }
        };
        return Workspace.vertexOrderToProjectOrder(ComputeProjectOrder.filterVertexOrder(fullProjectOrder, filter));
    }

    public ProjectBuildConfigOrder computeProjectBuildConfigOrder(IBuildConfiguration[] buildConfigs) {
        ComputeProjectOrder.VertexOrder fullBuildConfigOrder = this.computeFullBuildConfigOrder();
        final HashSet<IBuildConfiguration> projectConfigSet = new HashSet<IBuildConfiguration>(buildConfigs.length);
        projectConfigSet.addAll(Arrays.asList(buildConfigs));
        ComputeProjectOrder.VertexFilter filter = new ComputeProjectOrder.VertexFilter(){

            public boolean matches(Object vertex) {
                return !projectConfigSet.contains(vertex);
            }
        };
        return Workspace.vertexOrderToProjectBuildConfigOrder(ComputeProjectOrder.filterVertexOrder(fullBuildConfigOrder, filter));
    }

    @Override
    public IStatus copy(IResource[] resources, IPath destination, boolean force, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        return this.copy(resources, destination, updateFlags, monitor);
    }

    @Override
    public IStatus copy(IResource[] resources, IPath destination, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            Assert.isLegal((resources != null ? 1 : 0) != 0);
            int opWork = Math.max(resources.length, 1);
            int totalWork = 100 * opWork / Policy.opWork;
            String message = Messages.resources_copying_0;
            monitor.beginTask(message, totalWork);
            if (resources.length == 0) {
                IStatus iStatus = Status.OK_STATUS;
                return iStatus;
            }
            resources = (IResource[])resources.clone();
            IPath parentPath = null;
            message = Messages.resources_copyProblem;
            MultiStatus status = new MultiStatus("org.eclipse.core.resources", 566, message, null);
            try {
                try {
                    this.prepareOperation(this.getRoot(), monitor);
                    this.beginOperation(true);
                    int i = 0;
                    while (i < resources.length) {
                        block22: {
                            Policy.checkCanceled(monitor);
                            IResource resource = resources[i];
                            if (resource == null || Workspace.isDuplicate(resources, i)) {
                                monitor.worked(1);
                            } else {
                                if (parentPath == null) {
                                    parentPath = resource.getFullPath().removeLastSegments(1);
                                }
                                if (parentPath.equals((Object)resource.getFullPath().removeLastSegments(1))) {
                                    try {
                                        IPath destinationPath = destination.append(resource.getName());
                                        IStatus requirements = ((Resource)resource).checkCopyRequirements(destinationPath, resource.getType(), updateFlags);
                                        if (requirements.isOK()) {
                                            try {
                                                resource.copy(destinationPath, updateFlags, Policy.subMonitorFor(monitor, 1));
                                            }
                                            catch (CoreException e) {
                                                status.merge(e.getStatus());
                                            }
                                            break block22;
                                        }
                                        monitor.worked(1);
                                        status.merge(requirements);
                                    }
                                    catch (CoreException e) {
                                        monitor.worked(1);
                                        status.merge(e.getStatus());
                                    }
                                } else {
                                    monitor.worked(1);
                                    message = NLS.bind((String)Messages.resources_notChild, (Object)resources[i].getFullPath(), (Object)parentPath);
                                    status.merge((IStatus)new ResourceStatus(76, resources[i].getFullPath(), message));
                                }
                            }
                        }
                        ++i;
                    }
                }
                catch (OperationCanceledException e) {
                    this.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.endOperation(this.getRoot(), true, Policy.subMonitorFor(monitor, totalWork - opWork));
            }
            if (status.matches(4)) {
                throw new ResourceException((IStatus)status);
            }
            IStatus iStatus = status.isOK() ? Status.OK_STATUS : status;
            return iStatus;
        }
        finally {
            monitor.done();
        }
    }

    protected void copyTree(IResource source, IPath destination, int depth, int updateFlags, boolean keepSyncInfo) throws CoreException {
        this.copyTree(source, destination, depth, updateFlags, keepSyncInfo, false, source.getType() == 4);
    }

    private void copyTree(IResource source, IPath destination, int depth, int updateFlags, boolean keepSyncInfo, boolean moveResources, boolean movingProject) throws CoreException {
        IResource dotProject;
        boolean projectCopy;
        int destinationType;
        IResource destinationResource = this.getRoot().findMember(destination, true);
        if (destinationResource == null) {
            destinationType = source.getType() == 1 ? 1 : (destination.segmentCount() == 1 ? 4 : 2);
            destinationResource = this.newResource(destination, destinationType);
        } else {
            destinationType = destinationResource.getType();
        }
        ResourceInfo sourceInfo = ((Resource)source).getResourceInfo(true, false);
        if (destinationType != source.getType()) {
            sourceInfo = (ResourceInfo)sourceInfo.clone();
            sourceInfo.setType(destinationType);
        }
        ResourceInfo newInfo = this.createResource(destinationResource, sourceInfo, false, true, keepSyncInfo);
        newInfo.setNodeId(sourceInfo.getNodeId());
        newInfo.setFlags(newInfo.getFlags() | sourceInfo.getFlags() & 2);
        newInfo.setFileStoreRoot(null);
        newInfo.clear(393216);
        if (source.isLinked()) {
            LinkDescription linkDescription;
            URI sourceLocationURI = this.transferVariableDefinition(source, destinationResource, source.getLocationURI());
            if ((updateFlags & 0x20) != 0 || ((Resource)source).isUnderVirtual()) {
                newInfo.set(65536);
                linkDescription = new LinkDescription(destinationResource, sourceLocationURI);
            } else {
                newInfo.clear(65536);
                linkDescription = null;
            }
            if (moveResources && !movingProject && ((Project)source.getProject()).internalGetDescription().setLinkLocation(source.getProjectRelativePath(), null)) {
                ((Project)source.getProject()).writeDescription(updateFlags);
            }
            Project project = (Project)destinationResource.getProject();
            project.internalGetDescription().setLinkLocation(destinationResource.getProjectRelativePath(), linkDescription);
            project.writeDescription(updateFlags);
            newInfo.setFileStoreRoot(null);
        }
        if (source.getProject().exists() && source instanceof Container && ((Container)source).hasFilters()) {
            Project sourceProject = (Project)source.getProject();
            LinkedList<FilterDescription> originalDescriptions = sourceProject.internalGetDescription().getFilter(source.getProjectRelativePath());
            LinkedList<FilterDescription> filterDescriptions = FilterDescription.copy(originalDescriptions, destinationResource);
            if (moveResources && !movingProject && ((Project)source.getProject()).internalGetDescription().setFilters(source.getProjectRelativePath(), null)) {
                ((Project)source.getProject()).writeDescription(updateFlags);
            }
            Project project = (Project)destinationResource.getProject();
            project.internalGetDescription().setFilters(destinationResource.getProjectRelativePath(), filterDescriptions);
            project.writeDescription(updateFlags);
        }
        if (depth == 0 || source.getType() == 1) {
            return;
        }
        if (depth == 1) {
            depth = 0;
        }
        boolean bl = projectCopy = source.getType() == 4 && destinationType == 4;
        if (projectCopy && (dotProject = ((Project)source).findMember(".project")) != null) {
            this.copyTree(dotProject, destination.append(dotProject.getName()), depth, updateFlags, keepSyncInfo, moveResources, movingProject);
        }
        IResource[] children = ((IContainer)source).members(10);
        int i = 0;
        int imax = children.length;
        while (i < imax) {
            String childName = children[i].getName();
            if (!projectCopy || !childName.equals(".project")) {
                IPath childPath = destination.append(childName);
                this.copyTree(children[i], childPath, depth, updateFlags, keepSyncInfo, moveResources, movingProject);
            }
            ++i;
        }
    }

    public URI transferVariableDefinition(IResource source, IResource dest, URI sourceURI) throws CoreException {
        IPath srcLoc = source.getLocation();
        IPath srcRawLoc = source.getRawLocation();
        if (srcLoc != null && !srcRawLoc.equals((Object)srcLoc)) {
            if (!source.getProject().equals(dest.getProject())) {
                String variable = srcRawLoc.segment(0);
                variable = this.copyVariable(source, dest, variable);
                IPath newLocation = Path.fromPortableString((String)variable).append(srcRawLoc.removeFirstSegments(1));
                sourceURI = this.toURI(newLocation);
            } else {
                sourceURI = this.toURI(srcRawLoc);
            }
        }
        return sourceURI;
    }

    URI toURI(IPath path) {
        if (path.isAbsolute()) {
            return URIUtil.toURI((IPath)path);
        }
        try {
            return new URI(null, null, path.toPortableString(), null);
        }
        catch (URISyntaxException uRISyntaxException) {
            return URIUtil.toURI((IPath)path);
        }
    }

    String copyVariable(IResource source, IResource dest, String variable) throws CoreException {
        IPath relativeSrcValue;
        IPathVariableManager destPathVariableManager = dest.getPathVariableManager();
        IPathVariableManager srcPathVariableManager = source.getPathVariableManager();
        IPath srcValue = URIUtil.toPath((URI)srcPathVariableManager.getURIValue(variable));
        if (srcValue == null) {
            return PathVariableUtil.getUniqueVariableName(variable, dest);
        }
        IPath resolvedSrcValue = URIUtil.toPath((URI)srcPathVariableManager.resolveURI(URIUtil.toURI((IPath)srcValue)));
        boolean variableExisted = false;
        if (destPathVariableManager.isDefined(variable)) {
            variableExisted = true;
            IPath destValue = URIUtil.toPath((URI)destPathVariableManager.getURIValue(variable));
            if (destValue != null && URIUtil.toPath((URI)destPathVariableManager.resolveURI(URIUtil.toURI((IPath)destValue))).equals((Object)resolvedSrcValue)) {
                return variable;
            }
        }
        String[] variables = destPathVariableManager.getPathVariableNames();
        int i = 0;
        while (i < variables.length) {
            IPath resolveDestVariable;
            if (PathVariableUtil.isPreferred(variables[i]) && (resolveDestVariable = URIUtil.toPath((URI)destPathVariableManager.resolveURI(destPathVariableManager.getURIValue(variables[i])))) != null && resolveDestVariable.equals((Object)resolvedSrcValue)) {
                return variables[i];
            }
            ++i;
        }
        String destVariable = PathVariableUtil.getUniqueVariableName(variable, dest);
        boolean shouldConvertToRelative = true;
        if (!srcValue.equals((Object)resolvedSrcValue) && !variableExisted) {
            String[] referencedVariables = PathVariableUtil.splitVariableNames(srcValue.toPortableString());
            shouldConvertToRelative = false;
            if (referencedVariables.length == 1 && PathVariableUtil.isParentVariable(referencedVariables[0])) {
                shouldConvertToRelative = true;
            }
            if (!shouldConvertToRelative) {
                String[] segments = PathVariableUtil.splitVariablesAndContent(srcValue.toPortableString());
                StringBuffer result = new StringBuffer();
                int i2 = 0;
                while (i2 < segments.length) {
                    String var = PathVariableUtil.extractVariable(segments[i2]);
                    if (var.length() > 0) {
                        String copiedVariable = this.copyVariable(source, dest, var);
                        int index = segments[i2].indexOf(var);
                        if (index != -1) {
                            result.append(segments[i2].substring(0, index));
                            result.append(copiedVariable);
                            int start = index + var.length();
                            int end = segments[i2].length();
                            result.append(segments[i2].substring(start, end));
                        }
                    } else {
                        result.append(segments[i2]);
                    }
                    ++i2;
                }
                srcValue = Path.fromPortableString((String)result.toString());
            }
        }
        if (shouldConvertToRelative && (relativeSrcValue = PathVariableUtil.convertToPathRelativeMacro(destPathVariableManager, resolvedSrcValue, dest, true, null)) != null) {
            srcValue = relativeSrcValue;
        }
        destPathVariableManager.setURIValue(destVariable, URIUtil.toURI((IPath)srcValue));
        return destVariable;
    }

    public int countResources(IPath root, int depth, final boolean phantom) {
        if (!this.tree.includes(root)) {
            return 0;
        }
        switch (depth) {
            case 0: {
                return 1;
            }
            case 1: {
                return 1 + this.tree.getChildCount(root);
            }
            case 2: {
                final int[] count = new int[1];
                IElementContentVisitor visitor = new IElementContentVisitor(){

                    public boolean visitElement(ElementTree aTree, IPathRequestor requestor, Object elementContents) {
                        if (phantom || !((ResourceInfo)elementContents).isSet(8)) {
                            count[0] = count[0] + 1;
                        }
                        return true;
                    }
                };
                new ElementTreeIterator(this.tree, root).iterate(visitor);
                return count[0];
            }
        }
        return 0;
    }

    public ResourceInfo createResource(IResource resource, boolean phantom) throws CoreException {
        return this.createResource(resource, null, phantom, false, false);
    }

    public ResourceInfo createResource(IResource resource, int updateFlags) throws CoreException {
        ResourceInfo info = this.createResource(resource, null, false, false, false);
        if ((updateFlags & 0x400) != 0) {
            info.set(16384);
        }
        if ((updateFlags & 0x800) != 0) {
            info.set(32768);
        }
        if ((updateFlags & 0x1000) != 0) {
            info.set(0x200000);
        }
        return info;
    }

    public ResourceInfo createResource(IResource resource, ResourceInfo info, boolean phantom, boolean overwrite, boolean keepSyncInfo) throws CoreException {
        info = info == null ? this.newElement(resource.getType()) : (ResourceInfo)info.clone();
        ResourceInfo original = this.getResourceInfo(resource.getFullPath(), true, false);
        if (phantom) {
            info.set(8);
            info.clearModificationStamp();
        }
        if (original == null) {
            if (!keepSyncInfo) {
                info.setSyncInfo(null);
            }
            this.tree.createElement(resource.getFullPath(), info);
        } else if (overwrite || !phantom && original.isSet(8)) {
            if (!keepSyncInfo) {
                info.setSyncInfo(original.getSyncInfo(true));
            }
            info.set(4096);
            this.tree.setElementData(resource.getFullPath(), info);
        } else {
            String message = NLS.bind((String)Messages.resources_mustNotExist, (Object)resource.getFullPath());
            throw new ResourceException(367, resource.getFullPath(), message, null);
        }
        return info;
    }

    @Override
    public IStatus delete(IResource[] resources, boolean force, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        return this.delete(resources, updateFlags |= 2, monitor);
    }

    /*
     * Loose catch block
     */
    @Override
    public IStatus delete(IResource[] resources, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            int opWork = Math.max(resources.length, 1);
            int totalWork = 100 * opWork / Policy.opWork;
            String message = Messages.resources_deleting_0;
            monitor.beginTask(message, totalWork);
            message = Messages.resources_deleteProblem;
            MultiStatus result = new MultiStatus("org.eclipse.core.resources", 566, message, null);
            if (resources.length == 0) {
                MultiStatus multiStatus = result;
                return multiStatus;
            }
            resources = (IResource[])resources.clone();
            try {
                this.prepareOperation(this.getRoot(), monitor);
                this.beginOperation(true);
                int i = 0;
                while (i < resources.length) {
                    block17: {
                        Policy.checkCanceled(monitor);
                        Resource resource = (Resource)resources[i];
                        if (resource == null) {
                            monitor.worked(1);
                        } else {
                            try {
                                resource.delete(updateFlags, Policy.subMonitorFor(monitor, 1));
                            }
                            catch (CoreException e) {
                                ResourceInfo info = resource.getResourceInfo(false, false);
                                if (!resource.exists(resource.getFlags(info), false)) break block17;
                                message = NLS.bind((String)Messages.resources_couldnotDelete, (Object)resource.getFullPath());
                                result.merge((IStatus)new ResourceStatus(273, resource.getFullPath(), message));
                                result.merge(e.getStatus());
                            }
                        }
                    }
                    ++i;
                }
                if (result.matches(4)) {
                    throw new ResourceException((IStatus)result);
                }
                MultiStatus multiStatus = result;
                return multiStatus;
            }
            catch (OperationCanceledException e) {
                this.getWorkManager().operationCanceled();
                throw e;
            }
            finally {
                this.endOperation(this.getRoot(), true, Policy.subMonitorFor(monitor, totalWork - opWork));
            }
            {
                catch (Throwable throwable) {
                    throw throwable;
                }
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void deleteMarkers(IMarker[] markers) throws CoreException {
        Assert.isNotNull((Object)markers);
        if (markers.length == 0) {
            return;
        }
        markers = (IMarker[])markers.clone();
        try {
            this.prepareOperation(null, null);
            this.beginOperation(true);
            int i = 0;
            while (i < markers.length) {
                if (markers[i] != null && markers[i].getResource() != null) {
                    this.markerManager.removeMarker(markers[i].getResource(), markers[i].getId());
                }
                ++i;
            }
        }
        finally {
            this.endOperation(null, false, null);
        }
    }

    void deleteResource(IResource resource) {
        IPath path = resource.getFullPath();
        if (path.equals((Object)Path.ROOT)) {
            IProject[] children = this.getRoot().getProjects(8);
            int i = 0;
            while (i < children.length) {
                this.tree.deleteElement(children[i].getFullPath());
                ++i;
            }
        } else {
            this.tree.deleteElement(path);
        }
    }

    public void endOperation(ISchedulingRule rule, boolean build, IProgressMonitor monitor) throws CoreException {
        WorkManager workManager = this.getWorkManager();
        if (workManager.checkInFailed(rule)) {
            return;
        }
        boolean hasTreeChanges = false;
        boolean depthOne = false;
        try {
            workManager.setBuild(build);
            boolean bl = depthOne = workManager.getPreparedOperationDepth() == 1;
            if (!this.notificationManager.shouldNotify() && !depthOne) {
                this.notificationManager.requestNotify();
                return;
            }
            try {
                this.notificationManager.beginNotify();
                Assert.isTrue((workManager.getPreparedOperationDepth() > 0 ? 1 : 0) != 0, (String)"Mismatched begin/endOperation");
                workManager.rebalanceNestedOperations();
                hasTreeChanges = workManager.shouldBuild();
                if (hasTreeChanges) {
                    hasTreeChanges = this.operationTree != null && ElementTree.hasChanges(this.tree, this.operationTree, ResourceComparator.getBuildComparator(), true);
                }
                this.broadcastPostChange();
                this.saveManager.snapshotIfNeeded(hasTreeChanges);
            }
            finally {
                if (depthOne) {
                    this.tree.immutable();
                    this.operationTree = null;
                } else {
                    this.newWorkingTree();
                }
            }
        }
        finally {
            workManager.checkOut(rule);
        }
        if (depthOne) {
            this.buildManager.endTopLevel(hasTreeChanges);
        }
    }

    protected void flushBuildOrder() {
        this.buildOrder = null;
    }

    @Override
    public void forgetSavedTree(String pluginId) {
        this.saveManager.forgetSavedTree(pluginId);
    }

    public AliasManager getAliasManager() {
        return this.aliasManager;
    }

    public BuildManager getBuildManager() {
        return this.buildManager;
    }

    public IBuildConfiguration[] getBuildOrder() {
        if (this.buildOrder != null) {
            return this.buildOrder;
        }
        String[] order = this.description.getBuildOrder(false);
        if (order != null) {
            LinkedHashSet<IBuildConfiguration> configs = new LinkedHashSet<IBuildConfiguration>();
            int i = 0;
            while (i < order.length) {
                IProject project = this.getRoot().getProject(order[i]);
                if (project.isAccessible()) {
                    configs.add(((Project)project).internalGetActiveBuildConfig());
                }
                ++i;
            }
            configs.addAll(Arrays.asList(Workspace.vertexOrderToProjectBuildConfigOrder((ComputeProjectOrder.VertexOrder)this.computeActiveBuildConfigOrder()).buildConfigurations));
            IBuildConfiguration[] bo = new IBuildConfiguration[configs.size()];
            configs.toArray(bo);
            this.buildOrder = bo;
        } else {
            this.buildOrder = Workspace.vertexOrderToProjectBuildConfigOrder((ComputeProjectOrder.VertexOrder)this.computeActiveBuildConfigOrder()).buildConfigurations;
        }
        return this.buildOrder;
    }

    public CharsetManager getCharsetManager() {
        return this.charsetManager;
    }

    public ContentDescriptionManager getContentDescriptionManager() {
        return this.contentDescriptionManager;
    }

    @Override
    public Map<IProject, IProject[]> getDanglingReferences() {
        IProject[] projects = this.getRoot().getProjects(8);
        HashMap<IProject, IProject[]> result = new HashMap<IProject, IProject[]>(projects.length);
        int i = 0;
        while (i < projects.length) {
            Project project = (Project)projects[i];
            if (project.isAccessible()) {
                IProject[] refs = project.internalGetDescription().getReferencedProjects(false);
                ArrayList<IProject> dangling = new ArrayList<IProject>(refs.length);
                int j = 0;
                while (j < refs.length) {
                    if (!refs[i].exists()) {
                        dangling.add(refs[i]);
                    }
                    ++j;
                }
                if (!dangling.isEmpty()) {
                    result.put(projects[i], dangling.toArray(new IProject[dangling.size()]));
                }
            }
            ++i;
        }
        return result;
    }

    @Override
    public IWorkspaceDescription getDescription() {
        WorkspaceDescription workingCopy = Workspace.defaultWorkspaceDescription();
        this.description.copyTo(workingCopy);
        return workingCopy;
    }

    public ElementTree getElementTree() {
        return this.tree;
    }

    public FileSystemResourceManager getFileSystemManager() {
        return this.fileSystemManager;
    }

    public MarkerManager getMarkerManager() {
        return this.markerManager;
    }

    public LocalMetaArea getMetaArea() {
        return this.localMetaArea;
    }

    protected IMoveDeleteHook getMoveDeleteHook() {
        if (this.moveDeleteHook == null) {
            this.initializeMoveDeleteHook();
        }
        return this.moveDeleteHook;
    }

    @Override
    public IFilterMatcherDescriptor getFilterMatcherDescriptor(String filterMAtcherId) {
        return this.filterManager.getFilterDescriptor(filterMAtcherId);
    }

    @Override
    public IFilterMatcherDescriptor[] getFilterMatcherDescriptors() {
        return this.filterManager.getFilterDescriptors();
    }

    @Override
    public IProjectNatureDescriptor getNatureDescriptor(String natureId) {
        return this.natureManager.getNatureDescriptor(natureId);
    }

    @Override
    public IProjectNatureDescriptor[] getNatureDescriptors() {
        return this.natureManager.getNatureDescriptors();
    }

    public NatureManager getNatureManager() {
        return this.natureManager;
    }

    public NotificationManager getNotificationManager() {
        return this.notificationManager;
    }

    @Override
    public IPathVariableManager getPathVariableManager() {
        return this.pathVariableManager;
    }

    public IPropertyManager getPropertyManager() {
        return this.propertyManager;
    }

    public RefreshManager getRefreshManager() {
        return this.refreshManager;
    }

    public ResourceInfo getResourceInfo(IPath path, boolean phantom, boolean mutable) {
        ResourceInfo result;
        block6: {
            block5: {
                try {
                    if (path.segmentCount() == 0) {
                        ResourceInfo info = (ResourceInfo)this.tree.getTreeData();
                        Assert.isNotNull((Object)info, (String)"Tree root info must never be null");
                        return info;
                    }
                    result = null;
                    if (this.tree.includes(path)) break block5;
                    return null;
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    return null;
                }
            }
            result = mutable ? (ResourceInfo)this.tree.openElementData(path) : (ResourceInfo)this.tree.getElementData(path);
            if (result == null || phantom || !result.isSet(8)) break block6;
            return null;
        }
        return result;
    }

    @Override
    public IWorkspaceRoot getRoot() {
        return this.defaultRoot;
    }

    @Override
    public IResourceRuleFactory getRuleFactory() {
        if (this.ruleFactory == null) {
            this.ruleFactory = new Rules(this);
        }
        return this.ruleFactory;
    }

    public SaveManager getSaveManager() {
        return this.saveManager;
    }

    @Override
    public ISynchronizer getSynchronizer() {
        return this.synchronizer;
    }

    protected TeamHook getTeamHook() {
        if (this.teamHook == null) {
            this.initializeTeamHook();
        }
        return this.teamHook;
    }

    public WorkManager getWorkManager() throws CoreException {
        if (this._workManager == null) {
            String message = Messages.resources_shutdown;
            throw new ResourceException(new ResourceStatus(566, null, message));
        }
        return this._workManager;
    }

    protected void initializeMoveDeleteHook() {
        try {
            if (!this.canCreateExtensions()) {
                return;
            }
            IConfigurationElement[] configs = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.core.resources", "moveDeleteHook");
            if (configs == null || configs.length == 0) {
                return;
            }
            if (configs.length > 1) {
                ResourceStatus status = new ResourceStatus(4, 1, null, Messages.resources_oneHook, null);
                Policy.log(status);
                return;
            }
            try {
                IConfigurationElement config = configs[0];
                this.moveDeleteHook = (IMoveDeleteHook)config.createExecutableExtension("class");
            }
            catch (CoreException e) {
                if (this.canCreateExtensions()) {
                    ResourceStatus status = new ResourceStatus(4, 1, null, Messages.resources_initHook, e);
                    Policy.log(status);
                }
            }
        }
        finally {
            if (this.moveDeleteHook == null) {
                this.moveDeleteHook = new MoveDeleteHook();
            }
        }
    }

    protected void initializeTeamHook() {
        IConfigurationElement[] configs;
        block14: {
            block15: {
                block12: {
                    block13: {
                        block10: {
                            block11: {
                                try {
                                    if (this.canCreateExtensions()) break block10;
                                    if (this.teamHook != null) break block11;
                                }
                                catch (Throwable throwable) {
                                    if (this.teamHook == null) {
                                        this.teamHook = new TeamHook(){};
                                    }
                                    throw throwable;
                                }
                                this.teamHook = new /* invalid duplicate definition of identical inner class */;
                            }
                            return;
                        }
                        configs = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.core.resources", "teamHook");
                        if (configs != null && configs.length != 0) break block12;
                        if (this.teamHook != null) break block13;
                        this.teamHook = new /* invalid duplicate definition of identical inner class */;
                    }
                    return;
                }
                if (configs.length <= 1) break block14;
                ResourceStatus status = new ResourceStatus(4, 1, null, Messages.resources_oneTeamHook, null);
                Policy.log(status);
                if (this.teamHook != null) break block15;
                this.teamHook = new /* invalid duplicate definition of identical inner class */;
            }
            return;
        }
        try {
            IConfigurationElement config = configs[0];
            this.teamHook = (TeamHook)config.createExecutableExtension("class");
        }
        catch (CoreException e) {
            if (this.canCreateExtensions()) {
                ResourceStatus status = new ResourceStatus(4, 1, null, Messages.resources_initTeamHook, e);
                Policy.log(status);
            }
        }
        if (this.teamHook == null) {
            this.teamHook = new /* invalid duplicate definition of identical inner class */;
        }
    }

    protected void initializeValidator() {
        block5: {
            this.shouldValidate = false;
            if (!this.canCreateExtensions()) {
                return;
            }
            IConfigurationElement[] configs = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.core.resources", "fileModificationValidator");
            if (configs == null || configs.length == 0) {
                return;
            }
            if (configs.length > 1) {
                ResourceStatus status = new ResourceStatus(4, 1, null, Messages.resources_oneValidator, null);
                Policy.log(status);
                return;
            }
            try {
                IConfigurationElement config = configs[0];
                this.validator = (IFileModificationValidator)config.createExecutableExtension("class");
                this.shouldValidate = true;
            }
            catch (CoreException e) {
                if (!this.canCreateExtensions()) break block5;
                ResourceStatus status = new ResourceStatus(4, 1, null, Messages.resources_initValidator, e);
                Policy.log(status);
            }
        }
    }

    public WorkspaceDescription internalGetDescription() {
        return this.description;
    }

    @Override
    public boolean isAutoBuilding() {
        return this.description.isAutoBuilding();
    }

    public boolean isOpen() {
        return this.openFlag;
    }

    @Override
    public boolean isTreeLocked() {
        return this.treeLocked == Thread.currentThread();
    }

    protected void linkTrees(IPath path, ElementTree[] newTrees) {
        this.tree = this.tree.mergeDeltaChain(path, newTrees);
    }

    @Override
    public IProjectDescription loadProjectDescription(InputStream stream) throws CoreException {
        ProjectDescription result = null;
        result = new ProjectDescriptionReader().read(new InputSource(stream));
        if (result == null) {
            String message = NLS.bind((String)Messages.resources_errorReadProject, (Object)stream.toString());
            Status status = new Status(4, "org.eclipse.core.resources", 567, message, null);
            throw new ResourceException((IStatus)status);
        }
        return result;
    }

    @Override
    public IProjectDescription loadProjectDescription(IPath path) throws CoreException {
        ProjectDescription result = null;
        IOException e = null;
        try {
            result = new ProjectDescriptionReader().read(path);
            if (result != null) {
                IPath user = path.removeLastSegments(1);
                IPath platform = this.getRoot().getLocation().append(result.getName());
                if (!user.toFile().equals(platform.toFile())) {
                    result.setLocation(user);
                }
            }
        }
        catch (IOException ex) {
            e = ex;
        }
        if (result == null || e != null) {
            String message = NLS.bind((String)Messages.resources_errorReadProject, (Object)path.toOSString());
            Status status = new Status(4, "org.eclipse.core.resources", 567, message, (Throwable)e);
            throw new ResourceException((IStatus)status);
        }
        return result;
    }

    @Override
    public IStatus move(IResource[] resources, IPath destination, boolean force, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        return this.move(resources, destination, updateFlags |= 2, monitor);
    }

    @Override
    public IStatus move(IResource[] resources, IPath destination, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            Assert.isLegal((resources != null ? 1 : 0) != 0);
            int opWork = Math.max(resources.length, 1);
            int totalWork = 100 * opWork / Policy.opWork;
            String message = Messages.resources_moving_0;
            monitor.beginTask(message, totalWork);
            if (resources.length == 0) {
                IStatus iStatus = Status.OK_STATUS;
                return iStatus;
            }
            resources = (IResource[])resources.clone();
            IPath parentPath = null;
            message = Messages.resources_moveProblem;
            MultiStatus status = new MultiStatus("org.eclipse.core.resources", 566, message, null);
            try {
                try {
                    this.prepareOperation(this.getRoot(), monitor);
                    this.beginOperation(true);
                    int i = 0;
                    while (i < resources.length) {
                        block22: {
                            Policy.checkCanceled(monitor);
                            Resource resource = (Resource)resources[i];
                            if (resource == null || Workspace.isDuplicate(resources, i)) {
                                monitor.worked(1);
                            } else {
                                if (parentPath == null) {
                                    parentPath = resource.getFullPath().removeLastSegments(1);
                                }
                                if (parentPath.equals((Object)resource.getFullPath().removeLastSegments(1))) {
                                    try {
                                        IStatus requirements = resource.checkMoveRequirements(destination.append(resource.getName()), resource.getType(), updateFlags);
                                        if (requirements.isOK()) {
                                            try {
                                                resource.move(destination.append(resource.getName()), updateFlags, Policy.subMonitorFor(monitor, 1));
                                            }
                                            catch (CoreException e) {
                                                status.merge(e.getStatus());
                                            }
                                            break block22;
                                        }
                                        monitor.worked(1);
                                        status.merge(requirements);
                                    }
                                    catch (CoreException e) {
                                        monitor.worked(1);
                                        status.merge(e.getStatus());
                                    }
                                } else {
                                    monitor.worked(1);
                                    message = NLS.bind((String)Messages.resources_notChild, (Object)resource.getFullPath(), (Object)parentPath);
                                    status.merge((IStatus)new ResourceStatus(76, resource.getFullPath(), message));
                                }
                            }
                        }
                        ++i;
                    }
                }
                catch (OperationCanceledException e) {
                    this.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.endOperation(this.getRoot(), true, Policy.subMonitorFor(monitor, totalWork - opWork));
            }
            if (status.matches(4)) {
                throw new ResourceException((IStatus)status);
            }
            IStatus iStatus = status.isOK() ? Status.OK_STATUS : status;
            return iStatus;
        }
        finally {
            monitor.done();
        }
    }

    void move(Resource source, IPath destination, int depth, int updateFlags, boolean keepSyncInfo) throws CoreException {
        this.copyTree(source, destination, depth, updateFlags, keepSyncInfo, true, source.getType() == 4);
        source.fixupAfterMoveSource();
    }

    protected ResourceInfo newElement(int type) {
        ResourceInfo result = null;
        switch (type) {
            case 1: 
            case 2: {
                result = new ResourceInfo();
                break;
            }
            case 4: {
                result = new ProjectInfo();
                break;
            }
            case 8: {
                result = new RootInfo();
            }
        }
        result.setNodeId(this.nextNodeId());
        this.updateModificationStamp(result);
        result.setType(type);
        return result;
    }

    @Override
    public IBuildConfiguration newBuildConfig(String projectName, String configName) {
        return new BuildConfiguration(this.getRoot().getProject(projectName), configName);
    }

    @Override
    public IProjectDescription newProjectDescription(String projectName) {
        ProjectDescription result = new ProjectDescription();
        result.setName(projectName);
        return result;
    }

    public Resource newResource(IPath path, int type) {
        switch (type) {
            case 2: {
                if (path.segmentCount() < 2) {
                    String message = "Path must include project and resource name: " + path.toString();
                    Assert.isLegal((boolean)false, (String)message);
                }
                return new Folder(path.makeAbsolute(), this);
            }
            case 1: {
                if (path.segmentCount() < 2) {
                    String message = "Path must include project and resource name: " + path.toString();
                    Assert.isLegal((boolean)false, (String)message);
                }
                return new File(path.makeAbsolute(), this);
            }
            case 4: {
                return (Resource)((Object)this.getRoot().getProject(path.lastSegment()));
            }
            case 8: {
                return (Resource)((Object)this.getRoot());
            }
        }
        Assert.isLegal((boolean)false);
        return null;
    }

    public ElementTree newWorkingTree() {
        this.tree = this.tree.newEmptyDelta();
        return this.tree;
    }

    protected long nextMarkerId() {
        return this.nextMarkerId++;
    }

    protected long nextNodeId() {
        return this.nextNodeId++;
    }

    public IStatus open(IProgressMonitor monitor) throws CoreException {
        String message = Messages.resources_workspaceOpen;
        Assert.isTrue((!this.isOpen() ? 1 : 0) != 0, (String)message);
        if (!this.getMetaArea().hasSavedWorkspace()) {
            message = Messages.resources_readWorkspaceMeta;
            throw new ResourceException(567, Platform.getLocation(), message, null);
        }
        this.description = new WorkspacePreferences();
        WorkspaceDescription oldDescription = this.getMetaArea().readOldWorkspace();
        if (oldDescription != null) {
            this.description.copyFrom(oldDescription);
            ResourcesPlugin.getPlugin().savePluginPreferences();
        }
        this.localMetaArea.locationFor(this.getRoot()).toFile().mkdirs();
        IProgressMonitor nullMonitor = Policy.monitorFor(null);
        this.startup(nullMonitor);
        this.notificationManager.startup(null);
        this.openFlag = true;
        if (this.crashed || this.refreshRequested()) {
            try {
                this.refreshManager.refresh(this.getRoot());
            }
            catch (RuntimeException e) {
                return new ResourceStatus(566, (IPath)Path.ROOT, Messages.resources_errorMultiRefresh, e);
            }
        }
        this.stringPoolJob = new StringPoolJob();
        this.stringPoolJob.addStringPoolParticipant(this.saveManager, this.getRoot());
        return Status.OK_STATUS;
    }

    public void prepareOperation(ISchedulingRule rule, IProgressMonitor monitor) throws CoreException {
        try {
            if (rule != null && rule.isConflicting(this.getRuleFactory().buildRule())) {
                this.buildManager.interrupt();
            }
        }
        finally {
            this.getWorkManager().checkIn(rule, monitor);
        }
        if (!this.isOpen()) {
            String message = Messages.resources_workspaceClosed;
            throw new ResourceException(76, null, message, null);
        }
    }

    protected boolean refreshRequested() {
        String[] args = Platform.getCommandLineArgs();
        int i = 0;
        while (i < args.length) {
            if (args[i].equalsIgnoreCase("-refresh")) {
                return true;
            }
            ++i;
        }
        return false;
    }

    @Override
    public void removeResourceChangeListener(IResourceChangeListener listener) {
        this.notificationManager.removeListener(listener);
    }

    @Override
    @Deprecated
    public void removeSaveParticipant(Plugin plugin) {
        Assert.isNotNull((Object)plugin, (String)"Plugin must not be null");
        this.saveManager.removeParticipant(plugin.getBundle().getSymbolicName());
    }

    @Override
    public void removeSaveParticipant(String pluginId) {
        Assert.isNotNull((Object)pluginId, (String)"Plugin id must not be null");
        this.saveManager.removeParticipant(pluginId);
    }

    @Override
    public void run(IWorkspaceRunnable action, IProgressMonitor monitor) throws CoreException {
        this.run(action, this.defaultRoot, 1, monitor);
    }

    @Override
    public void run(IWorkspaceRunnable action, ISchedulingRule rule, int options, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask("", 100);
            int depth = -1;
            boolean avoidNotification = (options & 1) != 0;
            try {
                try {
                    this.prepareOperation(rule, monitor);
                    this.beginOperation(true);
                    if (avoidNotification) {
                        avoidNotification = this.notificationManager.beginAvoidNotify();
                    }
                    depth = this.getWorkManager().beginUnprotected();
                    action.run(Policy.subMonitorFor(monitor, Policy.opWork, 4));
                }
                catch (OperationCanceledException e) {
                    this.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                if (avoidNotification) {
                    this.notificationManager.endAvoidNotify();
                }
                if (depth >= 0) {
                    this.getWorkManager().endUnprotected(depth);
                }
                this.endOperation(rule, false, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public IStatus save(boolean full, IProgressMonitor monitor) throws CoreException {
        return this.save(full, false, monitor);
    }

    public IStatus save(boolean full, boolean keepConsistencyWhenCanceled, IProgressMonitor monitor) throws CoreException {
        if (full) {
            if (this.getWorkManager().isLockAlreadyAcquired()) {
                String message = Messages.resources_saveOp;
                throw new ResourceException(76, null, message, new IllegalStateException());
            }
            return this.saveManager.save(1, keepConsistencyWhenCanceled, null, monitor);
        }
        try {
            this.prepareOperation(this.getRoot(), monitor);
            this.beginOperation(false);
            this.saveManager.requestSnapshot();
            String message = Messages.resources_snapRequest;
            ResourceStatus resourceStatus = new ResourceStatus(0, message);
            return resourceStatus;
        }
        finally {
            this.endOperation(this.getRoot(), false, null);
        }
    }

    public void setCrashed(boolean value) {
        this.crashed = value;
        if (this.crashed) {
            String msg = "The workspace exited with unsaved changes in the previous session; refreshing workspace to recover changes.";
            Policy.log(new ResourceStatus(10035, msg));
            if (Policy.DEBUG) {
                System.out.println(msg);
            }
        }
    }

    @Override
    public void setDescription(IWorkspaceDescription value) {
        WorkspaceDescription newDescription = (WorkspaceDescription)value;
        String[] newOrder = newDescription.getBuildOrder(false);
        if (this.description.getBuildOrder(false) != null || newOrder != null) {
            this.buildOrder = null;
        }
        this.description.copyFrom(newDescription);
        ResourcesPlugin.getPlugin().savePluginPreferences();
    }

    public void setTreeLocked(boolean locked) {
        Assert.isTrue((!locked || this.treeLocked == null ? 1 : 0) != 0, (String)"The workspace tree is already locked");
        this.treeLocked = locked ? Thread.currentThread() : null;
    }

    @Override
    public void setWorkspaceLock(WorkspaceLock lock) {
    }

    protected void shutdown(IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            IManager[] managers = new IManager[]{this.buildManager, this.propertyManager, this.pathVariableManager, this.charsetManager, this.fileSystemManager, this.markerManager, this._workManager, this.aliasManager, this.refreshManager, this.contentDescriptionManager, this.natureManager, this.filterManager};
            monitor.beginTask("", managers.length);
            String message = Messages.resources_shutdownProblems;
            MultiStatus status = new MultiStatus("org.eclipse.core.resources", 566, message, null);
            int i = 0;
            while (i < managers.length) {
                IManager manager = managers[i];
                if (manager == null) {
                    monitor.worked(1);
                } else {
                    try {
                        manager.shutdown(Policy.subMonitorFor(monitor, 1));
                    }
                    catch (Exception e) {
                        message = Messages.resources_shutdownProblems;
                        status.add((IStatus)new Status(4, "org.eclipse.core.resources", 566, message, (Throwable)e));
                    }
                }
                ++i;
            }
            this.buildManager = null;
            this.notificationManager = null;
            this.propertyManager = null;
            this.pathVariableManager = null;
            this.fileSystemManager = null;
            this.markerManager = null;
            this.synchronizer = null;
            this.saveManager = null;
            this._workManager = null;
            this.aliasManager = null;
            this.refreshManager = null;
            this.charsetManager = null;
            this.contentDescriptionManager = null;
            if (!status.isOK()) {
                throw new CoreException((IStatus)status);
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public String[] sortNatureSet(String[] natureIds) {
        return this.natureManager.sortNatureSet(natureIds);
    }

    protected void startup(IProgressMonitor monitor) throws CoreException {
        try {
            this._workManager = new WorkManager(this);
            this._workManager.startup(null);
            this.fileSystemManager = new FileSystemResourceManager(this);
            this.fileSystemManager.startup(monitor);
            this.pathVariableManager = new PathVariableManager();
            this.pathVariableManager.startup(null);
            this.natureManager = new NatureManager();
            this.natureManager.startup(null);
            this.filterManager = new FilterTypeManager();
            this.filterManager.startup(null);
            this.buildManager = new BuildManager(this, this.getWorkManager().getLock());
            this.buildManager.startup(null);
            this.notificationManager = new NotificationManager(this);
            this.notificationManager.startup(null);
            this.markerManager = new MarkerManager(this);
            this.markerManager.startup(null);
            this.synchronizer = new Synchronizer(this);
            this.refreshManager = new RefreshManager(this);
            this.saveManager = new SaveManager(this);
            this.saveManager.startup(null);
            this.refreshManager.startup(null);
            this.aliasManager = new AliasManager(this);
            this.aliasManager.startup(null);
            this.propertyManager = ResourcesCompatibilityHelper.createPropertyManager();
            this.propertyManager.startup(monitor);
            this.charsetManager = new CharsetManager(this);
            this.charsetManager.startup(null);
            this.contentDescriptionManager = new ContentDescriptionManager();
            this.contentDescriptionManager.startup(null);
        }
        finally {
            this.treeLocked = null;
            this._workManager.postWorkspaceStartup();
        }
    }

    public String toDebugString() {
        final StringBuffer buffer = new StringBuffer("\nDump of " + this.toString() + ":\n");
        buffer.append("  parent: " + this.tree.getParent());
        IElementContentVisitor visitor = new IElementContentVisitor(){

            public boolean visitElement(ElementTree aTree, IPathRequestor requestor, Object elementContents) {
                buffer.append("\n  " + requestor.requestPath() + ": " + elementContents);
                return true;
            }
        };
        new ElementTreeIterator(this.tree, (IPath)Path.ROOT).iterate(visitor);
        return buffer.toString();
    }

    public void updateModificationStamp(ResourceInfo info) {
        info.incrementModificationStamp();
    }

    @Override
    public IStatus validateEdit(final IFile[] files, final Object context) {
        if (!this.shouldValidate) {
            String message = Messages.resources_readOnly2;
            MultiStatus result = new MultiStatus("org.eclipse.core.resources", 279, message, null);
            int i = 0;
            while (i < files.length) {
                if (files[i].isReadOnly()) {
                    IPath filePath = files[i].getFullPath();
                    message = NLS.bind((String)Messages.resources_readOnly, (Object)filePath);
                    result.add((IStatus)new ResourceStatus(279, filePath, message));
                }
                ++i;
            }
            return result.getChildren().length == 0 ? Status.OK_STATUS : result;
        }
        if (this.validator == null) {
            this.initializeValidator();
        }
        if (this.validator == null) {
            return Status.OK_STATUS;
        }
        final IStatus[] status = new IStatus[1];
        ISafeRunnable body = new ISafeRunnable(){

            public void handleException(Throwable exception) {
                status[0] = new ResourceStatus(4, null, Messages.resources_errorValidator, exception);
            }

            public void run() throws Exception {
                Object c = context;
                if (!(Workspace.this.validator instanceof FileModificationValidator) && c instanceof FileModificationValidationContext) {
                    c = null;
                }
                status[0] = Workspace.this.validator.validateEdit(files, c);
            }
        };
        SafeRunner.run((ISafeRunnable)body);
        return status[0];
    }

    @Override
    public IStatus validateLinkLocation(IResource resource, IPath unresolvedLocation) {
        return this.locationValidator.validateLinkLocation(resource, unresolvedLocation);
    }

    @Override
    public IStatus validateLinkLocationURI(IResource resource, URI unresolvedLocation) {
        return this.locationValidator.validateLinkLocationURI(resource, unresolvedLocation);
    }

    @Override
    public IStatus validateName(String segment, int type) {
        return this.locationValidator.validateName(segment, type);
    }

    @Override
    public IStatus validateNatureSet(String[] natureIds) {
        return this.natureManager.validateNatureSet(natureIds);
    }

    @Override
    public IStatus validatePath(String path, int type) {
        return this.locationValidator.validatePath(path, type);
    }

    @Override
    public IStatus validateProjectLocation(IProject context, IPath location) {
        return this.locationValidator.validateProjectLocation(context, location);
    }

    @Override
    public IStatus validateProjectLocationURI(IProject project, URI location) {
        return this.locationValidator.validateProjectLocationURI(project, location);
    }

    protected void validateSave(final IFile file) throws CoreException {
        if (!this.shouldValidate) {
            return;
        }
        if (this.validator == null) {
            this.initializeValidator();
        }
        if (this.validator == null) {
            return;
        }
        final IStatus[] status = new IStatus[1];
        ISafeRunnable body = new ISafeRunnable(){

            public void handleException(Throwable exception) {
                status[0] = new ResourceStatus(4, null, Messages.resources_errorValidator, exception);
            }

            public void run() throws Exception {
                status[0] = Workspace.this.validator.validateSave(file);
            }
        };
        SafeRunner.run((ISafeRunnable)body);
        if (!status[0].isOK()) {
            throw new ResourceException(status[0]);
        }
    }

    @Override
    public IStatus validateFiltered(IResource resource) {
        try {
            if (((Resource)resource).isFilteredWithException(true)) {
                return new ResourceStatus(4, Messages.resources_errorResourceIsFiltered);
            }
        }
        catch (CoreException coreException) {}
        return Status.OK_STATUS;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class BuildConfigurationComparator
    implements Comparator<IBuildConfiguration> {
        @Override
        public int compare(IBuildConfiguration px, IBuildConfiguration py) {
            int cmp = py.getProject().getName().compareTo(px.getProject().getName());
            if (cmp == 0) {
                cmp = py.getName().compareTo(px.getName());
            }
            return cmp;
        }
    }

    public static final class ProjectBuildConfigOrder {
        public IBuildConfiguration[] buildConfigurations;
        public boolean hasCycles;
        public IBuildConfiguration[][] knots;

        public ProjectBuildConfigOrder(IBuildConfiguration[] buildConfigurations, boolean hasCycles, IBuildConfiguration[][] knots) {
            this.buildConfigurations = buildConfigurations;
            this.hasCycles = hasCycles;
            this.knots = knots;
        }
    }
}

