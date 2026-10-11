/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.pluginconversion.PluginConversionException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.State
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Dictionary;
import java.util.HashMap;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.MinimalState;
import org.eclipse.pde.internal.core.PDEAuxiliaryState;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.bundle.BundleFragmentModel;
import org.eclipse.pde.internal.core.bundle.BundlePluginModel;
import org.eclipse.pde.internal.core.bundle.BundlePluginModelBase;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundleModel;
import org.eclipse.pde.internal.core.plugin.ExternalFragmentModel;
import org.eclipse.pde.internal.core.plugin.ExternalPluginModel;
import org.eclipse.pde.internal.core.plugin.ExternalPluginModelBase;
import org.eclipse.pde.internal.core.plugin.WorkspaceExtensionsModel;
import org.eclipse.pde.internal.core.plugin.WorkspaceFragmentModel;
import org.eclipse.pde.internal.core.plugin.WorkspacePluginModel;
import org.eclipse.pde.internal.core.plugin.WorkspacePluginModelBase;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.util.CoreUtility;

public class PDEState
extends MinimalState {
    private PDEAuxiliaryState fAuxiliaryState;
    private ArrayList fTargetModels = new ArrayList();
    private ArrayList fWorkspaceModels = new ArrayList();
    private boolean fCombined;
    private long fTargetTimestamp;
    private boolean fNewState;

    public PDEState(PDEState state) {
        super(state);
        this.fCombined = false;
        this.fTargetTimestamp = state.fTargetTimestamp;
        this.copyAuxiliaryState();
        this.copyModels(state);
    }

    private void copyAuxiliaryState() {
        this.fAuxiliaryState = new PDEAuxiliaryState();
        this.fAuxiliaryState.readPluginInfoCache(new File(DIR, String.valueOf(Long.toString(this.fTargetTimestamp)) + ".target"));
    }

    private void copyModels(PDEState state) {
        IPluginModelBase[] bases = state.getTargetModels();
        this.fTargetModels = new ArrayList(bases.length);
        int i = 0;
        while (i < bases.length) {
            BundleDescription oldBD = bases[i].getBundleDescription();
            if (oldBD != null) {
                BundleDescription newBD = this.getState().getBundle(oldBD.getBundleId());
                if (newBD == null) {
                    newBD = Platform.getPlatformAdmin().getFactory().createBundleDescription(oldBD);
                    this.getState().addBundle(newBD);
                }
                IPluginModelBase model = this.createExternalModel(newBD);
                model.setEnabled(bases[i].isEnabled());
                this.fTargetModels.add(model);
            }
            ++i;
        }
        bases = PluginRegistry.getWorkspaceModels();
        i = 0;
        while (i < bases.length) {
            this.removeBundleDescription(bases[i].getBundleDescription());
            ++i;
        }
    }

    public PDEState(URL[] urls, boolean resolve, IProgressMonitor monitor) {
        this(new URL[0], urls, resolve, false, monitor);
    }

    public PDEState(URL[] workspace, URL[] target, boolean resolve, boolean removeTargetDuplicates, IProgressMonitor monitor) {
        long start = System.currentTimeMillis();
        this.fAuxiliaryState = new PDEAuxiliaryState();
        if (resolve) {
            this.readTargetState(target, monitor);
        } else {
            this.createNewTargetState(resolve, target, monitor);
        }
        if (removeTargetDuplicates) {
            this.removeDuplicatesFromState(this.fState);
        }
        this.createTargetModels(this.fState.getBundles());
        if (resolve && workspace.length > 0 && !this.fNewState && !"true".equals(System.getProperty("pde.nocache"))) {
            this.readWorkspaceState(workspace);
        }
        if (DEBUG) {
            System.out.println("Time to create state: " + (System.currentTimeMillis() - start) + " ms");
        }
    }

    private void readTargetState(URL[] urls, IProgressMonitor monitor) {
        File dir;
        this.fTargetTimestamp = this.computeTimestamp(urls);
        if (DEBUG) {
            System.out.println("Timestamp of " + urls.length + " target URLS: " + this.fTargetTimestamp);
        }
        if ((this.fState = this.readStateCache(dir = new File(DIR, String.valueOf(Long.toString(this.fTargetTimestamp)) + ".target"))) == null || !this.fAuxiliaryState.readPluginInfoCache(dir)) {
            if (DEBUG) {
                System.out.println("Creating new state, persisted state did not exist");
            }
            this.createNewTargetState(true, urls, monitor);
            this.resolveState(false);
        } else {
            String systemBundle;
            if (DEBUG) {
                System.out.println("Restored previously persisted state");
            }
            if (this.fState.getPlatformProperties() != null && this.fState.getPlatformProperties().length > 0 && (systemBundle = (String)this.fState.getPlatformProperties()[0].get("osgi.system.bundle")) != null) {
                this.fSystemBundle = systemBundle;
            }
            boolean propertiesChanged = this.initializePlatformProperties();
            this.fState.setResolver(Platform.getPlatformAdmin().createResolver());
            if (propertiesChanged) {
                this.fState.resolve(false);
            }
            this.fId = this.fState.getHighestBundleId();
        }
    }

    /*
     * Loose catch block
     */
    private void createNewTargetState(boolean resolve, URL[] urls, IProgressMonitor monitor) {
        this.fState = stateObjectFactory.createState(resolve);
        monitor.beginTask("", urls.length);
        int i = 0;
        while (i < urls.length) {
            block12: {
                File file;
                block11: {
                    file = new File(urls[i].getFile());
                    if (!monitor.isCanceled()) break block11;
                    monitor.worked(1);
                    return;
                }
                try {
                    monitor.subTask(file.getName());
                    this.addBundle(file, -1L);
                }
                catch (PluginConversionException pluginConversionException) {
                    monitor.worked(1);
                    break block12;
                }
                catch (CoreException coreException) {
                    break block12;
                }
                catch (IOException iOException) {
                    PDECore.log((IStatus)new Status(4, "org.eclipse.pde.core", 4, "Invalid manifest format at " + file.getAbsolutePath(), null));
                    {
                        catch (Throwable throwable) {
                            throw throwable;
                        }
                    }
                    monitor.worked(1);
                    break block12;
                }
                {
                    finally {
                        monitor.worked(1);
                    }
                }
                monitor.worked(1);
            }
            ++i;
        }
        this.fNewState = true;
    }

    protected void addAuxiliaryData(BundleDescription desc, Dictionary manifest, boolean hasBundleStructure) {
        this.fAuxiliaryState.addAuxiliaryData(desc, manifest, hasBundleStructure);
    }

    private void removeDuplicatesFromState(State state) {
        BundleDescription[] bundles = state.getBundles();
        int i = 0;
        while (i < bundles.length) {
            BundleDescription desc = bundles[i];
            String id = desc.getSymbolicName();
            BundleDescription[] conflicts = state.getBundles(id);
            if (conflicts.length > 1) {
                int j = 0;
                while (j < conflicts.length) {
                    if (desc.getVersion().equals((Object)conflicts[j].getVersion()) && desc.getBundleId() != conflicts[j].getBundleId()) {
                        this.fState.removeBundle(desc);
                    }
                    ++j;
                }
            }
            ++i;
        }
    }

    private IPluginModelBase[] createTargetModels(BundleDescription[] bundleDescriptions) {
        HashMap<String, IPluginModelBase> models = new HashMap<String, IPluginModelBase>(1 * bundleDescriptions.length + 1);
        int i = 0;
        while (i < bundleDescriptions.length) {
            BundleDescription desc = bundleDescriptions[i];
            IPluginModelBase base = this.createExternalModel(desc);
            this.fTargetModels.add(base);
            models.put(desc.getSymbolicName(), base);
            ++i;
        }
        if (models.isEmpty()) {
            return new IPluginModelBase[0];
        }
        return models.values().toArray(new IPluginModelBase[models.size()]);
    }

    private void readWorkspaceState(URL[] urls) {
        long workspace = this.computeTimestamp(urls);
        File dir = new File(DIR, String.valueOf(Long.toString(workspace)) + ".workspace");
        State localState = this.readStateCache(dir);
        boolean bl = this.fCombined = localState != null && this.fAuxiliaryState.readPluginInfoCache(dir);
        if (this.fCombined) {
            long targetCount = this.fId;
            BundleDescription[] bundles = localState.getBundles();
            int i = 0;
            while (i < bundles.length) {
                BundleDescription desc = bundles[i];
                String id = desc.getSymbolicName();
                BundleDescription[] conflicts = this.fState.getBundles(id);
                int j = 0;
                while (j < conflicts.length) {
                    if (conflicts[j].getBundleId() <= targetCount) {
                        this.fState.removeBundle(conflicts[j]);
                    }
                    ++j;
                }
                BundleDescription newbundle = stateObjectFactory.createBundleDescription(desc);
                IPluginModelBase model = this.createWorkspaceModel(newbundle);
                if (model != null && this.fState.addBundle(newbundle)) {
                    this.fId = Math.max(this.fId, newbundle.getBundleId());
                    this.fWorkspaceModels.add(model);
                }
                ++i;
            }
            this.fId = Math.max(this.fId, (long)this.fState.getBundles().length);
            this.fState.resolve(false);
        }
    }

    public boolean isCombined() {
        return this.fCombined;
    }

    private State readStateCache(File dir) {
        if (dir.exists() && dir.isDirectory()) {
            try {
                return stateObjectFactory.readState(dir);
            }
            catch (IllegalStateException e) {
                PDECore.log(e);
            }
            catch (FileNotFoundException e) {
                PDECore.log(e);
            }
            catch (IOException e) {
                PDECore.log(e);
            }
        }
        return null;
    }

    private long computeTimestamp(URL[] urls) {
        return this.computeTimestamp(urls, 0L);
    }

    private long computeTimestamp(URL[] urls, long timestamp) {
        ArrayList<URL> sorted = new ArrayList<URL>(urls.length);
        int i = 0;
        while (i < urls.length) {
            sorted.add(urls[i]);
            ++i;
        }
        Collections.sort(sorted, new Comparator(){

            public int compare(Object o1, Object o2) {
                return ((URL)o1).toExternalForm().compareTo(((URL)o2).toExternalForm());
            }
        });
        URL[] sortedURLs = sorted.toArray(new URL[sorted.size()]);
        int i2 = 0;
        while (i2 < sortedURLs.length) {
            File file = new File(sortedURLs[i2].getFile());
            if (file.exists()) {
                if (file.isFile()) {
                    timestamp ^= file.lastModified();
                } else {
                    File manifest = new File(file, "META-INF/MANIFEST.MF");
                    if (manifest.exists()) {
                        timestamp ^= manifest.lastModified();
                    }
                    if ((manifest = new File(file, "plugin.xml")).exists()) {
                        timestamp ^= manifest.lastModified();
                    }
                    if ((manifest = new File(file, "fragment.xml")).exists()) {
                        timestamp ^= manifest.lastModified();
                    }
                }
                timestamp ^= (long)file.getAbsolutePath().toLowerCase().hashCode();
            }
            ++i2;
        }
        return timestamp;
    }

    private IPluginModelBase createWorkspaceModel(BundleDescription desc) {
        String projectName = this.fAuxiliaryState.getProject(desc.getBundleId());
        if (projectName == null) {
            return null;
        }
        IProject project = PDECore.getWorkspace().getRoot().getProject(projectName);
        if (!project.exists()) {
            return null;
        }
        IFile manifest = PDEProject.getManifest(project);
        IFile pluginXml = PDEProject.getPluginXml(project);
        IFile fragmentXml = PDEProject.getFragmentXml(project);
        if (manifest.exists()) {
            IFile file;
            BundlePluginModelBase model = null;
            model = desc.getHost() == null ? new BundlePluginModel() : new BundleFragmentModel();
            model.setEnabled(true);
            WorkspaceBundleModel bundle = new WorkspaceBundleModel(manifest);
            bundle.load(desc, this);
            model.setBundleDescription(desc);
            model.setBundleModel(bundle);
            bundle.setEditable(false);
            IFile iFile = file = desc.getHost() == null ? pluginXml : fragmentXml;
            if (file.exists()) {
                WorkspaceExtensionsModel extensions = new WorkspaceExtensionsModel(file);
                extensions.setEditable(false);
                extensions.setBundleModel(model);
                extensions.load(desc, this);
                model.setExtensionsModel(extensions);
            }
            return model;
        }
        WorkspacePluginModelBase model = null;
        model = desc.getHost() == null ? new WorkspacePluginModel(pluginXml, true) : new WorkspaceFragmentModel(fragmentXml, true);
        model.load(desc, this);
        model.setBundleDescription(desc);
        return model;
    }

    private IPluginModelBase createExternalModel(BundleDescription desc) {
        ExternalPluginModelBase model = null;
        model = desc.getHost() == null ? new ExternalPluginModel() : new ExternalFragmentModel();
        model.load(desc, this);
        model.setBundleDescription(desc);
        return model;
    }

    public IPluginModelBase[] getTargetModels() {
        return this.fTargetModels.toArray(new IPluginModelBase[this.fTargetModels.size()]);
    }

    public IPluginModelBase[] getWorkspaceModels() {
        return this.fWorkspaceModels.toArray(new IPluginModelBase[this.fWorkspaceModels.size()]);
    }

    public void saveExternalState() {
        IPluginModelBase[] models = PluginRegistry.getExternalModels();
        URL[] urls = new URL[models.length];
        int i = 0;
        while (i < urls.length) {
            try {
                urls[i] = new File(models[i].getInstallLocation()).toURL();
            }
            catch (MalformedURLException malformedURLException) {
                if (DEBUG) {
                    System.out.println("FAILED to save external state due to MalformedURLException");
                }
                return;
            }
            ++i;
        }
        this.fTargetTimestamp = this.computeTimestamp(urls);
        File dir = new File(DIR, String.valueOf(Long.toString(this.fTargetTimestamp)) + ".target");
        boolean osgiStateExists = dir.exists() && dir.isDirectory();
        boolean auxStateExists = this.fAuxiliaryState.exists(dir);
        if (!osgiStateExists || !auxStateExists) {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            if (DEBUG) {
                System.out.println("Saving external state of " + urls.length + " bundles to: " + dir.getAbsolutePath());
            }
            State state = stateObjectFactory.createState(false);
            int i2 = 0;
            while (i2 < models.length) {
                BundleDescription desc = models[i2].getBundleDescription();
                if (desc != null) {
                    state.addBundle(state.getFactory().createBundleDescription(desc));
                }
                ++i2;
            }
            this.fAuxiliaryState.savePluginInfo(dir);
            this.saveState(state, dir);
        } else if (DEBUG) {
            System.out.println("External state unchanged, save skipped.");
        }
    }

    public void saveWorkspaceState() {
        IPluginModelBase[] models = PluginRegistry.getWorkspaceModels();
        long timestamp = 0L;
        if (!"true".equals(System.getProperty("pde.nocache")) && this.shouldSaveState(models)) {
            timestamp = this.computeTimestamp(models);
            File dir = new File(DIR, String.valueOf(Long.toString(timestamp)) + ".workspace");
            if (DEBUG) {
                System.out.println("Saving workspace state to: " + dir.getAbsolutePath());
            }
            State state = stateObjectFactory.createState(false);
            int i = 0;
            while (i < models.length) {
                BundleDescription desc = models[i].getBundleDescription();
                if (desc != null) {
                    state.addBundle(state.getFactory().createBundleDescription(desc));
                }
                ++i;
            }
            this.saveState(state, dir);
            PDEAuxiliaryState.writePluginInfo(models, dir);
        }
        this.clearStaleStates(".target", this.fTargetTimestamp);
        this.clearStaleStates(".workspace", timestamp);
        this.clearStaleStates(".cache", 0L);
    }

    private long computeTimestamp(IPluginModelBase[] models) {
        URL[] urls = new URL[models.length];
        int i = 0;
        while (i < models.length) {
            try {
                IProject project = models[i].getUnderlyingResource().getProject();
                urls[i] = new File(project.getLocation().toString()).toURL();
            }
            catch (MalformedURLException malformedURLException) {}
            ++i;
        }
        return this.computeTimestamp(urls);
    }

    private boolean shouldSaveState(IPluginModelBase[] models) {
        int nonOSGiModels = 0;
        int i = 0;
        while (i < models.length) {
            String id = models[i].getPluginBase().getId();
            if (id == null) {
                ++nonOSGiModels;
            } else if (id.trim().length() == 0 || !models[i].isLoaded() || !models[i].isInSync() || models[i].getBundleDescription() == null) {
                return false;
            }
            ++i;
        }
        return models.length - nonOSGiModels > 0;
    }

    private void clearStaleStates(String extension, long latest) {
        File dir = new File(PDECore.getDefault().getStateLocation().toOSString());
        File[] children = dir.listFiles();
        if (children != null) {
            int i = 0;
            while (i < children.length) {
                String name;
                File child = children[i];
                if (child.isDirectory() && (name = child.getName()).endsWith(extension) && name.length() > extension.length() && !name.equals(String.valueOf(Long.toString(latest)) + extension)) {
                    CoreUtility.deleteContent(child);
                }
                ++i;
            }
        }
    }

    public String getClassName(long bundleID) {
        return this.fAuxiliaryState.getClassName(bundleID);
    }

    public boolean hasExtensibleAPI(long bundleID) {
        return this.fAuxiliaryState.hasExtensibleAPI(bundleID);
    }

    public boolean isPatchFragment(long bundleID) {
        return this.fAuxiliaryState.isPatchFragment(bundleID);
    }

    public boolean hasBundleStructure(long bundleID) {
        return this.fAuxiliaryState.hasBundleStructure(bundleID);
    }

    public String getPluginName(long bundleID) {
        return this.fAuxiliaryState.getPluginName(bundleID);
    }

    public String getProviderName(long bundleID) {
        return this.fAuxiliaryState.getProviderName(bundleID);
    }

    public String[] getLibraryNames(long bundleID) {
        return this.fAuxiliaryState.getLibraryNames(bundleID);
    }

    public String getBundleLocalization(long bundleID) {
        return this.fAuxiliaryState.getBundleLocalization(bundleID);
    }

    public String getProject(long bundleID) {
        return this.fAuxiliaryState.getProject(bundleID);
    }

    public String getBundleSourceEntry(long bundleID) {
        return this.fAuxiliaryState.getBundleSourceEntry(bundleID);
    }

    public BundleDescription[] addAdditionalBundles(URL[] newBundleURLs) {
        ArrayList<BundleDescription> descriptions = new ArrayList<BundleDescription>(newBundleURLs.length);
        int i = 0;
        while (i < newBundleURLs.length) {
            File file = new File(newBundleURLs[i].getFile());
            try {
                BundleDescription desc = this.addBundle(file, -1L);
                if (desc != null) {
                    descriptions.add(desc);
                }
            }
            catch (PluginConversionException pluginConversionException) {
            }
            catch (CoreException coreException) {
            }
            catch (IOException iOException) {
                PDECore.log((IStatus)new Status(4, "org.eclipse.pde.core", 4, "Invalid manifest format at " + file.getAbsolutePath(), null));
            }
            ++i;
        }
        this.fTargetTimestamp = this.computeTimestamp(newBundleURLs, this.fTargetTimestamp);
        File dir = new File(DIR, String.valueOf(Long.toString(this.fTargetTimestamp)) + ".target");
        if (!dir.exists()) {
            dir.mkdirs();
        }
        this.fAuxiliaryState.savePluginInfo(dir);
        this.saveState(dir);
        this.resolveState(false);
        return descriptions.toArray(new BundleDescription[descriptions.size()]);
    }

    public File getTargetDirectory() {
        return new File(DIR, String.valueOf(Long.toString(this.fTargetTimestamp)) + ".target");
    }
}

