/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.osgi.service.resolver.BundleDelta
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.StateDelta
 */
package org.eclipse.pde.internal.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.TreeMap;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.osgi.service.resolver.BundleDelta;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.StateDelta;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelProviderEvent;
import org.eclipse.pde.core.IModelProviderListener;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.ExternalModelManager;
import org.eclipse.pde.internal.core.IExtensionDeltaListener;
import org.eclipse.pde.internal.core.IPluginModelListener;
import org.eclipse.pde.internal.core.IStateDeltaListener;
import org.eclipse.pde.internal.core.ModelProviderEvent;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.PDEPreferencesManager;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.PluginModelDelta;
import org.eclipse.pde.internal.core.RequiredPluginsClasspathContainer;
import org.eclipse.pde.internal.core.WorkspacePluginModelManager;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.TargetPlatformService;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;
import org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService;
import org.eclipse.pde.internal.core.target.provisional.LoadTargetDefinitionJob;

public class PluginModelManager
implements IModelProviderListener {
    private static PluginModelManager fModelManager;
    private UpdateClasspathsJob fUpdateJob = new UpdateClasspathsJob();
    private ExternalModelManager fExternalManager;
    private WorkspacePluginModelManager fWorkspaceManager = new WorkspacePluginModelManager();
    private PDEState fState;
    private Map fEntries;
    private ArrayList fListeners;
    private ArrayList fStateListeners;
    static /* synthetic */ Class class$0;

    private PluginModelManager() {
        this.fExternalManager = new ExternalModelManager();
        this.fExternalManager.addModelProviderListener(this);
        this.fWorkspaceManager.addModelProviderListener(this);
    }

    public static synchronized PluginModelManager getInstance() {
        if (fModelManager == null) {
            fModelManager = new PluginModelManager();
        }
        return fModelManager;
    }

    public static synchronized void saveInstance() {
        if (fModelManager != null) {
            fModelManager.save();
        }
    }

    public static synchronized void shutdownInstance() {
        if (fModelManager != null) {
            fModelManager.shutdown();
        }
    }

    public void modelsChanged(IModelProviderEvent e) {
        Object newState;
        PluginModelDelta delta = new PluginModelDelta();
        if ((e.getEventTypes() & 2) != 0) {
            IModel[] removed = e.getRemovedModels();
            int i = 0;
            while (i < removed.length) {
                IPluginModelBase model = (IPluginModelBase)removed[i];
                String id = model.getPluginBase().getId();
                if (id != null) {
                    this.handleRemove(id, model, delta);
                }
                ++i;
            }
        }
        if ((e.getEventTypes() & 8) != 0 && (newState = e.getEventSource()) instanceof PDEState) {
            this.fState = (PDEState)newState;
        }
        HashSet<String> addedBSNs = new HashSet<String>();
        if ((e.getEventTypes() & 1) != 0) {
            IModel[] added = e.getAddedModels();
            int i = 0;
            while (i < added.length) {
                IPluginModelBase model = (IPluginModelBase)added[i];
                String id = model.getPluginBase().getId();
                if (id != null) {
                    this.handleAdd(id, model, delta);
                    addedBSNs.add(id);
                }
                ++i;
            }
        }
        if ((e.getEventTypes() & 8) != 0) {
            IPluginModelBase[] models = this.fWorkspaceManager.getPluginModels();
            int i = 0;
            while (i < models.length) {
                this.addWorkspaceBundleToState(models[i]);
                ++i;
            }
            if (models.length > 0) {
                this.fState.resolveState(true);
            }
        }
        if ((e.getEventTypes() & 4) != 0) {
            IModel[] changed = e.getChangedModels();
            int i = 0;
            while (i < changed.length) {
                this.handleChange((IPluginModelBase)changed[i], delta);
                ++i;
            }
        }
        if (this.fState != null) {
            StateDelta stateDelta = null;
            if ((e.getEventTypes() & 8) == 0) {
                stateDelta = (e.getEventTypes() & 0x10) != 0 ? this.fState.resolveState(false) : (addedBSNs.isEmpty() ? this.fState.resolveState(true) : this.fState.resolveState(addedBSNs.toArray(new String[addedBSNs.size()])));
            }
            this.updateAffectedEntries(stateDelta, e);
            this.fireStateDelta(stateDelta);
        }
        this.fireDelta(delta);
    }

    private void updateAffectedEntries(StateDelta delta, IModelProviderEvent event) {
        HashMap<IJavaProject, RequiredPluginsClasspathContainer> map = new HashMap<IJavaProject, RequiredPluginsClasspathContainer>();
        if (delta == null) {
            IPluginModelBase[] models = this.getWorkspaceModels();
            int i = 0;
            while (i < models.length) {
                IProject project = models[i].getUnderlyingResource().getProject();
                try {
                    if (project.hasNature("org.eclipse.jdt.core.javanature")) {
                        map.put(JavaCore.create((IProject)project), new RequiredPluginsClasspathContainer(models[i]));
                    }
                }
                catch (CoreException coreException) {}
                ++i;
            }
        } else {
            BundleDelta[] deltas = delta.getChanges();
            int i = 0;
            while (i < deltas.length) {
                try {
                    IJavaProject jProject;
                    IProject project;
                    IResource resource;
                    IPluginModelBase model = this.findModel(deltas[i].getBundle());
                    IResource iResource = resource = model == null ? null : model.getUnderlyingResource();
                    if (resource != null && (project = resource.getProject()).hasNature("org.eclipse.jdt.core.javanature") && !map.containsKey(jProject = JavaCore.create((IProject)project))) {
                        map.put(jProject, new RequiredPluginsClasspathContainer(model));
                    }
                }
                catch (CoreException coreException) {}
                ++i;
            }
            IPluginModelBase[] models = this.getWorkspaceModels();
            int i2 = 0;
            while (i2 < models.length) {
                IProject project = models[i2].getUnderlyingResource().getProject();
                try {
                    IBuild build;
                    IJavaProject jProject;
                    if (project.hasNature("org.eclipse.jdt.core.javanature") && !map.containsKey(jProject = JavaCore.create((IProject)project)) && (build = ClasspathUtilCore.getBuild(models[i2])) != null && build.getEntry("additional.bundles") != null) {
                        map.put(jProject, new RequiredPluginsClasspathContainer(models[i2], build));
                    }
                }
                catch (CoreException coreException) {}
                ++i2;
            }
        }
        if (map.size() > 0) {
            Iterator iterator = map.entrySet().iterator();
            IJavaProject[] projects = new IJavaProject[map.size()];
            IClasspathContainer[] containers = new IClasspathContainer[projects.length];
            int index = 0;
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                projects[index] = (IJavaProject)entry.getKey();
                containers[index] = (IClasspathContainer)entry.getValue();
                ++index;
            }
            int types = event.getEventTypes();
            if (types == 4) {
                this.fUpdateJob.add(projects, containers);
                this.fUpdateJob.schedule();
            } else {
                try {
                    JavaCore.setClasspathContainer((IPath)PDECore.REQUIRED_PLUGINS_CONTAINER_PATH, (IJavaProject[])projects, (IClasspathContainer[])containers, null);
                }
                catch (JavaModelException javaModelException) {}
            }
        }
    }

    private void fireDelta(PluginModelDelta delta) {
        if (this.fListeners != null) {
            int i = 0;
            while (i < this.fListeners.size()) {
                ((IPluginModelListener)this.fListeners.get(i)).modelsChanged(delta);
                ++i;
            }
        }
    }

    private void fireStateDelta(StateDelta delta) {
        if (this.fStateListeners != null) {
            ListIterator li = this.fStateListeners.listIterator();
            while (li.hasNext()) {
                ((IStateDeltaListener)li.next()).stateResolved(delta);
            }
        }
    }

    private void fireStateChanged(PDEState newState) {
        if (this.fStateListeners != null) {
            ListIterator li = this.fStateListeners.listIterator();
            while (li.hasNext()) {
                ((IStateDeltaListener)li.next()).stateChanged(newState.getState());
            }
        }
    }

    public void addPluginModelListener(IPluginModelListener listener) {
        if (this.fListeners == null) {
            this.fListeners = new ArrayList();
        }
        if (!this.fListeners.contains(listener)) {
            this.fListeners.add(listener);
        }
    }

    public void addStateDeltaListener(IStateDeltaListener listener) {
        if (this.fStateListeners == null) {
            this.fStateListeners = new ArrayList();
        }
        if (!this.fStateListeners.contains(listener)) {
            this.fStateListeners.add(listener);
        }
    }

    public void removePluginModelListener(IPluginModelListener listener) {
        if (this.fListeners != null) {
            this.fListeners.remove(listener);
        }
    }

    public void removeStateDeltaListener(IStateDeltaListener listener) {
        if (this.fStateListeners != null) {
            this.fStateListeners.remove(listener);
        }
    }

    public boolean isEmpty() {
        return this.getEntryTable().size() == 0;
    }

    public boolean isInitialized() {
        return this.fEntries != null;
    }

    private Map getEntryTable() {
        this.initializeTable();
        return this.fEntries;
    }

    private synchronized void initializeTable() {
        IPluginModelBase[] models;
        if (this.fEntries != null) {
            return;
        }
        Map entries = Collections.synchronizedMap(new TreeMap());
        this.fState = new PDEState(this.fWorkspaceManager.getPluginPaths(), this.fExternalManager.getPluginPaths(), true, true, (IProgressMonitor)new NullProgressMonitor());
        this.fExternalManager.initializeModels(this.fState.getTargetModels());
        boolean statechanged = this.addToTable(entries, this.fExternalManager.getAllModels());
        if (this.fState.isCombined()) {
            models = this.fState.getWorkspaceModels();
            this.fWorkspaceManager.initializeModels(models);
            this.addToTable(entries, models);
            if (statechanged) {
                this.fState.resolveState(true);
            }
        } else {
            models = this.fWorkspaceManager.getPluginModels();
            this.addToTable(entries, models);
            int i = 0;
            while (i < models.length) {
                this.addWorkspaceBundleToState(entries, models[i]);
                ++i;
            }
            if (models.length > 0) {
                this.fState.resolveState(true);
            }
            PDECore.getDefault().getExtensionsRegistry().targetReloaded();
        }
        this.fEntries = entries;
        this.initDefaultTargetPlatformDefinition();
        PDEPreferencesManager pref = PDECore.getDefault().getPreferencesManager();
        String pooled = pref.getString("pooled_bundles");
        if (pooled != null && pooled.trim().length() > 0 && !"[savedNone]".equals(pooled.trim())) {
            ITargetPlatformService service;
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
            if ((service = (ITargetPlatformService)pDECore.acquireService(clazz.getName())) != null) {
                try {
                    ITargetHandle handle = service.getWorkspaceTargetHandle();
                    LoadTargetDefinitionJob.load(handle.getTargetDefinition());
                }
                catch (CoreException e) {
                    PDECore.log(e);
                }
            }
        }
    }

    private synchronized void initDefaultTargetPlatformDefinition() {
        String memento;
        ITargetPlatformService service;
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
        if ((service = (ITargetPlatformService)pDECore.acquireService(clazz.getName())) != null && (memento = PDECore.getDefault().getPreferencesManager().getString("workspace_target_handle")).equals("")) {
            ITargetHandle[] targets = service.getTargets(null);
            TargetPlatformService ts = (TargetPlatformService)service;
            TargetDefinition curr = (TargetDefinition)ts.newTarget();
            ITargetHandle wsHandle = null;
            try {
                ts.loadTargetDefinitionFromPreferences(curr);
                int i = 0;
                while (i < targets.length) {
                    if (curr.isContentEquivalent(targets[i].getTargetDefinition())) {
                        wsHandle = targets[i];
                        break;
                    }
                    ++i;
                }
                if (wsHandle == null) {
                    ITargetDefinition def = ts.newDefaultTargetDefinition();
                    String defVMargs = def.getVMArguments();
                    if (curr.getVMArguments() == null) {
                        def.setVMArguments(null);
                    }
                    if (curr.isContentEquivalent(def)) {
                        curr.setName(Messages.TargetPlatformService_7);
                        curr.setVMArguments(defVMargs);
                    } else {
                        curr.setName(PDECoreMessages.PluginModelManager_0);
                        boolean defaultExists = false;
                        int i2 = 0;
                        while (i2 < targets.length) {
                            if (((TargetDefinition)def).isContentEquivalent(targets[i2].getTargetDefinition())) {
                                defaultExists = true;
                                break;
                            }
                            ++i2;
                        }
                        if (!defaultExists) {
                            ts.saveTargetDefinition(def);
                        }
                    }
                    ts.saveTargetDefinition(curr);
                    wsHandle = curr.getHandle();
                }
                PDEPreferencesManager preferences = PDECore.getDefault().getPreferencesManager();
                preferences.setValue("workspace_target_handle", wsHandle.getMemento());
            }
            catch (CoreException e) {
                PDECore.log(e);
            }
        }
    }

    private boolean addToTable(Map entries, IPluginModelBase[] models) {
        boolean stateChanged = false;
        int i = 0;
        while (i < models.length) {
            String id = models[i].getPluginBase().getId();
            if (id != null) {
                LocalModelEntry entry = (LocalModelEntry)((Object)entries.get(id));
                if (entry == null) {
                    entry = new LocalModelEntry(id);
                    entries.put(id, entry);
                }
                entry.addModel(models[i]);
                if (models[i].getUnderlyingResource() == null && !models[i].isEnabled()) {
                    this.fState.removeBundleDescription(models[i].getBundleDescription());
                    stateChanged = true;
                }
            }
            ++i;
        }
        return stateChanged;
    }

    private synchronized void addWorkspaceBundleToState(IPluginModelBase model) {
        this.addWorkspaceBundleToState(this.fEntries, model);
    }

    private synchronized void addWorkspaceBundleToState(Map entries, IPluginModelBase model) {
        ModelEntry hostEntry;
        BundleDescription host;
        HostSpecification spec;
        String id = model.getPluginBase().getId();
        if (id == null) {
            return;
        }
        ModelEntry entry = (ModelEntry)((Object)entries.get(id));
        if (entry != null) {
            IPluginModelBase[] models = entry.getExternalModels();
            int i = 0;
            while (i < models.length) {
                this.fState.removeBundleDescription(models[i].getBundleDescription());
                ++i;
            }
        }
        this.fState.addBundle(model, false);
        BundleDescription desc = model.getBundleDescription();
        if (desc != null && (spec = desc.getHost()) != null && ("true".equals(System.getProperty("pde.allowCycles")) || this.isPatchFragment(entries, desc) || desc.getImportPackages().length > 0 || desc.getRequiredBundles().length > 0) && (host = (BundleDescription)spec.getSupplier()) != null && (hostEntry = (ModelEntry)((Object)entries.get(host.getName()))) != null) {
            this.fState.addBundle(hostEntry.getModel(host), true);
        }
    }

    private boolean isPatchFragment(Map entries, BundleDescription desc) {
        ModelEntry entry = (ModelEntry)((Object)entries.get(desc.getSymbolicName()));
        if (entry != null) {
            IPluginModelBase base = entry.getModel(desc);
            if (base == null) {
                return false;
            }
            return ClasspathUtilCore.isPatchFragment(base);
        }
        return false;
    }

    private void handleAdd(String id, IPluginModelBase model, PluginModelDelta delta) {
        BundleDescription desc;
        LocalModelEntry entry = (LocalModelEntry)((Object)this.getEntryTable().get(id));
        if (entry == null) {
            entry = new LocalModelEntry(id);
            this.getEntryTable().put(id, entry);
            delta.addEntry(entry, 1);
        } else {
            delta.addEntry(entry, 4);
        }
        entry.addModel(model);
        if (model.getUnderlyingResource() != null) {
            this.addWorkspaceBundleToState(model);
        } else if (model.isEnabled() && !entry.hasWorkspaceModels() && (desc = model.getBundleDescription()).getContainingState().equals(this.fState)) {
            this.fState.addBundleDescription(desc);
        }
    }

    private void handleRemove(String id, IPluginModelBase model, PluginModelDelta delta) {
        LocalModelEntry entry = (LocalModelEntry)((Object)this.getEntryTable().get(id));
        if (entry != null) {
            entry.removeModel(model);
            this.fState.removeBundleDescription(model.getBundleDescription());
            if (!entry.hasExternalModels() && !entry.hasWorkspaceModels()) {
                this.getEntryTable().remove(id);
                delta.addEntry(entry, 2);
                return;
            }
            if (model.getUnderlyingResource() != null && !entry.hasWorkspaceModels()) {
                IPluginModelBase[] external = entry.getExternalModels();
                int i = 0;
                while (i < external.length) {
                    if (external[i].isEnabled()) {
                        this.fState.addBundleDescription(external[i].getBundleDescription());
                    }
                    ++i;
                }
            }
            delta.addEntry(entry, 4);
        }
    }

    private void handleChange(IPluginModelBase model, PluginModelDelta delta) {
        BundleDescription desc = model.getBundleDescription();
        String oldID = desc == null ? null : desc.getSymbolicName();
        String newID = model.getPluginBase().getId();
        if (oldID == null && newID == null) {
            return;
        }
        if (oldID == null && newID != null) {
            this.handleAdd(newID, model, delta);
        } else if (oldID != null && newID == null) {
            this.handleRemove(oldID, model, delta);
            model.setBundleDescription(null);
        } else if (oldID.equals(newID)) {
            if (model.isEnabled()) {
                ModelEntry entry = (ModelEntry)((Object)this.getEntryTable().get(oldID));
                IPluginModelBase[] activeModels = entry.getActiveModels();
                boolean isActive = false;
                int i = 0;
                while (i < activeModels.length) {
                    if (activeModels[i] == model) {
                        isActive = true;
                        break;
                    }
                    ++i;
                }
                if (isActive) {
                    this.fState.addBundle(model, true);
                }
            } else {
                this.fState.removeBundleDescription(model.getBundleDescription());
            }
            delta.addEntry(this.findEntry(oldID), 4);
        } else {
            this.handleRemove(oldID, model, delta);
            this.handleAdd(newID, model, delta);
        }
    }

    public ModelEntry findEntry(String id) {
        if ("system.bundle".equals(id)) {
            id = this.getSystemBundleId();
        }
        return id == null ? null : (ModelEntry)((Object)this.getEntryTable().get(id));
    }

    public IPluginModelBase findModel(String id) {
        ModelEntry entry = this.findEntry(id);
        return entry == null ? null : entry.getModel();
    }

    public IPluginModelBase findModel(IProject project) {
        this.initializeTable();
        return this.fWorkspaceManager.getPluginModel(project);
    }

    public IPluginModelBase findModel(BundleDescription desc) {
        ModelEntry entry = desc != null ? this.findEntry(desc.getSymbolicName()) : null;
        return entry == null ? null : entry.getModel(desc);
    }

    public IPluginModelBase[] getActiveModels() {
        return this.getActiveModels(true);
    }

    public IPluginModelBase[] getActiveModels(boolean includeFragments) {
        int size = this.getEntryTable().size();
        ArrayList<IPluginModelBase> result = new ArrayList<IPluginModelBase>(size);
        Iterator iter = this.getEntryTable().values().iterator();
        while (iter.hasNext()) {
            ModelEntry entry = (ModelEntry)((Object)iter.next());
            IPluginModelBase[] models = entry.getActiveModels();
            int i = 0;
            while (i < models.length) {
                if (models[i] instanceof IPluginModel || includeFragments) {
                    result.add(models[i]);
                }
                ++i;
            }
        }
        return result.toArray(new IPluginModelBase[result.size()]);
    }

    public IPluginModelBase[] getAllModels() {
        return this.getAllModels(true);
    }

    public IPluginModelBase[] getAllModels(boolean includeFragments) {
        int size = this.getEntryTable().size();
        ArrayList<IPluginModelBase> result = new ArrayList<IPluginModelBase>(size);
        Iterator iter = this.getEntryTable().values().iterator();
        while (iter.hasNext()) {
            ModelEntry entry = (ModelEntry)((Object)iter.next());
            IPluginModelBase[] models = entry.hasWorkspaceModels() ? entry.getWorkspaceModels() : entry.getExternalModels();
            int i = 0;
            while (i < models.length) {
                if (models[i] instanceof IPluginModel || includeFragments) {
                    result.add(models[i]);
                }
                ++i;
            }
        }
        return result.toArray(new IPluginModelBase[result.size()]);
    }

    public IPluginModelBase[] getExternalModels() {
        this.initializeTable();
        return this.fExternalManager.getAllModels();
    }

    public IPluginModelBase[] getWorkspaceModels() {
        this.initializeTable();
        return this.fWorkspaceManager.getPluginModels();
    }

    public ExternalModelManager getExternalModelManager() {
        this.initializeTable();
        return this.fExternalManager;
    }

    public PDEState getState() {
        this.initializeTable();
        return this.fState;
    }

    public void resetState(PDEState state) {
        IModel[] added;
        if (this.fState != null && this.fState.equals(state)) {
            return;
        }
        int type = 8;
        IModel[] removed = this.fState.getTargetModels();
        if (removed.length > 0) {
            type |= 2;
        }
        if ((added = state.getTargetModels()).length > 0) {
            type |= 1;
        }
        this.modelsChanged(new ModelProviderEvent(state, type, added, removed, new IModel[0]));
        this.fireStateChanged(state);
    }

    public String getSystemBundleId() {
        return this.getState().getSystemBundle();
    }

    protected void shutdown() {
        this.fWorkspaceManager.shutdown();
        this.fExternalManager.shutdown();
        if (this.fListeners != null) {
            this.fListeners.clear();
        }
        if (this.fStateListeners != null) {
            this.fStateListeners.clear();
        }
    }

    protected void save() {
        if (this.fState != null) {
            this.fState.saveExternalState();
            this.fState.saveWorkspaceState();
        }
    }

    public void addExtensionDeltaListener(IExtensionDeltaListener listener) {
        this.fWorkspaceManager.addExtensionDeltaListener(listener);
    }

    public void removeExtensionDeltaListener(IExtensionDeltaListener listener) {
        this.fWorkspaceManager.removeExtensionDeltaListener(listener);
    }

    public void bundleRootChanged(IProject project) {
        this.fWorkspaceManager.initialize();
        this.fWorkspaceManager.removeModel(project);
        if (this.fWorkspaceManager.isInterestingProject(project)) {
            this.fWorkspaceManager.createModel(project, false);
            Object model = this.fWorkspaceManager.getModel(project);
            this.fWorkspaceManager.addChange(model, 4);
        }
        this.fWorkspaceManager.processModelChanges();
    }

    private class LocalModelEntry
    extends ModelEntry {
        public LocalModelEntry(String id) {
            super(id);
        }

        public void addModel(IPluginModelBase model) {
            if (model.getUnderlyingResource() != null) {
                this.fWorkspaceEntries.add(model);
            } else {
                this.fExternalEntries.add(model);
            }
        }

        public void removeModel(IPluginModelBase model) {
            if (model.getUnderlyingResource() != null) {
                this.fWorkspaceEntries.remove(model);
            } else {
                this.fExternalEntries.remove(model);
            }
        }
    }

    class UpdateClasspathsJob
    extends Job {
        private List fProjects = new ArrayList();
        private List fContainers = new ArrayList();

        public UpdateClasspathsJob() {
            super(PDECoreMessages.PluginModelManager_1);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected IStatus run(IProgressMonitor monitor) {
            try {
                boolean more = false;
                do {
                    IJavaProject[] projects = null;
                    IClasspathContainer[] containers = null;
                    List list = this.fProjects;
                    synchronized (list) {
                        projects = this.fProjects.toArray(new IJavaProject[this.fProjects.size()]);
                        containers = this.fContainers.toArray(new IClasspathContainer[this.fContainers.size()]);
                        this.fProjects.clear();
                        this.fContainers.clear();
                    }
                    JavaCore.setClasspathContainer((IPath)PDECore.REQUIRED_PLUGINS_CONTAINER_PATH, (IJavaProject[])projects, (IClasspathContainer[])containers, (IProgressMonitor)monitor);
                    list = this.fProjects;
                    synchronized (list) {
                        more = !this.fProjects.isEmpty();
                    }
                } while (more);
            }
            catch (JavaModelException e) {
                return e.getStatus();
            }
            return Status.OK_STATUS;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        void add(IJavaProject[] projects, IClasspathContainer[] containers) {
            List list = this.fProjects;
            synchronized (list) {
                int i = 0;
                while (i < containers.length) {
                    this.fProjects.add(projects[i]);
                    this.fContainers.add(containers[i]);
                    ++i;
                }
            }
        }
    }
}

