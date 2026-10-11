/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.events;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.events.AutoBuildJob;
import org.eclipse.core.internal.events.BuildCommand;
import org.eclipse.core.internal.events.BuildContext;
import org.eclipse.core.internal.events.BuilderPersistentInfo;
import org.eclipse.core.internal.events.ILifecycleListener;
import org.eclipse.core.internal.events.InternalBuilder;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.events.ResourceComparator;
import org.eclipse.core.internal.events.ResourceDelta;
import org.eclipse.core.internal.events.ResourceDeltaFactory;
import org.eclipse.core.internal.events.ResourceStats;
import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.WorkManager;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IBuildContext;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IncrementalProjectBuilder;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BuildManager
implements ICoreConstants,
IManager,
ILifecycleListener {
    private static final int TOTAL_BUILD_WORK = 100000;
    final AutoBuildJob autoBuildJob;
    private boolean building = false;
    private final Set<IProject> builtProjects = new HashSet<IProject>();
    protected InternalBuilder currentBuilder;
    private DeltaDataTree currentDelta;
    private ElementTree currentLastBuiltTree;
    private ElementTree currentTree;
    private final DeltaCache deltaCache = new DeltaCache();
    private final DeltaCache deltaTreeCache = new DeltaCache();
    private ILock lock;
    private boolean rebuildRequested = false;
    private final Bundle systemBundle = Platform.getBundle((String)"org.eclipse.osgi");
    private long timeStamp = -1L;
    private long overallTimeStamp = -1L;
    private Workspace workspace;

    public BuildManager(Workspace workspace, ILock workspaceLock) {
        this.workspace = workspace;
        this.autoBuildJob = new AutoBuildJob(workspace);
        this.lock = workspaceLock;
        InternalBuilder.buildManager = this;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void basicBuild(int trigger, IncrementalProjectBuilder builder, Map<String, String> args, MultiStatus status, IProgressMonitor monitor) {
        try {
            ISchedulingRule rule;
            int depth;
            boolean clean;
            block34: {
                block35: {
                    this.currentBuilder = builder;
                    this.currentBuilder.clearLastBuiltStateRequests();
                    clean = trigger == 15;
                    this.currentLastBuiltTree = this.currentBuilder.getLastBuiltTree();
                    boolean isBuilding = builder.getCommand().isBuilding(trigger);
                    if (!clean && this.currentLastBuiltTree == null) {
                        if (trigger == 9 && !isBuilding) {
                            return;
                        }
                        trigger = 6;
                        boolean bl = isBuilding = isBuilding || builder.getCommand().isBuilding(trigger);
                    }
                    if (!isBuilding) {
                        if (!clean) return;
                        this.currentBuilder.setLastBuiltTree(null);
                        return;
                    }
                    this.currentTree = trigger == 6 || clean ? null : this.workspace.getElementTree();
                    depth = -1;
                    rule = null;
                    try {
                        if (this.needsBuild(this.currentBuilder, trigger)) break block34;
                        monitor.beginTask("", 1);
                        monitor.done();
                        if (depth >= 0) {
                            this.getWorkManager().endUnprotected(depth);
                        }
                        if (rule == null) break block35;
                    }
                    catch (Throwable throwable) {
                        if (depth >= 0) {
                            this.getWorkManager().endUnprotected(depth);
                        }
                        if (rule != null) {
                            Job.getJobManager().endRule(rule);
                        }
                        if (clean || this.currentBuilder.wasForgetStateRequested()) {
                            this.currentBuilder.setLastBuiltTree(null);
                        } else if (this.currentBuilder.wasRememberStateRequested()) {
                            if (trigger == 6) {
                                this.currentBuilder.setLastBuiltTree(null);
                            }
                        } else {
                            ElementTree lastTree = this.workspace.getElementTree();
                            lastTree.immutable();
                            this.currentBuilder.setLastBuiltTree(lastTree);
                        }
                        this.hookEndBuild(builder);
                        throw throwable;
                    }
                    Job.getJobManager().endRule(rule);
                }
                if (clean || this.currentBuilder.wasForgetStateRequested()) {
                    this.currentBuilder.setLastBuiltTree(null);
                } else if (this.currentBuilder.wasRememberStateRequested()) {
                    if (trigger == 6) {
                        this.currentBuilder.setLastBuiltTree(null);
                    }
                } else {
                    ElementTree lastTree = this.workspace.getElementTree();
                    lastTree.immutable();
                    this.currentBuilder.setLastBuiltTree(lastTree);
                }
                this.hookEndBuild(builder);
                return;
            }
            rule = builder.getRule(trigger, args);
            String name = this.currentBuilder.getLabel();
            String message = name != null ? NLS.bind((String)Messages.events_invoking_2, (Object)name, (Object)builder.getProject().getFullPath()) : NLS.bind((String)Messages.events_invoking_1, (Object)builder.getProject().getFullPath());
            monitor.subTask(message);
            this.hookStartBuild(builder, trigger);
            if (rule != null && this.currentTree != null) {
                this.workspace.newWorkingTree();
            }
            depth = this.getWorkManager().beginUnprotected();
            if (rule != null) {
                Job.getJobManager().beginRule(rule, monitor);
                if (this.currentTree != null) {
                    this.currentTree = this.workspace.getElementTree();
                }
            }
            SafeRunner.run((ISafeRunnable)this.getSafeRunnable(trigger, args, status, monitor));
            if (depth >= 0) {
                this.getWorkManager().endUnprotected(depth);
            }
            if (rule != null) {
                Job.getJobManager().endRule(rule);
            }
            if (clean || this.currentBuilder.wasForgetStateRequested()) {
                this.currentBuilder.setLastBuiltTree(null);
            } else if (this.currentBuilder.wasRememberStateRequested()) {
                if (trigger == 6) {
                    this.currentBuilder.setLastBuiltTree(null);
                }
            } else {
                ElementTree lastTree = this.workspace.getElementTree();
                lastTree.immutable();
                this.currentBuilder.setLastBuiltTree(lastTree);
            }
            this.hookEndBuild(builder);
            return;
        }
        finally {
            this.currentBuilder = null;
            this.currentTree = null;
            this.currentLastBuiltTree = null;
            this.currentDelta = null;
        }
    }

    protected void basicBuild(IBuildConfiguration buildConfiguration, int trigger, IBuildContext context, ICommand[] commands, MultiStatus status, IProgressMonitor monitor) {
        try {
            int i = 0;
            while (i < commands.length) {
                this.checkCanceled(trigger, monitor);
                BuildCommand command = (BuildCommand)commands[i];
                IProgressMonitor sub = Policy.subMonitorFor(monitor, 1);
                IncrementalProjectBuilder builder = this.getBuilder(buildConfiguration, command, i, status, context);
                if (builder != null) {
                    this.basicBuild(trigger, builder, command.getArguments(false), status, sub);
                }
                ++i;
            }
        }
        catch (CoreException e) {
            status.add(e.getStatus());
        }
    }

    private IStatus basicBuild(IBuildConfiguration buildConfiguration, int trigger, IBuildContext context, IProgressMonitor monitor) {
        if (!this.canRun(trigger)) {
            return Status.OK_STATUS;
        }
        try {
            this.hookStartBuild(new IBuildConfiguration[]{buildConfiguration}, trigger);
            MultiStatus status = new MultiStatus("org.eclipse.core.resources", 566, Messages.events_errors, null);
            this.basicBuild(buildConfiguration, trigger, context, status, monitor);
            MultiStatus multiStatus = status;
            return multiStatus;
        }
        finally {
            this.hookEndBuild(trigger);
        }
    }

    private void basicBuild(final IBuildConfiguration buildConfiguration, final int trigger, final IBuildContext context, final MultiStatus status, final IProgressMonitor monitor) {
        try {
            final IProject project = buildConfiguration.getProject();
            final ICommand[] commands = project.isAccessible() ? ((Project)project).internalGetDescription().getBuildSpec(false) : (ICommand[])null;
            int work = commands == null ? 0 : commands.length;
            monitor.beginTask(NLS.bind((String)Messages.events_building_1, (Object)project.getFullPath()), work);
            if (work == 0) {
                return;
            }
            ISafeRunnable code = new ISafeRunnable(){

                public void handleException(Throwable e) {
                    if (e instanceof OperationCanceledException) {
                        if (Policy.DEBUG_BUILD_INVOKING) {
                            Policy.debug("Build canceled");
                        }
                        throw (OperationCanceledException)e;
                    }
                    String errorText = e.getMessage();
                    if (errorText == null) {
                        errorText = NLS.bind((String)Messages.events_unknown, (Object)e.getClass().getName(), (Object)project.getName());
                    }
                    status.add((IStatus)new Status(2, "org.eclipse.core.resources", 566, errorText, e));
                }

                public void run() throws Exception {
                    BuildManager.this.basicBuild(buildConfiguration, trigger, context, commands, status, monitor);
                }
            };
            SafeRunner.run((ISafeRunnable)code);
        }
        finally {
            monitor.done();
        }
    }

    private IStatus basicBuild(IBuildConfiguration buildConfiguration, int trigger, String builderName, Map<String, String> args, IProgressMonitor monitor) {
        IProject project = buildConfiguration.getProject();
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.events_building_1, (Object)project.getFullPath());
            monitor.beginTask(message, 1);
            if (!this.canRun(trigger)) {
                IStatus iStatus = Status.OK_STATUS;
                return iStatus;
            }
            try {
                this.hookStartBuild(new IBuildConfiguration[]{buildConfiguration}, trigger);
                MultiStatus status = new MultiStatus("org.eclipse.core.resources", 566, Messages.events_errors, null);
                ICommand command = this.getCommand(project, builderName, args);
                try {
                    BuildContext context = new BuildContext(buildConfiguration);
                    IncrementalProjectBuilder builder = this.getBuilder(buildConfiguration, command, -1, status, context);
                    if (builder != null) {
                        this.basicBuild(trigger, builder, args, status, Policy.subMonitorFor(monitor, 1));
                    }
                }
                catch (CoreException e) {
                    status.add(e.getStatus());
                }
                MultiStatus multiStatus = status;
                this.hookEndBuild(trigger);
                return multiStatus;
            }
            catch (Throwable throwable) {
                this.hookEndBuild(trigger);
                throw throwable;
            }
        }
        finally {
            monitor.done();
        }
    }

    private void basicBuildLoop(IBuildConfiguration[] configs, IBuildConfiguration[] requestedConfigs, int trigger, MultiStatus status, IProgressMonitor monitor) {
        int maxIterations;
        int projectWork = configs.length;
        if (projectWork > 0) {
            projectWork = 100000 / projectWork;
        }
        if ((maxIterations = this.workspace.getDescription().getMaxBuildIterations()) <= 0) {
            maxIterations = 1;
        }
        this.rebuildRequested = true;
        int iter = 0;
        while (this.rebuildRequested && iter < maxIterations) {
            this.rebuildRequested = false;
            this.builtProjects.clear();
            int i = 0;
            while (i < configs.length) {
                if (configs[i].getProject().isAccessible()) {
                    BuildContext context = new BuildContext(configs[i], requestedConfigs, configs);
                    this.basicBuild(configs[i], trigger, context, status, Policy.subMonitorFor(monitor, projectWork));
                    this.builtProjects.add(configs[i].getProject());
                }
                ++i;
            }
            trigger = 10;
            ++iter;
        }
    }

    public IStatus build(IBuildConfiguration[] configs, IBuildConfiguration[] requestedConfigs, int trigger, IProgressMonitor monitor) {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask(Messages.events_building_0, 100000);
            if (!this.canRun(trigger)) {
                IStatus iStatus = Status.OK_STATUS;
                return iStatus;
            }
            try {
                this.hookStartBuild(configs, trigger);
                MultiStatus status = new MultiStatus("org.eclipse.core.resources", 75, Messages.events_errors, null);
                this.basicBuildLoop(configs, requestedConfigs, trigger, status, monitor);
                MultiStatus multiStatus = status;
                this.hookEndBuild(trigger);
                return multiStatus;
            }
            catch (Throwable throwable) {
                this.hookEndBuild(trigger);
                throw throwable;
            }
        }
        finally {
            monitor.done();
            if (trigger == 10 || trigger == 6) {
                this.autoBuildJob.avoidBuild();
            }
        }
    }

    public IStatus build(IBuildConfiguration buildConfiguration, int trigger, String builderName, Map<String, String> args, IProgressMonitor monitor) {
        monitor = Policy.monitorFor(monitor);
        if (builderName == null) {
            BuildContext context = new BuildContext(buildConfiguration);
            return this.basicBuild(buildConfiguration, trigger, context, monitor);
        }
        return this.basicBuild(buildConfiguration, trigger, builderName, args, monitor);
    }

    private boolean canRun(int trigger) {
        return !this.building;
    }

    private void checkCanceled(int trigger, IProgressMonitor monitor) {
        if (this.systemBundle.getState() == 16) {
            throw new OperationCanceledException();
        }
        Policy.checkCanceled(monitor);
        if (trigger != 9) {
            return;
        }
        if (this.autoBuildJob.isInterrupted()) {
            throw new OperationCanceledException();
        }
    }

    public ArrayList<BuilderPersistentInfo> createBuildersPersistentInfo(IProject project) throws CoreException {
        ArrayList<BuilderPersistentInfo> oldInfos = this.getBuildersPersistentInfo(project);
        ProjectDescription desc = ((Project)project).internalGetDescription();
        ICommand[] commands = desc.getBuildSpec(false);
        if (commands.length == 0) {
            return null;
        }
        IBuildConfiguration[] configs = project.getBuildConfigs();
        ArrayList<BuilderPersistentInfo> newInfos = new ArrayList<BuilderPersistentInfo>(commands.length * configs.length);
        int i = 0;
        while (i < commands.length) {
            BuildCommand command = (BuildCommand)commands[i];
            String builderName = command.getBuilderName();
            boolean supportsConfigs = command.supportsConfigs();
            int numberConfigs = supportsConfigs ? configs.length : 1;
            int j = 0;
            while (j < numberConfigs) {
                ElementTree oldTree;
                IBuildConfiguration config = configs[j];
                BuilderPersistentInfo info = null;
                IncrementalProjectBuilder builder = ((BuildCommand)commands[i]).getBuilder(config);
                if (builder == null) {
                    if (oldInfos != null) {
                        info = this.getBuilderInfo(oldInfos, builderName, supportsConfigs ? config.getName() : null, i);
                    }
                } else if (!(builder instanceof MissingBuilder) && (oldTree = builder.getLastBuiltTree()) != null) {
                    info = new BuilderPersistentInfo(project.getName(), supportsConfigs ? config.getName() : null, builderName, i);
                    info.setLastBuildTree(oldTree);
                    info.setInterestingProjects(builder.getInterestingProjects());
                }
                if (info != null) {
                    newInfos.add(info);
                }
                ++j;
            }
            ++i;
        }
        return newInfos;
    }

    private String debugBuilder() {
        return this.currentBuilder == null ? "<no builder>" : this.currentBuilder.getClass().getName();
    }

    private String debugProject() {
        if (this.currentBuilder == null) {
            return "<no project>";
        }
        return this.currentBuilder.getProject().getFullPath().toString();
    }

    private String debugTrigger(int trigger) {
        switch (trigger) {
            case 6: {
                return "FULL_BUILD";
            }
            case 15: {
                return "CLEAN_BUILD";
            }
        }
        return "INCREMENTAL_BUILD";
    }

    public void endTopLevel(boolean needsBuild) {
        this.autoBuildJob.build(needsBuild);
    }

    private boolean getBooleanAttribute(IConfigurationElement element, String name) {
        String valueString = element.getAttribute(name);
        return valueString != null && valueString.equalsIgnoreCase(Boolean.TRUE.toString());
    }

    private IncrementalProjectBuilder getBuilder(IBuildConfiguration buildConfiguration, ICommand command, int buildSpecIndex, MultiStatus status) throws CoreException {
        IncrementalProjectBuilder result = ((BuildCommand)command).getBuilder(buildConfiguration);
        if (result == null) {
            result = this.initializeBuilder(command.getBuilderName(), buildConfiguration, buildSpecIndex, status);
            ((BuildCommand)command).addBuilder(buildConfiguration, result);
            result.setCommand(command);
            result.setBuildConfig(buildConfiguration);
            ((InternalBuilder)result).startupOnInitialize();
        }
        result.setBuildConfig(buildConfiguration);
        if (!this.validateNature(result, command.getBuilderName())) {
            result.setLastBuiltTree(null);
            return null;
        }
        return result;
    }

    private IncrementalProjectBuilder getBuilder(IBuildConfiguration buildConfiguration, ICommand command, int buildSpecIndex, MultiStatus status, IBuildContext context) throws CoreException {
        IncrementalProjectBuilder builder = this.getBuilder(buildConfiguration, command, buildSpecIndex, status);
        if (builder != null) {
            builder.setContext(context);
        }
        return builder;
    }

    private BuilderPersistentInfo getBuilderInfo(ArrayList<BuilderPersistentInfo> infos, String builderName, String configName, int buildSpecIndex) {
        BuilderPersistentInfo nameMatch = null;
        for (BuilderPersistentInfo info : infos) {
            if (!info.getBuilderName().equals(builderName) || info.getConfigName() != null && !info.getConfigName().equals(configName)) continue;
            if (nameMatch == null) {
                nameMatch = info;
            }
            if (buildSpecIndex != -1 && info.getBuildSpecIndex() != -1 && buildSpecIndex != info.getBuildSpecIndex()) continue;
            return info;
        }
        return nameMatch;
    }

    public ArrayList<BuilderPersistentInfo> getBuildersPersistentInfo(IProject project) throws CoreException {
        return (ArrayList)project.getSessionProperty(K_BUILD_LIST);
    }

    private ICommand getCommand(IProject project, String builderName, Map<String, String> args) {
        ICommand[] buildSpec = ((Project)project).internalGetDescription().getBuildSpec(false);
        int i = 0;
        while (i < buildSpec.length) {
            if (buildSpec[i].getBuilderName().equals(builderName)) {
                return buildSpec[i];
            }
            ++i;
        }
        BuildCommand result = new BuildCommand();
        result.setBuilderName(builderName);
        result.setArguments(args);
        return result;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    IResourceDelta getDelta(IProject project) {
        try {
            this.lock.acquire();
            if (this.currentTree == null) {
                if (!Policy.DEBUG_BUILD_FAILURE) return null;
                Policy.debug("Build: no tree for delta " + this.debugBuilder() + " [" + this.debugProject() + "]");
                return null;
            }
            if (!this.isInterestingProject(project)) {
                if (!Policy.DEBUG_BUILD_FAILURE) return null;
                Policy.debug("Build: project not interesting for this builder " + this.debugBuilder() + " [" + this.debugProject() + "] " + project.getFullPath());
                return null;
            }
            if (this.currentDelta != null && this.currentDelta.findNodeAt(project.getFullPath()) == null) {
                if (!project.exists()) {
                    return null;
                }
                IResourceDelta iResourceDelta = ResourceDeltaFactory.newEmptyDelta(project);
                return iResourceDelta;
            }
            IResourceDelta result = (IResourceDelta)this.deltaCache.getDelta(project.getFullPath(), this.currentLastBuiltTree, this.currentTree);
            if (result != null) {
                IResourceDelta iResourceDelta = result;
                return iResourceDelta;
            }
            long startTime = 0L;
            if (Policy.DEBUG_BUILD_DELTA) {
                startTime = System.currentTimeMillis();
                Policy.debug("Computing delta for project: " + project.getName());
            }
            result = ResourceDeltaFactory.computeDelta(this.workspace, this.currentLastBuiltTree, this.currentTree, project.getFullPath(), -1L);
            this.deltaCache.cache(project.getFullPath(), this.currentLastBuiltTree, this.currentTree, result);
            if (Policy.DEBUG_BUILD_FAILURE && result == null) {
                Policy.debug("Build: no delta " + this.debugBuilder() + " [" + this.debugProject() + "] " + project.getFullPath());
            }
            if (Policy.DEBUG_BUILD_DELTA) {
                Policy.debug("Finished computing delta, time: " + (System.currentTimeMillis() - startTime) + "ms");
                Policy.debug(((ResourceDelta)result).toDebugString());
            }
            IResourceDelta iResourceDelta = result;
            return iResourceDelta;
        }
        finally {
            this.lock.release();
        }
    }

    private ISafeRunnable getSafeRunnable(final int trigger, final Map<String, String> args, final MultiStatus status, final IProgressMonitor monitor) {
        return new ISafeRunnable(){

            public void handleException(Throwable e) {
                if (e instanceof OperationCanceledException) {
                    if (Policy.DEBUG_BUILD_INVOKING) {
                        Policy.debug("Build canceled");
                    }
                    BuildManager.this.currentBuilder.forgetLastBuiltState();
                    throw (OperationCanceledException)e;
                }
                String builderName = BuildManager.this.currentBuilder.getLabel();
                if (builderName == null || builderName.length() == 0) {
                    builderName = BuildManager.this.currentBuilder.getClass().getName();
                }
                String pluginId = BuildManager.this.currentBuilder.getPluginId();
                String message = NLS.bind((String)Messages.events_builderError, (Object)builderName, (Object)BuildManager.this.currentBuilder.getProject().getName());
                status.add((IStatus)new Status(4, pluginId, 75, message, e));
                if (e instanceof CoreException) {
                    status.add(((CoreException)e).getStatus());
                }
            }

            public void run() throws Exception {
                IProject[] prereqs = null;
                if (trigger != 15) {
                    prereqs = BuildManager.this.currentBuilder.build(trigger, args, monitor);
                } else {
                    BuildManager.this.currentBuilder.clean(monitor);
                }
                if (prereqs == null) {
                    prereqs = new IProject[]{};
                }
                BuildManager.this.currentBuilder.setInterestingProjects((IProject[])prereqs.clone());
            }
        };
    }

    private WorkManager getWorkManager() {
        try {
            return this.workspace.getWorkManager();
        }
        catch (CoreException coreException) {
            return null;
        }
    }

    @Override
    public void handleEvent(LifecycleEvent event) {
        IProject project = null;
        switch (event.kind) {
            case 16: 
            case 64: {
                project = (IProject)event.resource;
                if (!project.isAccessible()) break;
                this.setBuildersPersistentInfo(project, null);
            }
        }
    }

    boolean hasBeenBuilt(IProject project) {
        return this.builtProjects.contains(project);
    }

    private void hookEndBuild(IncrementalProjectBuilder builder) {
        if (ResourceStats.TRACE_BUILDERS) {
            ResourceStats.endBuild();
        }
        if (!Policy.DEBUG_BUILD_INVOKING || this.timeStamp == -1L) {
            return;
        }
        Policy.debug("Builder finished: " + this.toString(builder) + " time: " + (System.currentTimeMillis() - this.timeStamp) + "ms");
        this.timeStamp = -1L;
    }

    private void hookEndBuild(int trigger) {
        this.building = false;
        this.builtProjects.clear();
        this.deltaCache.flush();
        this.deltaTreeCache.flush();
        if (trigger == 15) {
            this.autoBuildJob.forceBuild();
        }
        if (Policy.DEBUG_BUILD_INVOKING) {
            Policy.debug("Top-level build-end time: " + (System.currentTimeMillis() - this.overallTimeStamp));
            this.overallTimeStamp = -1L;
        }
    }

    private void hookStartBuild(IncrementalProjectBuilder builder, int trigger) {
        if (ResourceStats.TRACE_BUILDERS) {
            ResourceStats.startBuild(builder);
        }
        if (Policy.DEBUG_BUILD_INVOKING) {
            this.timeStamp = System.currentTimeMillis();
            Policy.debug("Invoking (" + this.debugTrigger(trigger) + ") on builder: " + this.toString(builder));
        }
    }

    private void hookStartBuild(IBuildConfiguration[] configs, int trigger) {
        this.building = true;
        if (Policy.DEBUG_BUILD_STACK) {
            Status info = new Status(1, "org.eclipse.core.resources", 1, "Starting build: " + this.debugTrigger(trigger), new RuntimeException().fillInStackTrace());
            Policy.log((IStatus)info);
        }
        if (Policy.DEBUG_BUILD_INVOKING) {
            this.overallTimeStamp = System.currentTimeMillis();
            StringBuffer sb = new StringBuffer("Top-level build-start of: ");
            int i = 0;
            while (i < configs.length) {
                sb.append(configs[i]).append(", ");
                ++i;
            }
            sb.append(this.debugTrigger(trigger));
            Policy.debug(sb.toString());
        }
    }

    private IncrementalProjectBuilder initializeBuilder(String builderName, IBuildConfiguration buildConfiguration, int buildSpecIndex, MultiStatus status) throws CoreException {
        ArrayList<BuilderPersistentInfo> infos;
        IProject project = buildConfiguration.getProject();
        IncrementalProjectBuilder builder = null;
        try {
            builder = this.instantiateBuilder(builderName);
        }
        catch (CoreException e) {
            status.add((IStatus)new ResourceStatus(75, project.getFullPath(), NLS.bind((String)Messages.events_instantiate_1, (Object)builderName), e));
            status.add(e.getStatus());
        }
        if (builder == null) {
            builder = new MissingBuilder(builderName);
        }
        if ((infos = this.getBuildersPersistentInfo(project)) != null) {
            BuilderPersistentInfo info = this.getBuilderInfo(infos, builderName, buildConfiguration.getName(), buildSpecIndex);
            if (info != null) {
                infos.remove(info);
                ElementTree tree = info.getLastBuiltTree();
                if (tree != null) {
                    builder.setLastBuiltTree(tree);
                }
                builder.setInterestingProjects(info.getInterestingProjects());
            }
            if (infos.size() == 0) {
                this.setBuildersPersistentInfo(project, null);
            }
        }
        return builder;
    }

    private IncrementalProjectBuilder instantiateBuilder(String builderName) throws CoreException {
        IExtension extension = Platform.getExtensionRegistry().getExtension("org.eclipse.core.resources", "builders", builderName);
        if (extension == null) {
            return null;
        }
        IConfigurationElement[] configs = extension.getConfigurationElements();
        if (configs.length == 0) {
            return null;
        }
        String natureId = null;
        if (this.getBooleanAttribute(configs[0], "hasNature")) {
            String builderId = extension.getUniqueIdentifier();
            natureId = this.workspace.getNatureManager().findNatureForBuilder(builderId);
            if (natureId == null) {
                return null;
            }
        }
        InternalBuilder builder = (InternalBuilder)configs[0].createExecutableExtension("run");
        builder.setPluginId(extension.getContributor().getName());
        builder.setLabel(extension.getLabel());
        builder.setNatureId(natureId);
        builder.setCallOnEmptyDelta(this.getBooleanAttribute(configs[0], "callOnEmptyDelta"));
        return (IncrementalProjectBuilder)builder;
    }

    public void interrupt() {
        this.autoBuildJob.interrupt();
    }

    public boolean isAutobuildBuildPending() {
        return this.autoBuildJob.getState() != 0;
    }

    private boolean isInterestingProject(IProject project) {
        if (project.equals(this.currentBuilder.getProject())) {
            return true;
        }
        IProject[] interestingProjects = this.currentBuilder.getInterestingProjects();
        int i = 0;
        while (i < interestingProjects.length) {
            if (interestingProjects[i].equals(project)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean needsBuild(InternalBuilder builder, int trigger) {
        switch (trigger) {
            case 15: {
                return true;
            }
            case 6: {
                return true;
            }
            case 10: {
                if (!this.currentBuilder.callOnEmptyDelta()) break;
                return true;
            }
        }
        ElementTree oldTree = builder.getLastBuiltTree();
        ElementTree newTree = this.workspace.getElementTree();
        long start = System.currentTimeMillis();
        this.currentDelta = (DeltaDataTree)this.deltaTreeCache.getDelta(null, oldTree, newTree);
        if (this.currentDelta == null) {
            if (Policy.DEBUG_BUILD_NEEDED) {
                String message = "Checking if need to build. Starting delta computation between: " + oldTree.toString() + " and " + newTree.toString();
                Policy.debug(message);
            }
            this.currentDelta = newTree.getDataTree().forwardDeltaWith(oldTree.getDataTree(), ResourceComparator.getBuildComparator());
            if (Policy.DEBUG_BUILD_NEEDED) {
                Policy.debug("End delta computation. (" + (System.currentTimeMillis() - start) + "ms).");
            }
            this.deltaTreeCache.cache(null, oldTree, newTree, this.currentDelta);
        }
        if (this.currentDelta.findNodeAt(builder.getProject().getFullPath()) != null) {
            if (Policy.DEBUG_BUILD_NEEDED) {
                Policy.debug(String.valueOf(this.toString(builder)) + " needs building because of changes in: " + builder.getProject().getName());
            }
            return true;
        }
        IProject[] projects = builder.getInterestingProjects();
        int i = 0;
        while (i < projects.length) {
            if (this.currentDelta.findNodeAt(projects[i].getFullPath()) != null) {
                if (Policy.DEBUG_BUILD_NEEDED) {
                    Policy.debug(String.valueOf(this.toString(builder)) + " needs building because of changes in: " + projects[i].getName());
                }
                return true;
            }
            ++i;
        }
        return false;
    }

    private void removeBuilders(IProject project, String builderId) throws CoreException {
        IProjectDescription desc = project.getDescription();
        ICommand[] oldSpec = desc.getBuildSpec();
        int oldLength = oldSpec.length;
        if (oldLength == 0) {
            return;
        }
        int remaining = 0;
        int i = 0;
        while (i < oldSpec.length) {
            if (oldSpec[i].getBuilderName().equals(builderId)) {
                oldSpec[i] = null;
            } else {
                ++remaining;
            }
            ++i;
        }
        if (remaining == oldSpec.length) {
            return;
        }
        ICommand[] newSpec = new ICommand[remaining];
        int i2 = 0;
        int newIndex = 0;
        while (i2 < oldLength) {
            if (oldSpec[i2] != null) {
                newSpec[newIndex++] = oldSpec[i2];
            }
            ++i2;
        }
        desc.setBuildSpec(newSpec);
        project.setDescription(desc, 0, null);
    }

    void requestRebuild() {
        this.rebuildRequested = true;
    }

    public void setBuildersPersistentInfo(IProject project, List<BuilderPersistentInfo> list) {
        try {
            project.setSessionProperty(K_BUILD_LIST, list);
        }
        catch (CoreException coreException) {
            Policy.log(new ResourceStatus(4, 1, project.getFullPath(), "Project missing in setBuildersPersistentInfo", null));
        }
    }

    @Override
    public void shutdown(IProgressMonitor monitor) {
        this.autoBuildJob.cancel();
    }

    @Override
    public void startup(IProgressMonitor monitor) {
        this.workspace.addLifecycleListener(this);
    }

    private String toString(InternalBuilder builder) {
        String name = builder.getClass().getName();
        name = name.substring(name.lastIndexOf(46) + 1);
        return String.valueOf(name) + "(" + builder.getBuildConfig() + ")";
    }

    private boolean validateNature(InternalBuilder builder, String builderId) throws CoreException {
        String nature = builder.getNatureId();
        if (nature == null) {
            return true;
        }
        IProject project = builder.getProject();
        if (!project.hasNature(nature)) {
            this.removeBuilders(project, builderId);
            return false;
        }
        return project.isNatureEnabled(nature);
    }

    public ISchedulingRule getRule(IBuildConfiguration buildConfiguration, int trigger, String builderName, Map<String, String> args) {
        IProject project = buildConfiguration.getProject();
        MultiStatus status = new MultiStatus("org.eclipse.core.resources", 566, Messages.events_errors, null);
        if (builderName == null) {
            if (project.isAccessible()) {
                HashSet<ISchedulingRule> rules = new HashSet<ISchedulingRule>();
                ICommand[] commands = ((Project)project).internalGetDescription().getBuildSpec(false);
                boolean hasNullBuildRule = false;
                BuildContext context = new BuildContext(buildConfiguration);
                int i = 0;
                while (i < commands.length) {
                    BuildCommand command = (BuildCommand)commands[i];
                    try {
                        IncrementalProjectBuilder builder = this.getBuilder(buildConfiguration, command, i, status, context);
                        if (builder != null) {
                            ISchedulingRule builderRule = builder.getRule(trigger, args);
                            if (builderRule != null) {
                                rules.add(builderRule);
                            } else {
                                hasNullBuildRule = true;
                            }
                        }
                    }
                    catch (CoreException e) {
                        status.add(e.getStatus());
                    }
                    ++i;
                }
                if (rules.isEmpty()) {
                    return null;
                }
                if (!hasNullBuildRule) {
                    return new MultiRule(rules.toArray(new ISchedulingRule[rules.size()]));
                }
            }
        } else {
            ICommand command = this.getCommand(project, builderName, args);
            try {
                IncrementalProjectBuilder builder = this.getBuilder(buildConfiguration, command, -1, status);
                if (builder != null) {
                    return builder.getRule(trigger, args);
                }
            }
            catch (CoreException e) {
                status.add(e.getStatus());
            }
        }
        if (!status.isOK()) {
            Policy.log((IStatus)status);
        }
        return this.workspace.getRoot();
    }

    class DeltaCache {
        private Object delta;
        private ElementTree newTree;
        private ElementTree oldTree;
        private IPath projectPath;

        DeltaCache() {
        }

        public void cache(IPath project, ElementTree anOldTree, ElementTree aNewTree, Object aDelta) {
            this.projectPath = project;
            this.oldTree = anOldTree;
            this.newTree = aNewTree;
            this.delta = aDelta;
        }

        public void flush() {
            this.projectPath = null;
            this.oldTree = null;
            this.newTree = null;
            this.delta = null;
        }

        public Object getDelta(IPath project, ElementTree anOldTree, ElementTree aNewTree) {
            boolean pathsEqual;
            if (this.delta == null) {
                return null;
            }
            boolean bl = this.projectPath == null ? project == null : (pathsEqual = this.projectPath.equals((Object)project));
            if (pathsEqual && this.oldTree == anOldTree && this.newTree == aNewTree) {
                return this.delta;
            }
            return null;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class MissingBuilder
    extends IncrementalProjectBuilder {
        private boolean hasBeenBuilt = false;
        private String name;

        MissingBuilder(String name) {
            this.name = name;
        }

        @Override
        protected IProject[] build(int kind, Map<String, String> args, IProgressMonitor monitor) {
            if (!this.hasBeenBuilt && Policy.DEBUG_BUILD_FAILURE) {
                this.hasBeenBuilt = true;
                String msg = NLS.bind((String)Messages.events_skippingBuilder, (Object)this.name, (Object)this.getProject().getName());
                Policy.log(2, msg, null);
            }
            return null;
        }
    }
}

