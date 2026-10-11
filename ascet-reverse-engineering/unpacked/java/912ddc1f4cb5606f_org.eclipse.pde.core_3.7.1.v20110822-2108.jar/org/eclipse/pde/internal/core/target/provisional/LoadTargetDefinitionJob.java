/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.WorkspaceJob
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.variables.IStringVariableManager
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.jdt.launching.IVMInstall
 *  org.eclipse.jdt.launching.JavaRuntime
 */
package org.eclipse.pde.internal.core.target.provisional;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEPreferencesManager;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.TargetPlatformResetJob;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.target.AbstractBundleContainer;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.P2TargetUtils;
import org.eclipse.pde.internal.core.target.ProfileBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;

public class LoadTargetDefinitionJob
extends WorkspaceJob {
    private static final String JOB_FAMILY_ID = "LoadTargetDefinitionJob";
    private ITargetDefinition fTarget;
    private boolean fNone = false;
    static /* synthetic */ Class class$0;

    public static void load(ITargetDefinition target) {
        LoadTargetDefinitionJob.load(target, null);
    }

    public static void load(ITargetDefinition target, IJobChangeListener listener) {
        Job.getJobManager().cancel((Object)JOB_FAMILY_ID);
        LoadTargetDefinitionJob job = new LoadTargetDefinitionJob(target);
        job.setUser(true);
        if (listener != null) {
            job.addJobChangeListener(listener);
        }
        job.schedule();
    }

    public LoadTargetDefinitionJob(ITargetDefinition target) {
        super(Messages.LoadTargetDefinitionJob_0);
        this.fTarget = target;
        if (target == null) {
            this.fNone = true;
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
            ITargetPlatformService service = (ITargetPlatformService)pDECore.acquireService(clazz.getName());
            this.fTarget = service.newTarget();
        }
    }

    public boolean belongsTo(Object family) {
        return JOB_FAMILY_ID.equals(family);
    }

    public IStatus runInWorkspace(IProgressMonitor monitor) throws CoreException {
        try {
            PDEPreferencesManager preferences = PDECore.getDefault().getPreferencesManager();
            monitor.beginTask(Messages.LoadTargetOperation_mainTaskName, 100);
            this.loadEnvironment(preferences, (IProgressMonitor)new SubProgressMonitor(monitor, 5));
            if (monitor.isCanceled()) {
                IStatus iStatus = Status.CANCEL_STATUS;
                return iStatus;
            }
            this.loadArgs(preferences, (IProgressMonitor)new SubProgressMonitor(monitor, 5));
            if (monitor.isCanceled()) {
                IStatus iStatus = Status.CANCEL_STATUS;
                return iStatus;
            }
            this.loadJRE(preferences, (IProgressMonitor)new SubProgressMonitor(monitor, 15));
            if (monitor.isCanceled()) {
                IStatus iStatus = Status.CANCEL_STATUS;
                return iStatus;
            }
            this.loadImplicitPlugins(preferences, (IProgressMonitor)new SubProgressMonitor(monitor, 15));
            if (monitor.isCanceled()) {
                IStatus iStatus = Status.CANCEL_STATUS;
                return iStatus;
            }
            this.loadPlugins(preferences, (IProgressMonitor)new SubProgressMonitor(monitor, 60));
            if (monitor.isCanceled()) {
                IStatus iStatus = Status.CANCEL_STATUS;
                return iStatus;
            }
            this.loadAdditionalPreferences(preferences);
            if (monitor.isCanceled()) {
                IStatus iStatus = Status.CANCEL_STATUS;
                return iStatus;
            }
            PDECore.getDefault().getPreferencesManager().savePluginPreferences();
            if (monitor.isCanceled()) {
                IStatus iStatus = Status.CANCEL_STATUS;
                return iStatus;
            }
        }
        finally {
            monitor.done();
        }
        return Status.OK_STATUS;
    }

    private void loadArgs(PDEPreferencesManager pref, IProgressMonitor monitor) {
        monitor.beginTask(Messages.LoadTargetOperation_argsTaskName, 2);
        String args = this.fTarget.getProgramArguments();
        pref.setValue("program_args", args != null ? args : "");
        monitor.worked(1);
        args = this.fTarget.getVMArguments();
        pref.setValue("vm_args", args != null ? args : "");
        monitor.done();
    }

    private void loadEnvironment(PDEPreferencesManager pref, IProgressMonitor monitor) {
        monitor.beginTask(Messages.LoadTargetOperation_envTaskName, 1);
        this.setEnvironmentPref(pref, "org.eclipse.pde.ui.arch", this.fTarget.getArch());
        this.setEnvironmentPref(pref, "org.eclipse.pde.ui.nl", this.fTarget.getNL());
        this.setEnvironmentPref(pref, "org.eclipse.pde.ui.os", this.fTarget.getOS());
        this.setEnvironmentPref(pref, "org.eclipse.pde.ui.ws", this.fTarget.getWS());
        monitor.done();
    }

    private void setEnvironmentPref(PDEPreferencesManager pref, String key, String value) {
        if (value == null) {
            pref.setToDefault(key);
        } else {
            pref.setValue(key, value);
        }
    }

    private void loadJRE(PDEPreferencesManager pref, IProgressMonitor monitor) {
        IVMInstall def;
        IVMInstall jre;
        IPath container = this.fTarget.getJREContainer();
        monitor.beginTask(Messages.LoadTargetOperation_jreTaskName, 1);
        if (container != null && (jre = JavaRuntime.getVMInstall((IPath)container)) != null && !jre.equals(def = JavaRuntime.getDefaultVMInstall())) {
            try {
                JavaRuntime.setDefaultVMInstall((IVMInstall)jre, null);
            }
            catch (CoreException coreException) {}
        }
        monitor.done();
    }

    private void loadImplicitPlugins(PDEPreferencesManager pref, IProgressMonitor monitor) {
        NameVersionDescriptor[] infos = this.fTarget.getImplicitDependencies();
        if (infos != null) {
            monitor.beginTask(Messages.LoadTargetOperation_implicitPluginsTaskName, infos.length + 1);
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i < infos.length) {
                buffer.append(infos[i].getId()).append(',');
                monitor.worked(1);
                ++i;
            }
            if (infos.length > 0) {
                buffer.setLength(buffer.length() - 1);
            }
            pref.setValue("implicit_dependencies", buffer.toString());
        }
        monitor.done();
    }

    private void loadPlugins(PDEPreferencesManager pref, IProgressMonitor monitor) throws CoreException {
        monitor.beginTask(Messages.LoadTargetOperation_loadPluginsTaskName, 100);
        String currentPath = pref.getString("platform_path");
        IBundleContainer[] containers = this.fTarget.getBundleContainers();
        String path = null;
        if (containers != null && containers.length > 0) {
            path = ((AbstractBundleContainer)containers[0]).getLocation(true);
        }
        if (path == null) {
            path = TargetPlatform.getDefaultLocation();
        } else {
            try {
                IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
                path = manager.performStringSubstitution(path);
            }
            catch (CoreException coreException) {
                return;
            }
        }
        monitor.worked(10);
        List additional = this.getAdditionalLocs();
        pref.setValue("platform_path", path);
        String mode = new Path(path).equals((Object)new Path(TargetPlatform.getDefaultLocation())) ? "useThis" : "useOther";
        pref.setValue("target_mode", mode);
        ListIterator li = additional.listIterator();
        StringBuffer buffer = new StringBuffer();
        while (li.hasNext()) {
            buffer.append(li.next()).append(",");
        }
        if (buffer.length() > 0) {
            buffer.setLength(buffer.length() - 1);
        }
        pref.setValue("additional_locations", buffer.toString());
        String newValue = currentPath;
        int i = 0;
        while (i < 4) {
            String value = pref.getString("saved_platform" + i);
            pref.setValue("saved_platform" + i, newValue);
            if (value.equals(currentPath)) break;
            newValue = value;
            ++i;
        }
        this.handleReload(path, additional, pref, (IProgressMonitor)new SubProgressMonitor(monitor, 85));
        monitor.done();
    }

    private void loadAdditionalPreferences(PDEPreferencesManager pref) throws CoreException {
        pref.setValue("target.profile", "");
        String memento = this.fTarget.getHandle().getMemento();
        if (this.fNone) {
            memento = "NO_TARGET";
        }
        pref.setValue("workspace_target_handle", memento);
        IBundleContainer[] containers = this.fTarget.getBundleContainers();
        boolean profile = false;
        if (containers != null && containers.length > 0) {
            profile = containers[0] instanceof ProfileBundleContainer;
        }
        pref.setValue("target_platform_realization", profile);
    }

    private List getAdditionalLocs() throws CoreException {
        ArrayList<String> additional = new ArrayList<String>();
        IBundleContainer[] containers = this.fTarget.getBundleContainers();
        if (containers != null && containers.length > 1) {
            int i = 1;
            while (i < containers.length) {
                additional.add(((AbstractBundleContainer)containers[i]).getLocation(true));
                ++i;
            }
        }
        return additional;
    }

    private void handleReload(String targetLocation, List additionalLocations, PDEPreferencesManager pref, IProgressMonitor monitor) throws CoreException {
        SubMonitor subMon = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.LoadTargetOperation_reloadTaskName, (int)100);
        try {
            int i;
            IFeatureModel[] allFeatures;
            IResolvedBundle[] allBundles;
            HashSet<BundleInfo> included = new HashSet<BundleInfo>();
            HashSet<NameVersionDescriptor> duplicates = new HashSet<NameVersionDescriptor>();
            ArrayList<BundleInfo> infos = new ArrayList<BundleInfo>();
            HashSet<String> includedIds = new HashSet<String>();
            if (!this.fTarget.isResolved()) {
                this.fTarget.resolve((IProgressMonitor)subMon.newChild(20));
            } else {
                subMon.worked(20);
            }
            if (subMon.isCanceled()) {
                return;
            }
            IResolvedBundle[] includedBundles = this.fTarget.getBundles();
            if (includedBundles == null) {
                includedBundles = new IResolvedBundle[]{};
            }
            if ((allBundles = this.fTarget.getAllBundles()) == null) {
                allBundles = new IResolvedBundle[]{};
            }
            if ((allFeatures = this.fTarget.getAllFeatures()) == null) {
                allFeatures = new IFeatureModel[]{};
            }
            ArrayList<File> pooled = new ArrayList<File>();
            boolean considerPool = false;
            int i2 = 0;
            while (i2 < includedBundles.length) {
                if (includedBundles[i2].getStatus().isOK()) {
                    BundleInfo bundleInfo = includedBundles[i2].getBundleInfo();
                    NameVersionDescriptor desc = new NameVersionDescriptor(bundleInfo.getSymbolicName(), bundleInfo.getVersion());
                    File file = new File(bundleInfo.getLocation());
                    boolean inPool = P2TargetUtils.BUNDLE_POOL.isPrefixOf((IPath)new Path(file.getAbsolutePath()));
                    boolean bl = considerPool = considerPool || inPool;
                    if (!duplicates.contains(desc)) {
                        if (inPool) {
                            pooled.add(file);
                        }
                        infos.add(bundleInfo);
                        included.add(bundleInfo);
                        includedIds.add(bundleInfo.getSymbolicName());
                        duplicates.add(desc);
                    }
                }
                ++i2;
            }
            ArrayList<BundleInfo> missing = new ArrayList<BundleInfo>();
            NameVersionDescriptor[] restrictions = this.fTarget.getIncluded();
            if (restrictions != null) {
                int j = 0;
                while (j < allBundles.length) {
                    IResolvedBundle bi = allBundles[j];
                    if (!included.contains(bi.getBundleInfo())) {
                        missing.add(bi.getBundleInfo());
                    }
                    ++j;
                }
            }
            ArrayList<URL> paths = new ArrayList<URL>(infos.size() + missing.size());
            Iterator iterator = infos.iterator();
            while (iterator.hasNext()) {
                BundleInfo info = (BundleInfo)iterator.next();
                try {
                    paths.add(new File(info.getLocation()).toURL());
                }
                catch (MalformedURLException e) {
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.LoadTargetDefinitionJob_1, (Throwable)e));
                }
            }
            StringBuffer checked = new StringBuffer();
            StringBuffer versions = new StringBuffer();
            int count = 0;
            iterator = missing.iterator();
            HashSet<NameVersionDescriptor> missingDescriptions = new HashSet<NameVersionDescriptor>(missing.size());
            while (iterator.hasNext()) {
                BundleInfo bi = (BundleInfo)iterator.next();
                NameVersionDescriptor desc = new NameVersionDescriptor(bi.getSymbolicName(), bi.getVersion());
                missingDescriptions.add(desc);
                try {
                    paths.add(new File(bi.getLocation()).toURL());
                }
                catch (MalformedURLException e) {
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.LoadTargetDefinitionJob_1, (Throwable)e));
                }
                if (count > 0) {
                    checked.append(" ");
                }
                checked.append(bi.getSymbolicName());
                ++count;
                if (!includedIds.contains(bi.getSymbolicName())) continue;
                if (versions.length() > 0) {
                    versions.append(" ");
                }
                versions.append(desc.toPortableString());
            }
            URL[] urls = paths.toArray(new URL[paths.size()]);
            PDEState state = new PDEState(urls, true, (IProgressMonitor)new SubProgressMonitor(monitor, 45));
            IPluginModelBase[] models = state.getTargetModels();
            int i3 = 0;
            while (i3 < models.length) {
                NameVersionDescriptor nv = new NameVersionDescriptor(models[i3].getPluginBase().getId(), models[i3].getPluginBase().getVersion());
                models[i3].setEnabled(!missingDescriptions.contains(nv));
                ++i3;
            }
            if (subMon.isCanceled()) {
                return;
            }
            if (urls.length == 0) {
                pref.setValue("checkedPlugins", "[savedNone]");
            } else if (missing.size() == 0) {
                pref.setValue("checkedPlugins", "[savedAll]");
            } else {
                pref.setValue("checkedPlugins", checked.toString());
            }
            if (versions.length() > 0) {
                pref.setValue("checkedVersionPlugins", versions.toString());
            } else {
                pref.setValue("checkedVersionPlugins", "[savedNone]");
            }
            if (pooled.isEmpty()) {
                if (considerPool) {
                    pref.setValue("pooled_urls", "[savedNone]");
                } else {
                    pref.setValue("pooled_urls", "");
                }
            } else {
                StringBuffer buf = new StringBuffer();
                Iterator iterator2 = pooled.iterator();
                while (iterator2.hasNext()) {
                    File bundle = (File)iterator2.next();
                    buf.append(bundle.getName());
                    if (!iterator2.hasNext()) continue;
                    buf.append(',');
                }
                pref.setValue("pooled_urls", buf.toString());
                pref.setValue("pooled_bundles", "");
            }
            StringBuffer featureList = new StringBuffer();
            NameVersionDescriptor[] includes = this.fTarget.getIncluded();
            boolean featuresFound = false;
            if (includes != null) {
                i = 0;
                while (i < includes.length) {
                    if (includes[i].getType() == "feature") {
                        featuresFound = true;
                        IFeatureModel bestMatch = null;
                        int j = 0;
                        while (j < allFeatures.length) {
                            if (allFeatures[j].getFeature().getId().equals(includes[i].getId())) {
                                Version v2;
                                Version v1;
                                if (includes[i].getVersion() != null) {
                                    if (includes[i].getVersion().equals(allFeatures[j].getFeature().getVersion())) {
                                        bestMatch = allFeatures[j];
                                        break;
                                    }
                                } else if (bestMatch != null && (v1 = Version.parseVersion((String)allFeatures[j].getFeature().getVersion())).compareTo((Object)(v2 = Version.parseVersion((String)bestMatch.getFeature().getVersion()))) > 0) {
                                    bestMatch = allFeatures[j];
                                }
                                if (bestMatch == null) {
                                    bestMatch = allFeatures[j];
                                }
                            }
                            ++j;
                        }
                        if (bestMatch != null) {
                            if (featureList.length() > 0) {
                                featureList.append(',');
                            }
                            featureList.append(bestMatch.getFeature().getId());
                            featureList.append('@');
                            featureList.append(bestMatch.getFeature().getVersion());
                        }
                    }
                    ++i;
                }
            }
            if (includes == null || !featuresFound) {
                i = 0;
                while (i < allFeatures.length) {
                    featureList.append(allFeatures[i].getFeature().getId());
                    featureList.append('@');
                    featureList.append(allFeatures[i].getFeature().getVersion());
                    if (i < allFeatures.length - 1) {
                        featureList.append(',');
                    }
                    ++i;
                }
            }
            pref.setValue("external_features", featureList.toString());
            TargetPlatformResetJob job = new TargetPlatformResetJob(state);
            job.schedule();
            try {
                job.join();
            }
            catch (InterruptedException interruptedException) {}
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
            subMon.done();
        }
    }
}

