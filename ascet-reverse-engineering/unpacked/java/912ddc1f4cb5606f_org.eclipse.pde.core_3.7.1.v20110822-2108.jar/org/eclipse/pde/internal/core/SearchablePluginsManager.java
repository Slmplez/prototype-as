/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ISaveContext
 *  org.eclipse.core.resources.ISaveParticipant
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.jdt.core.ElementChangedEvent
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IElementChangedListener
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaElementDelta
 *  org.eclipse.jdt.core.IJavaModel
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.TreeMap;
import java.util.TreeSet;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ISaveContext;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.jdt.core.ElementChangedEvent;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IElementChangedListener;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.ExternalJavaSearchClasspathContainer;
import org.eclipse.pde.internal.core.FileAdapter;
import org.eclipse.pde.internal.core.IFileAdapterFactory;
import org.eclipse.pde.internal.core.IPluginModelListener;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.PluginModelDelta;
import org.eclipse.pde.internal.core.util.CoreUtility;

public class SearchablePluginsManager
implements IFileAdapterFactory,
IPluginModelListener,
ISaveParticipant {
    private static final String PROXY_FILE_NAME = ".searchable";
    public static final String PROXY_PROJECT_NAME = "External Plug-in Libraries";
    private static final String KEY = "searchablePlugins";
    private Listener fElementListener;
    private Set fPluginIdSet;
    private ArrayList fListeners;

    public SearchablePluginsManager() {
        this.initializeStates();
        this.fElementListener = new Listener();
        JavaCore.addElementChangedListener((IElementChangedListener)this.fElementListener);
        PDECore.getDefault().getModelManager().addPluginModelListener(this);
    }

    private void initializeStates() {
        this.fPluginIdSet = new TreeSet();
        IWorkspaceRoot root = PDECore.getWorkspace().getRoot();
        IProject project = root.getProject(PROXY_PROJECT_NAME);
        try {
            IFile proxyFile;
            if (project.exists() && project.isOpen() && (proxyFile = project.getFile(PROXY_FILE_NAME)).exists()) {
                Properties properties = new Properties();
                InputStream stream = proxyFile.getContents(true);
                properties.load(stream);
                stream.close();
                String value = properties.getProperty(KEY);
                if (value != null) {
                    StringTokenizer stok = new StringTokenizer(value, ",");
                    while (stok.hasMoreTokens()) {
                        this.fPluginIdSet.add(stok.nextToken());
                    }
                }
            }
        }
        catch (IOException iOException) {
        }
        catch (CoreException coreException) {}
    }

    public IJavaProject getProxyProject() {
        IWorkspaceRoot root = PDECore.getWorkspace().getRoot();
        IProject project = root.getProject(PROXY_PROJECT_NAME);
        try {
            if (project.exists() && project.isOpen() && project.hasNature("org.eclipse.jdt.core.javanature")) {
                return JavaCore.create((IProject)project);
            }
        }
        catch (CoreException coreException) {}
        return null;
    }

    public void shutdown() {
        JavaCore.removeElementChangedListener((IElementChangedListener)this.fElementListener);
        PDECore.getDefault().getModelManager().removePluginModelListener(this);
        if (this.fListeners != null) {
            this.fListeners.clear();
        }
    }

    public IClasspathEntry[] computeContainerClasspathEntries() throws CoreException {
        ArrayList<IClasspathEntry> result = new ArrayList<IClasspathEntry>();
        IPluginModelBase[] wModels = PluginRegistry.getWorkspaceModels();
        int i = 0;
        while (i < wModels.length) {
            IProject project = wModels[i].getUnderlyingResource().getProject();
            if (project.hasNature("org.eclipse.jdt.core.javanature")) {
                result.add(JavaCore.newProjectEntry((IPath)project.getFullPath()));
            }
            ++i;
        }
        Iterator iter = this.fPluginIdSet.iterator();
        while (iter.hasNext()) {
            ModelEntry entry = PluginRegistry.findEntry(iter.next().toString());
            if (entry == null) continue;
            boolean addModel = true;
            wModels = entry.getWorkspaceModels();
            int i2 = 0;
            while (i2 < wModels.length) {
                IProject project = wModels[i2].getUnderlyingResource().getProject();
                if (project.hasNature("org.eclipse.jdt.core.javanature")) {
                    addModel = false;
                }
                ++i2;
            }
            if (!addModel) continue;
            IPluginModelBase[] models = entry.getExternalModels();
            int i3 = 0;
            while (i3 < models.length) {
                if (models[i3].isEnabled()) {
                    ClasspathUtilCore.addLibraries(models[i3], result);
                }
                ++i3;
            }
        }
        if (result.size() > 1) {
            TreeMap<String, IClasspathEntry> map = new TreeMap<String, IClasspathEntry>();
            int i4 = 0;
            while (i4 < result.size()) {
                IClasspathEntry entry = (IClasspathEntry)result.get(i4);
                String key = entry.getPath().lastSegment().toString();
                if (map.containsKey(key)) {
                    key = String.valueOf(key) + System.currentTimeMillis();
                }
                map.put(key, entry);
                ++i4;
            }
            return map.values().toArray(new IClasspathEntry[map.size()]);
        }
        return result.toArray(new IClasspathEntry[result.size()]);
    }

    public Object createAdapterChild(FileAdapter parent, File file) {
        IPackageFragmentRoot root;
        String name;
        if (!file.isDirectory() && (name = file.getName().toLowerCase(Locale.ENGLISH)).endsWith(".jar") && (root = this.findPackageFragmentRoot((IPath)new Path(file.getAbsolutePath()))) != null) {
            return root;
        }
        return new FileAdapter(parent, file, this);
    }

    private IPackageFragmentRoot findPackageFragmentRoot(IPath jarPath) {
        int i;
        IJavaProject jProject = this.getProxyProject();
        if (jProject != null) {
            try {
                IPackageFragmentRoot[] roots = jProject.getAllPackageFragmentRoots();
                i = 0;
                while (i < roots.length) {
                    IPackageFragmentRoot root = roots[i];
                    IPath path = root.getPath();
                    if (path.equals((Object)jarPath)) {
                        return root;
                    }
                    ++i;
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        IPluginModelBase[] pluginModels = PluginRegistry.getWorkspaceModels();
        i = 0;
        while (i < pluginModels.length) {
            IProject project = pluginModels[i].getUnderlyingResource().getProject();
            IJavaProject javaProject = JavaCore.create((IProject)project);
            try {
                IPackageFragmentRoot[] roots = javaProject.getAllPackageFragmentRoots();
                int j = 0;
                while (j < roots.length) {
                    IPackageFragmentRoot root = roots[j];
                    IPath path = root.getPath();
                    if (path.equals((Object)jarPath)) {
                        return root;
                    }
                    ++j;
                }
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        return null;
    }

    private void checkForProxyProject() {
        IWorkspaceRoot root = PDECore.getWorkspace().getRoot();
        try {
            IProject project = root.getProject(PROXY_PROJECT_NAME);
            if (!project.exists()) {
                this.createProxyProject((IProgressMonitor)new NullProgressMonitor());
            }
        }
        catch (CoreException coreException) {}
    }

    public void addToJavaSearch(IPluginModelBase[] models) {
        this.checkForProxyProject();
        PluginModelDelta delta = new PluginModelDelta();
        int size = this.fPluginIdSet.size();
        int i = 0;
        while (i < models.length) {
            ModelEntry entry;
            String id = models[i].getPluginBase().getId();
            if (this.fPluginIdSet.add(id) && (entry = PluginRegistry.findEntry(id)) != null) {
                delta.addEntry(entry, 4);
            }
            ++i;
        }
        if (this.fPluginIdSet.size() > size) {
            this.resetContainer();
            this.fireDelta(delta);
        }
    }

    public void removeFromJavaSearch(IPluginModelBase[] models) {
        PluginModelDelta delta = new PluginModelDelta();
        int size = this.fPluginIdSet.size();
        int i = 0;
        while (i < models.length) {
            ModelEntry entry;
            String id = models[i].getPluginBase().getId();
            if (this.fPluginIdSet.remove(id) && (entry = PluginRegistry.findEntry(id)) != null) {
                delta.addEntry(entry, 4);
            }
            ++i;
        }
        if (this.fPluginIdSet.size() < size) {
            this.resetContainer();
            this.fireDelta(delta);
        }
    }

    public void removeAllFromJavaSearch() {
        if (this.fPluginIdSet.size() > 0) {
            PluginModelDelta delta = new PluginModelDelta();
            Iterator iterator = this.fPluginIdSet.iterator();
            while (iterator.hasNext()) {
                String id = (String)iterator.next();
                ModelEntry entry = PluginRegistry.findEntry(id);
                if (entry == null) continue;
                delta.addEntry(entry, 4);
            }
            this.fPluginIdSet.clear();
            this.resetContainer();
            this.fireDelta(delta);
        }
    }

    public boolean isInJavaSearch(String symbolicName) {
        return this.fPluginIdSet.contains(symbolicName);
    }

    private void resetContainer() {
        IJavaProject jProject = this.getProxyProject();
        try {
            if (jProject != null) {
                JavaCore.setClasspathContainer((IPath)PDECore.JAVA_SEARCH_CONTAINER_PATH, (IJavaProject[])new IJavaProject[]{jProject}, (IClasspathContainer[])new IClasspathContainer[]{new ExternalJavaSearchClasspathContainer()}, null);
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    public void modelsChanged(PluginModelDelta delta) {
        ModelEntry[] entries = delta.getRemovedEntries();
        int i = 0;
        while (i < entries.length) {
            if (this.fPluginIdSet.contains(entries[i].getId())) {
                this.fPluginIdSet.remove(entries[i].getId());
            }
            ++i;
        }
        this.resetContainer();
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

    public void addPluginModelListener(IPluginModelListener listener) {
        if (this.fListeners == null) {
            this.fListeners = new ArrayList();
        }
        if (!this.fListeners.contains(listener)) {
            this.fListeners.add(listener);
        }
    }

    public void removePluginModelListener(IPluginModelListener listener) {
        if (this.fListeners != null) {
            this.fListeners.remove(listener);
        }
    }

    public void doneSaving(ISaveContext context) {
    }

    public void prepareToSave(ISaveContext context) {
    }

    public void rollback(ISaveContext context) {
    }

    public void saving(ISaveContext context) throws CoreException {
        if (context.getKind() != 1) {
            return;
        }
        IWorkspaceRoot root = PDECore.getWorkspace().getRoot();
        IProject project = root.getProject(PROXY_PROJECT_NAME);
        if (project.exists() && project.isOpen()) {
            IFile file = project.getFile(PROXY_FILE_NAME);
            Properties properties = new Properties();
            StringBuffer buffer = new StringBuffer();
            Iterator iter = this.fPluginIdSet.iterator();
            while (iter.hasNext()) {
                if (buffer.length() > 0) {
                    buffer.append(",");
                }
                buffer.append(iter.next().toString());
            }
            properties.setProperty(KEY, buffer.toString());
            try {
                ByteArrayOutputStream outStream = new ByteArrayOutputStream();
                properties.store(outStream, "");
                outStream.flush();
                outStream.close();
                ByteArrayInputStream inStream = new ByteArrayInputStream(outStream.toByteArray());
                if (file.exists()) {
                    file.setContents((InputStream)inStream, true, false, (IProgressMonitor)new NullProgressMonitor());
                } else {
                    file.create((InputStream)inStream, true, (IProgressMonitor)new NullProgressMonitor());
                }
                inStream.close();
            }
            catch (IOException e) {
                PDECore.log(e);
            }
        }
    }

    public IProject createProxyProject(IProgressMonitor monitor) throws CoreException {
        IWorkspaceRoot root = PDECore.getWorkspace().getRoot();
        IProject project = root.getProject(PROXY_PROJECT_NAME);
        if (project.exists()) {
            if (!project.isOpen()) {
                project.open(monitor);
            }
            return project;
        }
        monitor.beginTask(NLS.bind((String)PDECoreMessages.SearchablePluginsManager_createProjectTaskName, (Object)PROXY_PROJECT_NAME), 5);
        project.create((IProgressMonitor)new SubProgressMonitor(monitor, 1));
        project.open((IProgressMonitor)new SubProgressMonitor(monitor, 1));
        CoreUtility.addNatureToProject(project, "org.eclipse.jdt.core.javanature", (IProgressMonitor)new SubProgressMonitor(monitor, 1));
        IJavaProject jProject = JavaCore.create((IProject)project);
        jProject.setOutputLocation(project.getFullPath(), (IProgressMonitor)new SubProgressMonitor(monitor, 1));
        this.computeClasspath(jProject, (IProgressMonitor)new SubProgressMonitor(monitor, 1));
        return project;
    }

    private void computeClasspath(IJavaProject project, IProgressMonitor monitor) {
        IClasspathEntry[] classpath = new IClasspathEntry[]{JavaCore.newContainerEntry((IPath)JavaRuntime.newDefaultJREContainerPath()), JavaCore.newContainerEntry((IPath)PDECore.JAVA_SEARCH_CONTAINER_PATH)};
        try {
            project.setRawClasspath(classpath, monitor);
        }
        catch (JavaModelException javaModelException) {}
    }

    class Listener
    implements IElementChangedListener {
        Listener() {
        }

        public void elementChanged(ElementChangedEvent e) {
            if (e.getType() == 1) {
                this.handleDelta(e.getDelta());
            }
        }

        private boolean handleDelta(IJavaElementDelta delta) {
            IJavaElement element = delta.getElement();
            if (element instanceof IJavaModel) {
                IJavaElementDelta[] projectDeltas = delta.getAffectedChildren();
                int i = 0;
                while (i < projectDeltas.length) {
                    if (this.handleDelta(projectDeltas[i])) break;
                    ++i;
                }
                return true;
            }
            if (delta.getElement() instanceof IJavaProject) {
                IJavaProject project = (IJavaProject)delta.getElement();
                if (project.getElementName().equals(SearchablePluginsManager.PROXY_PROJECT_NAME)) {
                    if (delta.getKind() == 2) {
                        SearchablePluginsManager.this.fPluginIdSet.clear();
                    } else if (delta.getKind() == 1 && (SearchablePluginsManager.this.fPluginIdSet == null || SearchablePluginsManager.this.fPluginIdSet.size() == 0)) {
                        SearchablePluginsManager.this.initializeStates();
                    }
                }
                return true;
            }
            return false;
        }
    }
}

