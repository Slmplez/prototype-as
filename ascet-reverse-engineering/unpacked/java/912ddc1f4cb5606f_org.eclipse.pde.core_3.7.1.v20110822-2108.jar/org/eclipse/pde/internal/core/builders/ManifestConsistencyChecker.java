/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.IncrementalProjectBuilder
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IncrementalProjectBuilder;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.WorkspaceModelManager;
import org.eclipse.pde.internal.core.builders.BuildErrorReporter;
import org.eclipse.pde.internal.core.builders.BundleErrorReporter;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.DefaultSAXParser;
import org.eclipse.pde.internal.core.builders.ExtensionsErrorReporter;
import org.eclipse.pde.internal.core.builders.FragmentErrorReporter;
import org.eclipse.pde.internal.core.builders.PluginErrorReporter;
import org.eclipse.pde.internal.core.builders.XMLErrorReporter;
import org.eclipse.pde.internal.core.project.PDEProject;

public class ManifestConsistencyChecker
extends IncrementalProjectBuilder {
    private int MANIFEST = 1;
    private int EXTENSIONS = 2;
    private int BUILD = 4;
    private int STRUCTURE = 8;
    private static boolean DEBUG = false;
    private static IProject[] EMPTY_LIST = new IProject[0];
    private SelfVisitor fSelfVisitor = new SelfVisitor();
    private ClassChangeVisitor fClassFileVisitor = new ClassChangeVisitor();

    static {
        DEBUG = PDECore.getDefault().isDebugging() && "true".equals(Platform.getDebugOption((String)"org.eclipse.pde.core/validation"));
    }

    private boolean isLocalizationFile(IResource file) {
        return file.equals((Object)PDEProject.getLocalizationFile(this.getProject()));
    }

    protected IProject[] build(int kind, Map args, IProgressMonitor monitor) throws CoreException {
        int type;
        if (PDECore.getDefault().getBundle().getState() != 32 || monitor.isCanceled()) {
            return EMPTY_LIST;
        }
        IProject project = this.getProject();
        if (!WorkspaceModelManager.isBinaryProject(project) && (type = this.getDeltaType(project)) != 0) {
            this.validateProject(type, monitor);
        }
        return EMPTY_LIST;
    }

    private int getDeltaType(IProject project) throws CoreException {
        IResourceDelta delta = this.getDelta(project);
        if (delta == null) {
            if (DEBUG) {
                System.out.println("Project [" + this.getProject().getName() + "] - full build");
            }
            return this.MANIFEST | this.EXTENSIONS | this.BUILD | this.STRUCTURE;
        }
        if (Boolean.TRUE.equals(project.getSessionProperty(PDECore.TOUCH_PROJECT))) {
            project.setSessionProperty(PDECore.TOUCH_PROJECT, null);
            if (DEBUG) {
                System.out.println("Dependencies Changed: Project [" + this.getProject().getName() + "] - full build");
            }
            return this.MANIFEST | this.EXTENSIONS | this.BUILD;
        }
        this.fSelfVisitor.reset();
        delta.accept((IResourceDeltaVisitor)this.fSelfVisitor);
        int type = this.fSelfVisitor.getType();
        if ((type & this.MANIFEST | this.EXTENSIONS) != (this.MANIFEST | this.EXTENSIONS)) {
            this.fClassFileVisitor.reset();
            delta.accept((IResourceDeltaVisitor)this.fClassFileVisitor);
            if (this.fClassFileVisitor.hasChanged()) {
                type |= this.MANIFEST | this.EXTENSIONS | this.BUILD;
                if (DEBUG) {
                    System.out.println("Class files changed due to dependency changes: Project [" + this.getProject().getName() + "] - rebuild manifest and properties files");
                }
            }
        }
        return type;
    }

    private void validateProject(int type, IProgressMonitor monitor) {
        monitor.beginTask(PDECoreMessages.ManifestConsistencyChecker_builderTaskName, this.getWorkAmount(type));
        if ((type & this.STRUCTURE) != 0) {
            this.validateProjectStructure(type, (IProgressMonitor)new SubProgressMonitor(monitor, 1));
        }
        if ((type & this.MANIFEST | this.EXTENSIONS) != 0) {
            IFile manifestFile;
            IProject project = this.getProject();
            IFile file = PDEProject.getPluginXml(project);
            if (!file.exists()) {
                file = PDEProject.getFragmentXml(project);
            }
            if (file.exists()) {
                this.validateFiles(file, type, monitor);
            } else if ((type & this.MANIFEST) != 0 && (manifestFile = PDEProject.getManifest(project)).exists()) {
                this.validateManifestFile(manifestFile, (IProgressMonitor)new SubProgressMonitor(monitor, 1));
            }
        }
        if ((type & this.BUILD) != 0) {
            this.validateBuildProperties((IProgressMonitor)new SubProgressMonitor(monitor, 1));
        }
    }

    private int getWorkAmount(int type) {
        int work = 1;
        if ((type & this.MANIFEST | this.EXTENSIONS) != 0) {
            ++work;
        }
        if ((type & this.BUILD) != 0) {
            ++work;
        }
        return work;
    }

    private void validateProjectStructure(int type, IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return;
        }
        IProject project = this.getProject();
        try {
            project.deleteMarkers("org.eclipse.pde.core.problem", false, 0);
        }
        catch (CoreException coreException) {}
        this.validateBuildPropertiesExists(project);
        this.validateManifestCasing(project);
    }

    private void validateManifestFile(IFile file, IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return;
        }
        String message = NLS.bind((String)PDECoreMessages.Builders_verifying, (Object)file.getFullPath().toString());
        monitor.subTask(message);
        BundleErrorReporter reporter = new BundleErrorReporter(file);
        if (reporter != null) {
            reporter.validateContent(monitor);
            monitor.subTask(PDECoreMessages.Builders_updating);
        }
        monitor.done();
    }

    private void validateFiles(IFile file, int type, IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return;
        }
        String message = NLS.bind((String)PDECoreMessages.Builders_verifying, (Object)file.getFullPath().toString());
        monitor.subTask(message);
        IFile bundleManifest = PDEProject.getManifest(this.getProject());
        ExtensionsErrorReporter reporter = null;
        BundleErrorReporter bundleReporter = null;
        if (bundleManifest.exists()) {
            if ((type & this.EXTENSIONS) != 0) {
                reporter = new ExtensionsErrorReporter(file);
            }
            if ((type & this.MANIFEST) != 0) {
                bundleReporter = new BundleErrorReporter(bundleManifest);
            }
        } else if ((type & this.MANIFEST) != 0 || (type & this.EXTENSIONS) != 0) {
            if (file.equals((Object)PDEProject.getPluginXml(this.getProject()))) {
                reporter = new PluginErrorReporter(file);
            } else if (file.equals((Object)PDEProject.getFragmentXml(this.getProject()))) {
                reporter = new FragmentErrorReporter(file);
            }
        }
        if (reporter != null) {
            DefaultSAXParser.parse(file, reporter);
            ((XMLErrorReporter)reporter).validateContent(monitor);
            monitor.subTask(PDECoreMessages.Builders_updating);
        }
        if (bundleReporter != null) {
            bundleReporter.validateContent(monitor);
            monitor.subTask(PDECoreMessages.Builders_updating);
        }
        monitor.done();
    }

    private void validateBuildProperties(IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return;
        }
        IProject project = this.getProject();
        IFile file = PDEProject.getBuildProperties(project);
        if (file.exists()) {
            monitor.subTask(PDECoreMessages.ManifestConsistencyChecker_buildPropertiesSubtask);
            BuildErrorReporter ber = new BuildErrorReporter(file);
            ber.validateContent(monitor);
        }
    }

    private void validateBuildPropertiesExists(IProject project) {
        IFile file = PDEProject.getBuildProperties(project);
        if (!file.exists()) {
            int severity = CompilerFlags.getFlag(project, "compilers.p.build");
            if (severity == 2) {
                return;
            }
            try {
                IMarker marker = project.createMarker("org.eclipse.pde.core.problem");
                marker.setAttribute("severity", severity == 0 ? 2 : 1);
                marker.setAttribute("message", (Object)PDECoreMessages.ManifestConsistencyChecker_buildDoesNotExist);
            }
            catch (CoreException coreException) {}
        }
    }

    private void validateManifestCasing(IProject project) {
        IFolder manifestFolder = PDEProject.getMetaInf(project);
        if (manifestFolder.exists()) {
            try {
                manifestFolder.deleteMarkers("org.eclipse.pde.core.problem", false, 1);
            }
            catch (CoreException coreException) {}
            if (PDEProject.getManifest(project).exists()) {
                return;
            }
            IPath location = manifestFolder.getLocation();
            if (location != null) {
                File metaFolder = location.toFile();
                String[] fileList = metaFolder.list(new ManifestFilter());
                int i = 0;
                while (i < fileList.length) {
                    String fileName = fileList[i];
                    IFile currentFile = manifestFolder.getFile(fileName);
                    try {
                        IMarker marker = currentFile.createMarker("org.eclipse.pde.core.problem");
                        marker.setAttribute("severity", 2);
                        marker.setAttribute("message", (Object)PDECoreMessages.ManifestConsistencyChecker_manifestMisspelled);
                    }
                    catch (CoreException coreException) {}
                    ++i;
                }
                if (fileList.length == 0) {
                    try {
                        IMarker marker = project.createMarker("org.eclipse.pde.core.problem");
                        marker.setAttribute("severity", 2);
                        marker.setAttribute("message", (Object)PDECoreMessages.ManifestConsistencyChecker_manifestDoesNotExist);
                    }
                    catch (CoreException coreException) {}
                }
            }
        }
    }

    protected void clean(IProgressMonitor monitor) throws CoreException {
        SubMonitor localmonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)NLS.bind((String)PDECoreMessages.ManifestConsistencyChecker_0, (Object)this.getProject().getName()), (int)1);
        try {
            this.cleanProblems((IResource)this.getProject(), 0);
            IFile manifestFile = PDEProject.getManifest(this.getProject());
            this.cleanProblems((IResource)manifestFile.getParent(), 1);
            this.cleanProblems((IResource)PDEProject.getPluginXml(this.getProject()), 0);
            this.cleanProblems((IResource)PDEProject.getFragmentXml(this.getProject()), 0);
            this.cleanProblems((IResource)PDEProject.getBuildProperties(this.getProject()), 0);
            localmonitor.worked(1);
        }
        finally {
            localmonitor.done();
        }
    }

    private void cleanProblems(IResource resource, int depth) throws CoreException {
        if (resource.exists()) {
            resource.deleteMarkers("org.eclipse.pde.core.problem", true, depth);
        }
    }

    class ClassChangeVisitor
    implements IResourceDeltaVisitor {
        boolean hasChanged = false;
        boolean veto = false;

        ClassChangeVisitor() {
        }

        public boolean visit(IResourceDelta delta) throws CoreException {
            int kind;
            if (delta != null && !this.veto && (kind = delta.getKind()) == 4) {
                IResource resource = delta.getResource();
                if (resource instanceof IFile) {
                    String extension = resource.getFileExtension();
                    if ("java".equals(extension)) {
                        this.veto = true;
                    } else if ("class".equals(extension) && !this.hasChanged) {
                        this.hasChanged = true;
                    }
                }
                return !this.veto;
            }
            return false;
        }

        public void reset() {
            this.veto = false;
            this.hasChanged = false;
        }

        public boolean hasChanged() {
            return this.hasChanged && !this.veto;
        }
    }

    class ManifestFilter
    implements FilenameFilter {
        ManifestFilter() {
        }

        public boolean accept(File dir, String name) {
            return name.equalsIgnoreCase("MANIFEST.MF");
        }
    }

    class SelfVisitor
    implements IResourceDeltaVisitor {
        int type = 0;

        SelfVisitor() {
        }

        public boolean visit(IResourceDelta delta) throws CoreException {
            if (delta != null && this.type != (ManifestConsistencyChecker.this.MANIFEST | ManifestConsistencyChecker.this.EXTENSIONS | ManifestConsistencyChecker.this.BUILD | ManifestConsistencyChecker.this.STRUCTURE)) {
                int kind = delta.getKind();
                if (kind == 1 || kind == 2) {
                    this.type = ManifestConsistencyChecker.this.MANIFEST | ManifestConsistencyChecker.this.EXTENSIONS | ManifestConsistencyChecker.this.BUILD | ManifestConsistencyChecker.this.STRUCTURE;
                    if (DEBUG) {
                        System.out.print("Needs to rebuild project [" + ManifestConsistencyChecker.this.getProject().getName() + "]: ");
                        System.out.print(delta.getResource().getProjectRelativePath().toString());
                        System.out.print(" - ");
                        System.out.println(kind == 1 ? "added" : "removed");
                    }
                    return false;
                }
                IResource resource = delta.getResource();
                if (resource.isDerived()) {
                    return false;
                }
                if (resource.getType() == 1) {
                    IFile file = (IFile)resource;
                    IProject project = file.getProject();
                    String name = resource.getName();
                    if (ManifestConsistencyChecker.this.isLocalizationFile(resource)) {
                        this.type |= ManifestConsistencyChecker.this.MANIFEST | ManifestConsistencyChecker.this.EXTENSIONS;
                        if (DEBUG) {
                            System.out.print("Needs to rebuild manifest and extensions in project [" + ManifestConsistencyChecker.this.getProject().getName() + "]: ");
                            System.out.print(delta.getResource().getProjectRelativePath().toString());
                            System.out.println(" - changed");
                        }
                    } else if (file.equals((Object)PDEProject.getManifest(project))) {
                        this.type |= ManifestConsistencyChecker.this.MANIFEST | ManifestConsistencyChecker.this.EXTENSIONS | ManifestConsistencyChecker.this.BUILD;
                        if (DEBUG) {
                            System.out.print("Needs to rebuild project [" + ManifestConsistencyChecker.this.getProject().getName() + "]: ");
                            System.out.print(delta.getResource().getProjectRelativePath().toString());
                            System.out.println(" - changed");
                        }
                    } else if (name.endsWith(".exsd") || file.equals((Object)PDEProject.getPluginXml(project)) || file.equals((Object)PDEProject.getFragmentXml(project))) {
                        this.type |= ManifestConsistencyChecker.this.EXTENSIONS;
                        if (DEBUG) {
                            System.out.print("Needs to rebuild extensions in project [" + ManifestConsistencyChecker.this.getProject().getName() + "]: ");
                            System.out.print(delta.getResource().getProjectRelativePath().toString());
                            System.out.println(" - changed");
                        }
                    } else if (file.equals((Object)PDEProject.getBuildProperties(project))) {
                        this.type |= ManifestConsistencyChecker.this.BUILD;
                        if (DEBUG) {
                            System.out.print("Needs to rebuild build.properties in project [" + ManifestConsistencyChecker.this.getProject().getName() + "]: ");
                            System.out.print(delta.getResource().getProjectRelativePath().toString());
                            System.out.println(" - changed");
                        }
                    }
                }
            }
            return this.type != (ManifestConsistencyChecker.this.MANIFEST | ManifestConsistencyChecker.this.EXTENSIONS | ManifestConsistencyChecker.this.BUILD | ManifestConsistencyChecker.this.STRUCTURE);
        }

        public int getType() {
            return this.type;
        }

        public void reset() {
            this.type = 0;
        }
    }
}

