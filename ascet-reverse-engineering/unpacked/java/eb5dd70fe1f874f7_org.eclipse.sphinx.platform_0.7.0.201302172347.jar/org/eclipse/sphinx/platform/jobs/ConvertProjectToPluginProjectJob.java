/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.WorkspaceJob
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.pde.core.build.IBuild
 *  org.eclipse.pde.core.build.IBuildEntry
 *  org.eclipse.pde.core.plugin.IPluginBase
 *  org.eclipse.pde.core.plugin.IPluginLibrary
 *  org.eclipse.pde.core.plugin.IPluginModelFactory
 *  org.eclipse.pde.internal.core.ClasspathComputer
 *  org.eclipse.pde.internal.core.TargetPlatformHelper
 *  org.eclipse.pde.internal.core.build.WorkspaceBuildModel
 *  org.eclipse.pde.internal.core.bundle.WorkspaceBundlePluginModel
 *  org.eclipse.pde.internal.core.ibundle.IBundle
 *  org.eclipse.pde.internal.core.project.PDEProject
 *  org.eclipse.pde.internal.core.util.CoreUtility
 *  org.eclipse.pde.internal.core.util.IdUtil
 */
package org.eclipse.sphinx.platform.jobs;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelFactory;
import org.eclipse.pde.internal.core.ClasspathComputer;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundlePluginModel;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.eclipse.pde.internal.core.util.IdUtil;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.internal.messages.Messages;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

