/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jdt.core.ElementChangedEvent
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IElementChangedListener
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaElementDelta
 *  org.eclipse.jdt.core.IJavaModel
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragment
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Properties;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.ElementChangedEvent;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IElementChangedListener;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.WorkspaceModelManager;
import org.eclipse.pde.internal.core.project.PDEProject;

public class JavaElementChangeListener
implements IElementChangedListener {
    private static final String FILENAME = "clean-cache.properties";
    private Properties fTable = new Properties();

    public void start() {
        JavaCore.addElementChangedListener((IElementChangedListener)this, (int)1);
        this.load();
    }

    public void elementChanged(ElementChangedEvent event) {
        this.handleDelta(event.getDelta());
    }

    public void shutdown() {
        JavaCore.removeElementChangedListener((IElementChangedListener)this);
        this.save();
    }

    private void handleDelta(IJavaElementDelta delta) {
        IJavaElement element = delta.getElement();
        if (element instanceof IJavaModel) {
            this.handleChildDeltas(delta);
        } else if (element instanceof IJavaProject) {
            if (this.isInterestingProject((IJavaProject)element)) {
                if (delta.getKind() == 4) {
                    this.handleChildDeltas(delta);
                } else if (delta.getKind() == 1) {
                    this.updateTable(element);
                }
            }
        } else if (element instanceof IPackageFragmentRoot) {
            this.handleChildDeltas(delta);
        }
    }

    private void handleChildDeltas(IJavaElementDelta delta) {
        IJavaElementDelta[] deltas = delta.getAffectedChildren();
        int i = 0;
        while (i < deltas.length) {
            if (!this.ignoreDelta(deltas[i])) {
                if (this.isInterestingDelta(deltas[i])) {
                    this.updateTable(deltas[i].getElement());
                    break;
                }
                this.handleDelta(deltas[i]);
            }
            ++i;
        }
    }

    private boolean isInterestingDelta(IJavaElementDelta delta) {
        boolean interestingElement;
        int kind = delta.getKind();
        boolean interestingKind = kind == 1 || kind == 2;
        IJavaElement element = delta.getElement();
        boolean bl = interestingElement = element instanceof IPackageFragment || element instanceof IPackageFragmentRoot;
        if (interestingElement && interestingKind) {
            return true;
        }
        if (kind == 4 && element instanceof IPackageFragmentRoot) {
            IPackageFragmentRoot root = (IPackageFragmentRoot)element;
            return root.isArchive();
        }
        return false;
    }

    private boolean ignoreDelta(IJavaElementDelta delta) {
        try {
            IPackageFragmentRoot root;
            IClasspathEntry entry;
            IJavaElement element = delta.getElement();
            if (element instanceof IPackageFragmentRoot && (entry = (root = (IPackageFragmentRoot)element).getRawClasspathEntry()) != null && entry.getEntryKind() == 5) {
                return true;
            }
        }
        catch (JavaModelException javaModelException) {}
        return false;
    }

    private boolean isInterestingProject(IJavaProject jProject) {
        IProject project = jProject.getProject();
        return WorkspaceModelManager.isPluginProject(project) && !WorkspaceModelManager.isBinaryProject(project) && !PDEProject.getManifest(project).exists();
    }

    private void updateTable(IJavaElement element) {
        String id;
        IProject project;
        IPluginModelBase model;
        IJavaProject jProject = (IJavaProject)element.getAncestor(2);
        if (jProject != null && (model = PluginRegistry.findModel(project = jProject.getProject())) != null && (id = model.getPluginBase().getId()) != null) {
            this.fTable.put(id, Long.toString(System.currentTimeMillis()));
        }
    }

    private void save() {
        block15: {
            Enumeration keys = this.fTable.keys();
            while (keys.hasMoreElements()) {
                String id = keys.nextElement().toString();
                IPluginModelBase model = PluginRegistry.findModel(id);
                if (model != null && model.getUnderlyingResource() != null) continue;
                this.fTable.remove(id);
            }
            FileOutputStream stream = null;
            try {
                try {
                    stream = new FileOutputStream(new File(this.getDirectory(), FILENAME));
                    this.fTable.store(stream, "Cached timestamps");
                    stream.flush();
                }
                catch (IOException e) {
                    PDECore.logException(e);
                    try {
                        if (stream != null) {
                            stream.close();
                        }
                        break block15;
                    }
                    catch (IOException iOException) {}
                    break block15;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    private File getDirectory() {
        IPath path = PDECore.getDefault().getStateLocation().append(".cache");
        File directory = new File(path.toOSString());
        if (!directory.exists() || !directory.isDirectory()) {
            directory.mkdirs();
        }
        return directory;
    }

    private void load() {
        block15: {
            FileInputStream is = null;
            try {
                try {
                    File file = new File(this.getDirectory(), FILENAME);
                    if (file.exists() && file.isFile()) {
                        is = new FileInputStream(file);
                        this.fTable.load(is);
                    }
                }
                catch (IOException iOException) {
                    try {
                        if (is != null) {
                            is.close();
                        }
                        break block15;
                    }
                    catch (IOException iOException2) {}
                    break block15;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (is != null) {
                        is.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (is != null) {
                    is.close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    public void synchronizeManifests(File cacheDirectory) {
        Enumeration keys = this.fTable.keys();
        while (keys.hasMoreElements()) {
            File file;
            String id = keys.nextElement().toString();
            IPluginModelBase model = PluginRegistry.findModel(id);
            if (model == null || !(file = new File(cacheDirectory, String.valueOf(id) + "_" + model.getPluginBase().getVersion() + ".MF")).exists() || !file.isFile() || file.lastModified() >= Long.parseLong(this.fTable.get(id).toString())) continue;
            file.delete();
        }
    }
}

