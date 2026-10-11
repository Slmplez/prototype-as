/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IncrementalProjectBuilder
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IncrementalProjectBuilder;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.WorkspaceModelManager;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.DefaultSAXParser;
import org.eclipse.pde.internal.core.builders.SchemaErrorReporter;
import org.eclipse.pde.internal.core.builders.SchemaTransformer;
import org.eclipse.pde.internal.core.natures.PDE;
import org.eclipse.pde.internal.core.schema.Schema;
import org.eclipse.pde.internal.core.schema.SchemaDescriptor;

public class ExtensionPointSchemaBuilder
extends IncrementalProjectBuilder {
    protected IProject[] build(int kind, Map args, IProgressMonitor monitor) throws CoreException {
        IResourceDelta delta = null;
        if (kind != 6) {
            delta = this.getDelta(this.getProject());
        }
        if (delta == null || kind == 6) {
            if (this.isInterestingProject(this.getProject())) {
                this.compileSchemasIn((IContainer)this.getProject(), monitor);
            }
        } else {
            delta.accept((IResourceDeltaVisitor)new DeltaVisitor(monitor));
        }
        return new IProject[0];
    }

    protected void clean(IProgressMonitor monitor) throws CoreException {
        SubMonitor localmonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)NLS.bind((String)PDECoreMessages.ExtensionPointSchemaBuilder_0, (Object)this.getProject().getName()), (int)1);
        try {
            this.cleanSchemasIn((IContainer)this.getProject(), (IProgressMonitor)localmonitor);
            localmonitor.worked(1);
        }
        finally {
            localmonitor.done();
        }
    }

    private void cleanSchemasIn(IContainer container, IProgressMonitor monitor) throws CoreException {
        if (monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        IResource[] members = container.members();
        int i = 0;
        while (i < members.length) {
            IResource member = members[i];
            if (member instanceof IContainer) {
                this.cleanSchemasIn((IContainer)member, monitor);
            } else if (member instanceof IFile && this.isSchemaFile((IFile)member)) {
                member.deleteMarkers("org.eclipse.pde.core.problem", true, 0);
            }
            ++i;
        }
    }

    private boolean isInterestingProject(IProject project) {
        return PDE.hasPluginNature(project) && !WorkspaceModelManager.isBinaryProject(project);
    }

    private void compileFile(IFile file, IProgressMonitor monitor) {
        block17: {
            String message = NLS.bind((String)PDECoreMessages.Builders_Schema_compiling, (Object)file.getFullPath().toString());
            monitor.subTask(message);
            SchemaErrorReporter reporter = new SchemaErrorReporter(file);
            DefaultSAXParser.parse(file, reporter);
            reporter.validateContent(monitor);
            StringWriter swriter = new StringWriter();
            PrintWriter writer = new PrintWriter(swriter);
            try {
                boolean generateDoc = CompilerFlags.getBoolean(file.getProject(), "compilers.s.create-docs");
                if (reporter.getDocumentRoot() != null && reporter.getErrorCount() == 0 && generateDoc) {
                    this.ensureFoldersExist(file.getProject(), this.getDocLocation(file));
                    String outputFileName = this.getOutputFileName(file);
                    IWorkspace workspace = file.getWorkspace();
                    Path outputPath = new Path(outputFileName);
                    SchemaDescriptor desc = new SchemaDescriptor(file, false);
                    Schema schema = (Schema)desc.getSchema(false);
                    SchemaTransformer transformer = new SchemaTransformer();
                    transformer.transform(schema, writer);
                    ByteArrayInputStream target = new ByteArrayInputStream(swriter.toString().getBytes("UTF8"));
                    IFile outputFile = workspace.getRoot().getFile((IPath)outputPath);
                    if (!workspace.getRoot().exists((IPath)outputPath)) {
                        outputFile.create((InputStream)target, true, monitor);
                    } else {
                        outputFile.setContents((InputStream)target, true, false, monitor);
                    }
                }
            }
            catch (UnsupportedEncodingException e) {
                PDECore.logException(e);
                writer.close();
                try {
                    swriter.close();
                }
                catch (IOException iOException) {}
                break block17;
            }
            catch (CoreException e) {
                try {
                    PDECore.logException(e);
                    writer.close();
                }
                catch (Throwable throwable) {
                    writer.close();
                    try {
                        swriter.close();
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    swriter.close();
                }
                catch (IOException iOException) {}
                break block17;
            }
            writer.close();
            try {
                swriter.close();
            }
            catch (IOException iOException) {}
        }
        monitor.subTask(PDECoreMessages.Builders_updating);
        monitor.done();
    }

    private void ensureFoldersExist(IProject project, String pathName) throws CoreException {
        Path path = new Path(pathName);
        IProject parent = project;
        int i = 0;
        while (i < path.segmentCount()) {
            String segment = path.segment(i);
            IFolder folder = parent.getFolder((IPath)new Path(segment));
            if (!folder.exists()) {
                folder.create(true, true, null);
            }
            parent = folder;
            ++i;
        }
    }

    private void compileSchemasIn(IContainer container, IProgressMonitor monitor) throws CoreException {
        monitor.subTask(PDECoreMessages.Builders_Schema_compilingSchemas);
        IResource[] members = container.members();
        int i = 0;
        while (i < members.length) {
            IResource member = members[i];
            if (member instanceof IContainer) {
                this.compileSchemasIn((IContainer)member, monitor);
            } else if (member instanceof IFile && this.isSchemaFile((IFile)member)) {
                this.compileFile((IFile)member, monitor);
            }
            ++i;
        }
        monitor.done();
    }

    private String getDocLocation(IFile file) {
        return CompilerFlags.getString(file.getProject(), "compilers.s.doc-folder");
    }

    private String getOutputFileName(IFile file) {
        String fileName = file.getName();
        int dot = fileName.lastIndexOf(46);
        String pageName = String.valueOf(fileName.substring(0, dot)) + ".html";
        String mangledPluginId = this.getMangledPluginId(file);
        if (mangledPluginId != null) {
            pageName = String.valueOf(mangledPluginId) + "_" + pageName;
        }
        IPath path = file.getProject().getFullPath().append(this.getDocLocation(file)).append(pageName);
        return path.toString();
    }

    private String getMangledPluginId(IFile file) {
        IPluginBase plugin;
        IProject project = file.getProject();
        IPluginModelBase model = PluginRegistry.findModel(project);
        if (model instanceof IPluginModelBase && (plugin = model.getPluginBase()) != null) {
            return plugin.getId().replace('.', '_');
        }
        return null;
    }

    private boolean isSchemaFile(IFile file) {
        return "exsd".equals(file.getFileExtension());
    }

    private void removeOutputFile(IFile file, IProgressMonitor monitor) {
        IFile outputFile;
        String outputFileName = this.getOutputFileName(file);
        monitor.subTask(NLS.bind((String)PDECoreMessages.Builders_Schema_removing, (Object)outputFileName));
        IWorkspace workspace = file.getWorkspace();
        Path path = new Path(outputFileName);
        if (workspace.getRoot().exists((IPath)path) && (outputFile = workspace.getRoot().getFile((IPath)path)) != null) {
            try {
                outputFile.delete(true, true, monitor);
            }
            catch (CoreException e) {
                PDECore.logException(e);
            }
        }
        monitor.done();
    }

    class DeltaVisitor
    implements IResourceDeltaVisitor {
        private IProgressMonitor monitor;

        public DeltaVisitor(IProgressMonitor monitor) {
            this.monitor = monitor;
        }

        public boolean visit(IResourceDelta delta) {
            IFile candidate;
            IResource resource = delta.getResource();
            if (resource instanceof IProject) {
                return ExtensionPointSchemaBuilder.this.isInterestingProject((IProject)resource);
            }
            if (resource instanceof IFolder) {
                return true;
            }
            if (resource instanceof IFile && ExtensionPointSchemaBuilder.this.isSchemaFile(candidate = (IFile)resource)) {
                if (delta.getKind() != 2) {
                    ExtensionPointSchemaBuilder.this.compileFile(candidate, this.monitor);
                } else {
                    ExtensionPointSchemaBuilder.this.removeOutputFile(candidate, this.monitor);
                }
            }
            return false;
        }
    }
}

