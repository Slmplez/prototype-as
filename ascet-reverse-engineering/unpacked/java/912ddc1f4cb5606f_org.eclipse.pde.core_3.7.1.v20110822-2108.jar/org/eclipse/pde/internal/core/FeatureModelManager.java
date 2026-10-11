/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.resources.IProject;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelProviderEvent;
import org.eclipse.pde.core.IModelProviderListener;
import org.eclipse.pde.internal.core.ExternalFeatureModelManager;
import org.eclipse.pde.internal.core.FeatureModelDelta;
import org.eclipse.pde.internal.core.FeatureTable;
import org.eclipse.pde.internal.core.IFeatureModelDelta;
import org.eclipse.pde.internal.core.IFeatureModelListener;
import org.eclipse.pde.internal.core.WorkspaceFeatureModelManager;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.util.VersionUtil;
import org.osgi.framework.Version;

public class FeatureModelManager {
    private FeatureTable fActiveModels;
    private FeatureTable fInactiveModels;
    private ExternalFeatureModelManager fExternalManager;
    private boolean fReloadExternalNeeded = false;
    private WorkspaceFeatureModelManager fWorkspaceManager = new WorkspaceFeatureModelManager();
    private IModelProviderListener fProviderListener;
    private ArrayList fListeners = new ArrayList();

    public synchronized void shutdown() {
        if (this.fWorkspaceManager != null) {
            this.fWorkspaceManager.removeModelProviderListener(this.fProviderListener);
        }
        if (this.fExternalManager != null) {
            this.fExternalManager.removeModelProviderListener(this.fProviderListener);
        }
    }

    private synchronized void init() {
        if (this.fActiveModels != null) {
            if (this.fReloadExternalNeeded) {
                this.fReloadExternalNeeded = false;
                this.fExternalManager.initialize();
            }
            return;
        }
        this.fActiveModels = new FeatureTable();
        this.fInactiveModels = new FeatureTable();
        this.fProviderListener = new IModelProviderListener(){

            public void modelsChanged(IModelProviderEvent e) {
                FeatureModelManager.this.handleModelsChanged(e);
            }
        };
        this.fWorkspaceManager.addModelProviderListener(this.fProviderListener);
        IFeatureModel[] models = this.fWorkspaceManager.getFeatureModels();
        int i = 0;
        while (i < models.length) {
            this.fActiveModels.add(models[i]);
            ++i;
        }
        this.fExternalManager = new ExternalFeatureModelManager();
        this.fExternalManager.addModelProviderListener(this.fProviderListener);
        this.fReloadExternalNeeded = false;
        this.fExternalManager.initialize();
    }

    public IFeatureModel[] getModels() {
        this.init();
        IFeatureModel[] allModels = this.fActiveModels.getAll();
        ArrayList<IFeatureModel> valid = new ArrayList<IFeatureModel>(allModels.length);
        int i = 0;
        while (i < allModels.length) {
            if (allModels[i].isValid()) {
                valid.add(allModels[i]);
            }
            ++i;
        }
        return valid.toArray(new IFeatureModel[valid.size()]);
    }

    public IFeatureModel[] getWorkspaceModels() {
        this.init();
        return this.fWorkspaceManager.getFeatureModels();
    }

    public IFeatureModel[] getExternalModels() {
        this.init();
        return this.fExternalManager.getModels();
    }

    public IFeatureModel getFeatureModel(IProject project) {
        this.init();
        return this.fWorkspaceManager.getFeatureModel(project);
    }

    public IFeatureModel findFeatureModel(String id, String version) {
        this.init();
        IFeatureModel[] models = this.fActiveModels.get(id, version);
        if (VersionUtil.isEmptyVersion(version)) {
            return this.findFeatureModel(id);
        }
        int i = 0;
        while (i < models.length) {
            if (models[i].isValid()) {
                return models[i];
            }
            ++i;
        }
        return null;
    }