public class ConvertProjectToPluginProjectJob
extends WorkspaceJob {
    private IProject[] projectsToConvert;
    private String fLibraryName;
    private String[] fSrcEntries;
    private String[] fLibEntries;

    public ConvertProjectToPluginProjectJob(IProject[] theProjectsToConvert) {
        super(Messages.job_convertProjectToPlugin);
        this.projectsToConvert = theProjectsToConvert;
    }

    protected void execute(IProgressMonitor monitor) throws CoreException, InvocationTargetException, InterruptedException {
        try {
            try {
                monitor.beginTask(Messages.converting, this.projectsToConvert.length);
                IProject[] iProjectArray = this.projectsToConvert;
                int n = this.projectsToConvert.length;
                int n2 = 0;
                while (n2 < n) {
                    IProject projectToConvert = iProjectArray[n2];
                    this.convertProject(projectToConvert, monitor);
                    monitor.worked(1);
                    ++n2;
                }
            }
            catch (CoreException e) {
                PlatformLogUtil.logAsError(Activator.getDefault(), (Object)e);
                monitor.done();
            }
        }
        finally {
            monitor.done();
        }
    }

    private void convertProject(IProject projectToConvert, IProgressMonitor monitor) throws CoreException {
        if (projectToConvert == null || !projectToConvert.exists()) {
            return;
        }
        if (projectToConvert.hasNature("org.eclipse.pde.PluginNature")) {
            return;
        }
        CoreUtility.addNatureToProject((IProject)projectToConvert, (String)"org.eclipse.pde.PluginNature", (IProgressMonitor)monitor);
        this.loadClasspathEntries(projectToConvert, monitor);
        this.loadLibraryName(projectToConvert);
        this.createManifestFile(PDEProject.getManifest((IProject)projectToConvert), monitor);
        IFile buildFile = PDEProject.getBuildProperties((IProject)projectToConvert);
        if (!buildFile.exists()) {
            WorkspaceBuildModel model = new WorkspaceBuildModel(buildFile);
            IBuild build = model.getBuild(true);
            IBuildEntry entry = model.getFactory().createEntry("bin.includes");
            if (PDEProject.getPluginXml((IProject)projectToConvert).exists()) {
                entry.addToken("plugin.xml");
            }
            if (PDEProject.getManifest((IProject)projectToConvert).exists()) {
                entry.addToken("META-INF/");
            }
            String[] stringArray = this.fLibEntries;
            int n = this.fLibEntries.length;
            int n2 = 0;
            while (n2 < n) {
                String fLibEntrie = stringArray[n2];
                entry.addToken(fLibEntrie);
                ++n2;
            }
            if (this.fSrcEntries.length > 0) {
                entry.addToken(this.fLibraryName);
                IBuildEntry source = model.getFactory().createEntry("source." + this.fLibraryName);
                String[] stringArray2 = this.fSrcEntries;
                int n3 = this.fSrcEntries.length;
                n = 0;
                while (n < n3) {
                    String fSrcEntrie = stringArray2[n];
                    source.addToken(fSrcEntrie);
                    ++n;
                }
                build.add(source);
            }
            if (entry.getTokens().length > 0) {
                build.add(entry);
            }
            model.save();
        }
    }

    private void loadClasspathEntries(IProject project, IProgressMonitor monitor) {
        IJavaProject javaProject = JavaCore.create((IProject)project);
        IClasspathEntry[] currentClassPath = new IClasspathEntry[]{};
        ArrayList<String> sources = new ArrayList<String>();
        ArrayList<String> libraries = new ArrayList<String>();
        try {
            currentClassPath = javaProject.getRawClasspath();
        }
        catch (JavaModelException javaModelException) {}
        IClasspathEntry[] iClasspathEntryArray = currentClassPath;
        int n = currentClassPath.length;
        int n2 = 0;
        while (n2 < n) {
            IClasspathEntry element = iClasspathEntryArray[n2];
            int contentType = element.getEntryKind();
            if (contentType == 3) {
                String relativePath = this.getRelativePath(element, project);
                if (relativePath.equals("")) {
                    sources.add(".");
                } else {
                    sources.add(String.valueOf(relativePath) + "/");
                }
            } else if (contentType == 1) {
                String path = this.getRelativePath(element, project);
                if (path.length() > 0) {
                    libraries.add(path);
                } else {
                    libraries.add(".");
                }
            }
            ++n2;
        }
        this.fSrcEntries = sources.toArray(new String[sources.size()]);
        this.fLibEntries = libraries.toArray(new String[libraries.size()]);
        IClasspathEntry[] classPath = new IClasspathEntry[currentClassPath.length + 1];
        System.arraycopy(currentClassPath, 0, classPath, 0, currentClassPath.length);
        classPath[classPath.length - 1] = ClasspathComputer.createContainerEntry();
        try {
            javaProject.setRawClasspath(classPath, monitor);
        }
        catch (JavaModelException javaModelException) {}
    }

    private String getRelativePath(IClasspathEntry cpe, IProject project) {
        IPath path = project.getFile(cpe.getPath()).getProjectRelativePath();
        return path.removeFirstSegments(1).toString();
    }

    private void loadLibraryName(IProject project) {
        if (this.isOldTarget() || this.fLibEntries.length > 0 && this.fSrcEntries.length > 0) {
            String libName = project.getName();
            int i = libName.lastIndexOf(".");
            if (i != -1) {
                libName = libName.substring(i + 1);
            }
            this.fLibraryName = String.valueOf(libName) + ".jar";
        } else {
            this.fLibraryName = ".";
        }
    }

    private String createInitialName(String id) {
        int loc = id.lastIndexOf(46);
        if (loc == -1) {
            return id;
        }
        StringBuffer buf = new StringBuffer(id.substring(loc + 1));
        buf.setCharAt(0, Character.toUpperCase(buf.charAt(0)));
        return buf.toString();
    }

    private void createManifestFile(IFile file, IProgressMonitor monitor) throws CoreException {
        boolean missingInfo;
        WorkspaceBundlePluginModel model = new WorkspaceBundlePluginModel(file, null);
        model.load();
        IBundle pluginBundle = model.getBundleModel().getBundle();
        String pluginId = pluginBundle.getHeader("Bundle-SymbolicName");
        String pluginName = pluginBundle.getHeader("Bundle-Name");
        String pluginVersion = pluginBundle.getHeader("Bundle-Version");
        boolean bl = missingInfo = pluginId == null || pluginName == null || pluginVersion == null;
        if (pluginId == null) {
            pluginId = IdUtil.getValidId((String)file.getProject().getName());
        }
        if (pluginVersion == null) {
            pluginVersion = "1.0.0.qualifier";
        }
        if (pluginName == null) {
            pluginName = this.createInitialName(pluginId);
        }
        pluginBundle.setHeader("Bundle-SymbolicName", pluginId);
        pluginBundle.setHeader("Bundle-Version", pluginVersion);
        pluginBundle.setHeader("Bundle-Name", pluginName);
        if (missingInfo) {
            IPluginModelFactory factory = model.getPluginFactory();
            IPluginBase base = model.getPluginBase();
            if (this.fLibraryName != null && !this.fLibraryName.equals(".")) {
                IPluginLibrary library = factory.createLibrary();
                library.setName(this.fLibraryName);
                library.setExported(true);
                base.add(library);
            }
            String[] stringArray = this.fLibEntries;
            int n = this.fLibEntries.length;
            int n2 = 0;
            while (n2 < n) {
                String fLibEntrie = stringArray[n2];
                IPluginLibrary library = factory.createLibrary();
                library.setName(fLibEntrie);
                library.setExported(true);
                base.add(library);
                ++n2;
            }
            if (TargetPlatformHelper.getTargetVersion() >= 3.1) {
                pluginBundle.setHeader("Bundle-ManifestVersion", "2");
            }
        }
        model.save();
        monitor.done();
    }

    private boolean isOldTarget() {
        return TargetPlatformHelper.getTargetVersion() < 3.1;
    }

    public IStatus runInWorkspace(IProgressMonitor monitor) throws CoreException {
        try {
            try {
                monitor.beginTask(Messages.converting, this.projectsToConvert.length);
                IProject[] iProjectArray = this.projectsToConvert;
                int n = this.projectsToConvert.length;
                int n2 = 0;
                while (n2 < n) {
                    IProject projectToConvert = iProjectArray[n2];
                    this.convertProject(projectToConvert, monitor);
                    monitor.worked(1);
                    ++n2;
                }
            }
            catch (CoreException e) {
                PlatformLogUtil.logAsError(Activator.getDefault(), (Object)e);
                monitor.done();
            }
        }
        finally {
            monitor.done();
        }
        return Status.OK_STATUS;
    }
}

