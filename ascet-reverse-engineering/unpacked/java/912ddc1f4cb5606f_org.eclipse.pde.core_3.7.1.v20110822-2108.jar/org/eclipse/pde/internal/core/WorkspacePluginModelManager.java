/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.ListIterator;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ISharedExtensionsModel;
import org.eclipse.pde.internal.core.AbstractNLModel;
import org.eclipse.pde.internal.core.ExtensionDeltaEvent;
import org.eclipse.pde.internal.core.IExtensionDeltaEvent;
import org.eclipse.pde.internal.core.IExtensionDeltaListener;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.WorkspaceModelManager;
import org.eclipse.pde.internal.core.builders.SchemaTransformer;
import org.eclipse.pde.internal.core.bundle.BundleFragmentModel;
import org.eclipse.pde.internal.core.bundle.BundlePluginModel;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.plugin.WorkspaceExtensionsModel;
import org.eclipse.pde.internal.core.plugin.WorkspaceFragmentModel;
import org.eclipse.pde.internal.core.plugin.WorkspacePluginModel;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.schema.SchemaDescriptor;

public class WorkspacePluginModelManager
extends WorkspaceModelManager {
    private ArrayList fExtensionListeners = new ArrayList();
    private ArrayList fChangedExtensions = null;

    protected boolean isInterestingProject(IProject project) {
        return WorkspacePluginModelManager.isPluginProject(project);
    }

    protected void createModel(IProject project, boolean notify) {
        AbstractNLModel model = null;
        IFile manifest = PDEProject.getManifest(project);
        IFile pluginXml = PDEProject.getPluginXml(project);
        IFile fragmentXml = PDEProject.getFragmentXml(project);
        if (manifest.exists()) {
            IFile efile;
            WorkspaceBundleModel bmodel = new WorkspaceBundleModel(manifest);
            this.loadModel(bmodel, false);
            model = bmodel.isFragmentModel() ? new BundleFragmentModel() : new BundlePluginModel();
            model.setEnabled(true);
            bmodel.setEditable(false);
            ((IBundlePluginModelBase)((Object)model)).setBundleModel(bmodel);
            IFile iFile = efile = bmodel.isFragmentModel() ? fragmentXml : pluginXml;
            if (efile.exists()) {
                WorkspaceExtensionsModel extModel = new WorkspaceExtensionsModel(efile);
                extModel.setEditable(false);
                this.loadModel(extModel, false);
                ((IBundlePluginModelBase)((Object)model)).setExtensionsModel(extModel);
                extModel.setBundleModel((IBundlePluginModelBase)((Object)model));
            }
        } else if (pluginXml.exists()) {
            model = new WorkspacePluginModel(pluginXml, true);
            this.loadModel(model, false);
        } else if (fragmentXml.exists()) {
            model = new WorkspaceFragmentModel(fragmentXml, true);
            this.loadModel(model, false);
        }
        if (PDEProject.getOptionsFile(project).exists()) {
            PDECore.getDefault().getTracingOptionsManager().reset();
        }
        if (model != null) {
            if (this.fModels == null) {
                this.fModels = new HashMap();
            }
            this.fModels.put(project, model);
            if (notify) {
                this.addChange(model, 1);
            }
        }
    }

    protected void handleFileDelta(IResourceDelta delta) {
        IFile file = (IFile)delta.getResource();
        IProject project = file.getProject();
        String filename = file.getName();
        if (file.equals((Object)PDEProject.getOptionsFile(project))) {
            PDECore.getDefault().getTracingOptionsManager().reset();
        } else if (file.equals((Object)PDEProject.getBuildProperties(project))) {
            Object model = this.getModel(project);
            if (model != null) {
                this.addChange(model, 4);
            }
        } else if (file.equals((Object)PDEProject.getLocalizationFile(project))) {
            IPluginModelBase model = this.getPluginModel(project);
            if (model != null) {
                ((AbstractNLModel)((Object)model)).resetNLResourceHelper();
            }
        } else if (filename.endsWith(".exsd")) {
            this.handleEclipseSchemaDelta(file, delta);
        } else if (file.equals((Object)PDEProject.getPluginXml(project)) || file.equals((Object)PDEProject.getFragmentXml(project))) {
            this.handleExtensionFileDelta(file, delta);
        } else if (file.equals((Object)PDEProject.getManifest(project))) {
            this.handleBundleManifestDelta(file, delta);
        }
    }

    private void handleEclipseSchemaDelta(IFile schemaFile, IResourceDelta delta) {
        int kind = delta.getKind();
        if (kind != 4) {
            return;
        }
        if ((0x100 & delta.getFlags()) == 0) {
            return;
        }
        Object property = null;
        try {
            property = schemaFile.getSessionProperty(PDECore.SCHEMA_PREVIEW_FILE);
        }
        catch (CoreException coreException) {
            return;
        }
        if (property == null) {
            return;
        }
        if (!(property instanceof File)) {
            return;
        }
        File schemaPreviewFile = (File)property;
        if (!schemaPreviewFile.exists()) {
            return;
        }
        if (!schemaPreviewFile.isFile()) {
            return;
        }
        if (!schemaPreviewFile.canWrite()) {
            return;
        }
        SchemaDescriptor descriptor = new SchemaDescriptor(schemaFile, false);
        ISchema schema = descriptor.getSchema(false);
        try {
            this.recreateSchemaPreviewFileContents(schemaPreviewFile, schema);
        }
        catch (IOException iOException) {}
    }

    private void recreateSchemaPreviewFileContents(File schemaPreviewFile, ISchema schema) throws IOException {
        SchemaTransformer transformer = new SchemaTransformer();
        FileOutputStream os = new FileOutputStream(schemaPreviewFile);
        PrintWriter printWriter = new PrintWriter(new OutputStreamWriter((OutputStream)os, "UTF-8"), true);
        transformer.transform(schema, printWriter);
        os.flush();
        ((OutputStream)os).close();
    }

    private void handleExtensionFileDelta(IFile file, IResourceDelta delta) {
        int kind = delta.getKind();
        IPluginModelBase model = (IPluginModelBase)this.getModel(file.getProject());
        if (kind == 2) {
            if (model instanceof IBundlePluginModelBase) {
                ((IBundlePluginModelBase)model).setExtensionsModel(null);
                this.addExtensionChange(model, 2);
            } else {
                this.removeModel(file.getProject());
            }
        } else if (kind == 1) {
            if (model instanceof IBundlePluginModelBase) {
                WorkspaceExtensionsModel extensions = new WorkspaceExtensionsModel(file);
                extensions.setEditable(false);
                ((IBundlePluginModelBase)model).setExtensionsModel(extensions);
                extensions.setBundleModel((IBundlePluginModelBase)model);
                this.loadModel(extensions, false);
                this.addExtensionChange(model, 1);
            } else {
                this.createModel(file.getProject(), true);
            }
        } else if (kind == 4 && (0x100 & delta.getFlags()) != 0) {
            if (model instanceof IBundlePluginModelBase) {
                boolean reload;
                ISharedExtensionsModel extensions = ((IBundlePluginModelBase)model).getExtensionsModel();
                boolean bl = reload = extensions != null;
                if (extensions == null) {
                    extensions = new WorkspaceExtensionsModel(file);
                    ((WorkspaceExtensionsModel)extensions).setEditable(false);
                    ((IBundlePluginModelBase)model).setExtensionsModel(extensions);
                    ((WorkspaceExtensionsModel)extensions).setBundleModel((IBundlePluginModelBase)model);
                }
                this.loadModel(extensions, reload);
            } else if (model != null) {
                this.loadModel(model, true);
                this.addChange(model, 4);
            }
            this.addExtensionChange(model, 4);
        }
    }

    private void handleBundleManifestDelta(IFile file, IResourceDelta delta) {
        int kind = delta.getKind();
        IProject project = file.getProject();
        Object model = this.getModel(project);
        if (kind == 2 && model != null) {
            this.removeModel(project);
            this.createModel(project, true);
        } else if (kind == 1 || model == null) {
            this.createModel(project, true);
        } else if (kind == 4 && (0x100 & delta.getFlags()) != 0 && model instanceof IBundlePluginModelBase) {
            String oldLocalization = ((IBundlePluginModelBase)model).getBundleLocalization();
            IBundleModel bmodel = ((IBundlePluginModelBase)model).getBundleModel();
            boolean wasFragment = bmodel.isFragmentModel();
            this.loadModel(bmodel, true);
            String newLocalization = ((IBundlePluginModelBase)model).getBundleLocalization();
            if (wasFragment != bmodel.isFragmentModel()) {
                this.removeModel(project);
                this.createModel(project, true);
            } else {
                if (model instanceof AbstractNLModel && oldLocalization != null && (newLocalization == null || !oldLocalization.equals(newLocalization)) || newLocalization != null && (oldLocalization == null || !newLocalization.equals(oldLocalization))) {
                    ((AbstractNLModel)model).resetNLResourceHelper();
                }
                this.addChange(model, 4);
            }
        }
    }

    protected Object removeModel(IProject project) {
        Object model = super.removeModel(project);
        if (model != null && PDEProject.getOptionsFile(project).exists()) {
            PDECore.getDefault().getTracingOptionsManager().reset();
        }
        if (model instanceof IPluginModelBase) {
            this.addExtensionChange((IPluginModelBase)model, 2);
        }
        return model;
    }

    protected IPluginModelBase getPluginModel(IProject project) {
        return (IPluginModelBase)this.getModel(project);
    }

    protected IPluginModelBase[] getPluginModels() {
        this.initialize();
        return this.fModels.values().toArray(new IPluginModelBase[this.fModels.size()]);
    }

    protected void addListeners() {
        IWorkspace workspace = PDECore.getWorkspace();
        workspace.addResourceChangeListener((IResourceChangeListener)this, 2);
        JavaCore.addPreProcessingResourceChangedListener((IResourceChangeListener)this, (int)1);
    }

    protected void removeListeners() {
        PDECore.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
        JavaCore.removePreProcessingResourceChangedListener((IResourceChangeListener)this);
        if (this.fExtensionListeners.size() > 0) {
            this.fExtensionListeners.clear();
        }
        super.removeListeners();
    }

    protected boolean isInterestingFolder(IFolder folder) {
        IContainer root = PDEProject.getBundleRoot(folder.getProject());
        if (folder.getProjectRelativePath().isPrefixOf(root.getProjectRelativePath())) {
            return true;
        }
        String folderName = folder.getName();
        if (("META-INF".equals(folderName) || "OSGI-INF".equals(folderName) || "schema".equals(folderName)) && folder.getParent().equals((Object)root)) {
            return true;
        }
        return "OSGI-INF/l10n".equals(folder.getProjectRelativePath().toString());
    }

    protected void initializeModels(IPluginModelBase[] models) {
        this.fModels = Collections.synchronizedMap(new HashMap());
        int i = 0;
        while (i < models.length) {
            IProject project = models[i].getUnderlyingResource().getProject();
            this.fModels.put(project, models[i]);
            ++i;
        }
        IProject[] projects = PDECore.getWorkspace().getRoot().getProjects();
        int i2 = 0;
        while (i2 < projects.length) {
            if (!this.fModels.containsKey(projects[i2]) && this.isInterestingProject(projects[i2])) {
                this.createModel(projects[i2], false);
            }
            ++i2;
        }
        this.addListeners();
    }

    protected URL[] getPluginPaths() {
        ArrayList<URL> list = new ArrayList<URL>();
        IProject[] projects = PDECore.getWorkspace().getRoot().getProjects();
        int i = 0;
        while (i < projects.length) {
            if (WorkspacePluginModelManager.isPluginProject(projects[i])) {
                try {
                    IPath path = projects[i].getLocation();
                    if (path != null) {
                        list.add(path.toFile().toURL());
                    }
                }
                catch (MalformedURLException malformedURLException) {}
            }
            ++i;
        }
        return list.toArray(new URL[list.size()]);
    }

    void addExtensionDeltaListener(IExtensionDeltaListener listener) {
        if (!this.fExtensionListeners.contains(listener)) {
            this.fExtensionListeners.add(listener);
        }
    }

    void removeExtensionDeltaListener(IExtensionDeltaListener listener) {
        this.fExtensionListeners.remove(listener);
    }

    public void fireExtensionDeltaEvent(IExtensionDeltaEvent event) {
        ListIterator li = this.fExtensionListeners.listIterator();
        while (li.hasNext()) {
            ((IExtensionDeltaListener)li.next()).extensionsChanged(event);
        }
    }

    protected void processModelChanges() {
        super.processModelChanges();
        this.processModelChanges("org.eclipse.pde.internal.core.IExtensionDeltaEvent", this.fChangedExtensions);
        this.fChangedExtensions = null;
    }

    protected void createAndFireEvent(String eventId, int type, Collection added, Collection removed, Collection changed) {
        if (eventId.equals("org.eclipse.pde.internal.core.IExtensionDeltaEvent")) {
            ExtensionDeltaEvent event = new ExtensionDeltaEvent(type, added.toArray(new IPluginModelBase[added.size()]), removed.toArray(new IPluginModelBase[removed.size()]), changed.toArray(new IPluginModelBase[changed.size()]));
            this.fireExtensionDeltaEvent(event);
        } else {
            super.createAndFireEvent(eventId, type, added, removed, changed);
        }
    }

    protected void addExtensionChange(IPluginModelBase plugin, int type) {
        if (this.fChangedExtensions == null) {
            this.fChangedExtensions = new ArrayList();
        }
        WorkspaceModelManager.ModelChange change = new WorkspaceModelManager.ModelChange(plugin, type);
        this.fChangedExtensions.add(change);
    }
}