    public IFeatureModel findFeatureModelRelaxed(String id, String version) {
        IFeatureModel model = this.findFeatureModel(id, version);
        if (model != null) {
            return model;
        }
        try {
            Version pvi = Version.parseVersion((String)version);
            return this.findFeatureModel(id, String.valueOf(pvi.getMajor()) + "." + pvi.getMinor() + "." + pvi.getMicro() + ".qualifier");
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
    }

    public IFeatureModel[] findFeatureModels(String id) {
        this.init();
        IFeatureModel[] models = this.fActiveModels.get(id);
        ArrayList<IFeatureModel> valid = new ArrayList<IFeatureModel>(models.length);
        int i = 0;
        while (i < models.length) {
            if (models[i].isValid()) {
                valid.add(models[i]);
            }
            ++i;
        }
        return valid.toArray(new IFeatureModel[valid.size()]);
    }

    public IFeatureModel findFeatureModel(String id) {
        IFeatureModel[] models = this.findFeatureModels(id);
        IFeatureModel model = null;
        int i = 0;
        while (i < models.length) {
            if (model == null) {
                model = models[i];
            } else {
                String version = model.getFeature().getVersion();
                String version2 = models[i].getFeature().getVersion();
                Version vid = Version.parseVersion((String)version);
                Version vid2 = Version.parseVersion((String)version2);
                if (VersionUtil.isGreaterOrEqualTo(vid2, vid)) {
                    model = models[i];
                }
            }
            ++i;
        }
        return model;
    }

    private void handleModelsChanged(IModelProviderEvent e) {
        this.init();
        IFeatureModelDelta delta = this.processEvent(e);
        Object[] entries = this.fListeners.toArray();
        int i = 0;
        while (i < entries.length) {
            ((IFeatureModelListener)entries[i]).modelsChanged(delta);
            ++i;
        }
    }

    private synchronized IFeatureModelDelta processEvent(IModelProviderEvent e) {
        IModel[] changed;
        FeatureTable.Idver idver;
        String version;
        String id;
        FeatureTable.Idver idver2;
        IFeatureModel model;
        int i;
        FeatureModelDelta delta = new FeatureModelDelta();
        HashSet<FeatureTable.Idver> affectedIdVers = null;
        if ((e.getEventTypes() & 2) != 0) {
            IModel[] removed = e.getRemovedModels();
            i = 0;
            while (i < removed.length) {
                if (removed[i] instanceof IFeatureModel) {
                    model = (IFeatureModel)removed[i];
                    idver2 = this.fActiveModels.remove(model);
                    if (idver2 != null) {
                        if (affectedIdVers == null) {
                            affectedIdVers = new HashSet<FeatureTable.Idver>();
                        }
                        affectedIdVers.add(idver2);
                        delta.add(model, 2);
                    } else {
                        this.fInactiveModels.remove(model);
                    }
                }
                ++i;
            }
        }
        if ((e.getEventTypes() & 1) != 0) {
            IModel[] added = e.getAddedModels();
            i = 0;
            while (i < added.length) {
                if (added[i] instanceof IFeatureModel) {
                    model = (IFeatureModel)added[i];
                    if (model.getUnderlyingResource() != null) {
                        idver2 = this.fActiveModels.add(model);
                        delta.add(model, 1);
                        if (affectedIdVers == null) {
                            affectedIdVers = new HashSet();
                        }
                        affectedIdVers.add(idver2);
                    } else if (model.isValid() && this.fInactiveModels.get(id = model.getFeature().getId(), version = model.getFeature().getVersion()).length <= 0) {
                        IFeatureModel[] activeModels = this.fActiveModels.get(id, version);
                        int j = 0;
                        while (j < activeModels.length) {
                            if (activeModels[j].getUnderlyingResource() == null) {
                                // empty if block
                            }
                            ++j;
                        }
                        idver = this.fInactiveModels.add(model);
                        if (affectedIdVers == null) {
                            affectedIdVers = new HashSet();
                        }
                        affectedIdVers.add(idver);
                    }
                }
                ++i;
            }
        }
        if ((e.getEventTypes() & 4) != 0) {
            changed = e.getChangedModels();
            i = 0;
            while (i < changed.length) {
                if (changed[i] instanceof IFeatureModel) {
                    model = (IFeatureModel)changed[i];
                    id = model.getFeature().getId();
                    version = model.getFeature().getVersion();
                    FeatureTable.Idver oldIdver = this.fActiveModels.get(model);
                    if (oldIdver != null && !oldIdver.equals(id, version)) {
                        idver = this.fActiveModels.add(model);
                        if (affectedIdVers == null) {
                            affectedIdVers = new HashSet();
                        }
                        affectedIdVers.add(oldIdver);
                        affectedIdVers.add(idver);
                    }
                }
                ++i;
            }
        }
        this.adjustExternalVisibility(delta, affectedIdVers);
        if ((e.getEventTypes() & 4) != 0) {
            changed = e.getChangedModels();
            i = 0;
            while (i < changed.length) {
                if (changed[i] instanceof IFeatureModel && !delta.contains(model = (IFeatureModel)changed[i], 3)) {
                    delta.add(model, 4);
                }
                ++i;
            }
        }
        return delta;
    }

    private void adjustExternalVisibility(FeatureModelDelta delta, Set affectedIdVers) {
        if (affectedIdVers != null) {
            Iterator it = affectedIdVers.iterator();
            while (it.hasNext()) {
                IFeatureModel[] models;
                FeatureTable.Idver idver = (FeatureTable.Idver)it.next();
                IFeatureModel[] affectedModels = this.fActiveModels.get(idver);
                if (affectedModels.length > 1) {
                    int j = 0;
                    while (j < affectedModels.length) {
                        if (affectedModels[j].getUnderlyingResource() == null) {
                            this.fActiveModels.remove(affectedModels[j]);
                            this.fInactiveModels.add(affectedModels[j]);
                            delta.add(affectedModels[j], 2);
                        }
                        ++j;
                    }
                }
                if (affectedModels.length > 0 || (models = this.fInactiveModels.get(idver)).length <= 0) continue;
                this.fInactiveModels.remove(models[0]);
                this.fActiveModels.add(models[0]);
                delta.add(models[0], 1);
            }
        }
    }

    public void addFeatureModelListener(IFeatureModelListener listener) {
        if (!this.fListeners.contains(listener)) {
            this.fListeners.add(listener);
        }
    }

    public void removeFeatureModelListener(IFeatureModelListener listener) {
        if (this.fListeners.contains(listener)) {
            this.fListeners.remove(listener);
        }
    }

    public void targetReloaded() {
        this.fReloadExternalNeeded = true;
    }

    public IFeatureModel getDeltaPackFeature() {
        IFeatureModel model = this.findFeatureModel("org.eclipse.equinox.executable");
        if (model == null) {
            model = this.findFeatureModel("org.eclipse.platform.launchers");
        }
        return model;
    }
}

