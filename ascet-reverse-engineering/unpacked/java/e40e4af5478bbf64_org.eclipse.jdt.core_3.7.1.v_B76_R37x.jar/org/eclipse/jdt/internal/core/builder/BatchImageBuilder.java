/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceProxy
 *  org.eclipse.core.resources.IResourceProxyVisitor
 *  org.eclipse.core.resources.IResourceVisitor
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.builder;

import java.util.ArrayList;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.impl.CompilerStats;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.builder.AbstractImageBuilder;
import org.eclipse.jdt.internal.core.builder.ClasspathMultiDirectory;
import org.eclipse.jdt.internal.core.builder.CompilationParticipantResult;
import org.eclipse.jdt.internal.core.builder.IncrementalImageBuilder;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.builder.SourceFile;
import org.eclipse.jdt.internal.core.builder.StringSet;
import org.eclipse.jdt.internal.core.util.Messages;

public class BatchImageBuilder
extends AbstractImageBuilder {
    IncrementalImageBuilder incrementalBuilder;
    ArrayList secondaryTypes;
    StringSet typeLocatorsWithUndefinedTypes;

    protected BatchImageBuilder(JavaBuilder javaBuilder, boolean buildStarting) {
        super(javaBuilder, buildStarting, null);
        this.nameEnvironment.isIncrementalBuild = false;
        this.incrementalBuilder = null;
        this.secondaryTypes = null;
        this.typeLocatorsWithUndefinedTypes = null;
    }

    public void build() {
        if (JavaBuilder.DEBUG) {
            System.out.println("FULL build");
        }
        try {
            try {
                this.notifier.subTask(Messages.bind(Messages.build_cleaningOutput, this.javaBuilder.currentProject.getName()));
                JavaBuilder.removeProblemsAndTasksFor((IResource)this.javaBuilder.currentProject);
                this.cleanOutputFolders(true);
                this.notifier.updateProgressDelta(0.05f);
                this.notifier.subTask(Messages.build_analyzingSources);
                ArrayList sourceFiles = new ArrayList(33);
                this.addAllSourceFiles(sourceFiles);
                this.notifier.updateProgressDelta(0.1f);
                if (sourceFiles.size() > 0) {
                    SourceFile[] allSourceFiles = new SourceFile[sourceFiles.size()];
                    sourceFiles.toArray(allSourceFiles);
                    this.notifier.setProgressPerCompilationUnit(0.75f / (float)allSourceFiles.length);
                    this.workQueue.addAll(allSourceFiles);
                    this.compile(allSourceFiles);
                    if (this.typeLocatorsWithUndefinedTypes != null && this.secondaryTypes != null && !this.secondaryTypes.isEmpty()) {
                        this.rebuildTypesAffectedBySecondaryTypes();
                    }
                    if (this.incrementalBuilder != null) {
                        this.incrementalBuilder.buildAfterBatchBuild();
                    }
                }
                if (this.javaBuilder.javaProject.hasCycleMarker()) {
                    this.javaBuilder.mustPropagateStructuralChanges();
                }
            }
            catch (CoreException e) {
                throw this.internalException(e);
            }
        }
        finally {
            if (JavaBuilder.SHOW_STATS) {
                this.printStats();
            }
            this.cleanUp();
        }
    }

    protected void acceptSecondaryType(ClassFile classFile) {
        if (this.secondaryTypes != null) {
            this.secondaryTypes.add(classFile.fileName());
        }
    }

    protected void cleanOutputFolders(boolean copyBack) throws CoreException {
        block12: {
            block11: {
                boolean deleteAll = "clean".equals(this.javaBuilder.javaProject.getOption("org.eclipse.jdt.core.builder.cleanOutputFolder", true));
                if (!deleteAll) break block11;
                if (this.javaBuilder.participants != null) {
                    int i = 0;
                    int l = this.javaBuilder.participants.length;
                    while (i < l) {
                        this.javaBuilder.participants[i].cleanStarting(this.javaBuilder.javaProject);
                        ++i;
                    }
                }
                ArrayList<IContainer> visited = new ArrayList<IContainer>(this.sourceLocations.length);
                int i = 0;
                int l = this.sourceLocations.length;
                while (i < l) {
                    this.notifier.subTask(Messages.bind(Messages.build_cleaningOutput, this.javaBuilder.currentProject.getName()));
                    ClasspathMultiDirectory sourceLocation = this.sourceLocations[i];
                    if (sourceLocation.hasIndependentOutputFolder) {
                        IContainer outputFolder = sourceLocation.binaryFolder;
                        if (!visited.contains(outputFolder)) {
                            visited.add(outputFolder);
                            IResource[] members = outputFolder.members();
                            int j = 0;
                            int m = members.length;
                            while (j < m) {
                                IResource member = members[j];
                                if (!member.isDerived()) {
                                    member.accept(new IResourceVisitor(){

                                        public boolean visit(IResource resource) throws CoreException {
                                            resource.setDerived(true, null);
                                            return resource.getType() != 1;
                                        }
                                    });
                                }
                                member.delete(1, null);
                                ++j;
                            }
                        }
                        this.notifier.checkCancel();
                        if (copyBack) {
                            this.copyExtraResourcesBack(sourceLocation, true);
                        }
                    } else {
                        boolean isOutputFolder = sourceLocation.sourceFolder.equals((Object)sourceLocation.binaryFolder);
                        final char[][] exclusionPatterns = isOutputFolder ? sourceLocation.exclusionPatterns : null;
                        final char[][] inclusionPatterns = isOutputFolder ? sourceLocation.inclusionPatterns : null;
                        sourceLocation.binaryFolder.accept(new IResourceProxyVisitor(){

                            public boolean visit(IResourceProxy proxy) throws CoreException {
                                if (proxy.getType() == 1) {
                                    if (Util.isClassFileName(proxy.getName())) {
                                        IResource resource = proxy.requestResource();
                                        if ((exclusionPatterns != null || inclusionPatterns != null) && org.eclipse.jdt.internal.core.util.Util.isExcluded(resource.getFullPath(), inclusionPatterns, exclusionPatterns, false)) {
                                            return false;
                                        }
                                        if (!resource.isDerived()) {
                                            resource.setDerived(true, null);
                                        }
                                        resource.delete(1, null);
                                    }
                                    return false;
                                }
                                if (exclusionPatterns != null && inclusionPatterns == null && org.eclipse.jdt.internal.core.util.Util.isExcluded(proxy.requestFullPath(), null, exclusionPatterns, true)) {
                                    return false;
                                }
                                BatchImageBuilder.this.notifier.checkCancel();
                                return true;
                            }
                        }, 0);
                        this.notifier.checkCancel();
                    }
                    this.notifier.checkCancel();
                    ++i;
                }
                break block12;
            }
            if (!copyBack) break block12;
            int i = 0;
            int l = this.sourceLocations.length;
            while (i < l) {
                ClasspathMultiDirectory sourceLocation = this.sourceLocations[i];
                if (sourceLocation.hasIndependentOutputFolder) {
                    this.copyExtraResourcesBack(sourceLocation, false);
                }
                this.notifier.checkCancel();
                ++i;
            }
        }
    }

    protected void cleanUp() {
        this.incrementalBuilder = null;
        this.secondaryTypes = null;
        this.typeLocatorsWithUndefinedTypes = null;
        super.cleanUp();
    }

    protected void compile(SourceFile[] units, SourceFile[] additionalUnits, boolean compilingFirstGroup) {
        if (additionalUnits != null && this.secondaryTypes == null) {
            this.secondaryTypes = new ArrayList(7);
        }
        super.compile(units, additionalUnits, compilingFirstGroup);
    }

    protected void copyExtraResourcesBack(ClasspathMultiDirectory sourceLocation, final boolean deletedAll) throws CoreException {
        this.notifier.subTask(Messages.build_copyingResources);
        final int segmentCount = sourceLocation.sourceFolder.getFullPath().segmentCount();
        final char[][] exclusionPatterns = sourceLocation.exclusionPatterns;
        final char[][] inclusionPatterns = sourceLocation.inclusionPatterns;
        final IContainer outputFolder = sourceLocation.binaryFolder;
        final boolean isAlsoProject = sourceLocation.sourceFolder.equals((Object)this.javaBuilder.currentProject);
        sourceLocation.sourceFolder.accept(new IResourceProxyVisitor(){

            public boolean visit(IResourceProxy proxy) throws CoreException {
                IResource resource = null;
                switch (proxy.getType()) {
                    case 1: {
                        if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(proxy.getName()) || Util.isClassFileName(proxy.getName())) {
                            return false;
                        }
                        resource = proxy.requestResource();
                        if (BatchImageBuilder.this.javaBuilder.filterExtraResource(resource)) {
                            return false;
                        }
                        if ((exclusionPatterns != null || inclusionPatterns != null) && org.eclipse.jdt.internal.core.util.Util.isExcluded(resource.getFullPath(), inclusionPatterns, exclusionPatterns, false)) {
                            return false;
                        }
                        IPath partialPath = resource.getFullPath().removeFirstSegments(segmentCount);
                        IFile copiedResource = outputFolder.getFile(partialPath);
                        if (copiedResource.exists()) {
                            if (deletedAll) {
                                IResource originalResource = BatchImageBuilder.this.findOriginalResource(partialPath);
                                String id = originalResource.getFullPath().removeFirstSegments(1).toString();
                                BatchImageBuilder.this.createProblemFor(resource, null, Messages.bind(Messages.build_duplicateResource, id), BatchImageBuilder.this.javaBuilder.javaProject.getOption("org.eclipse.jdt.core.builder.duplicateResourceTask", true));
                                return false;
                            }
                            copiedResource.delete(1, null);
                        }
                        BatchImageBuilder.this.createFolder(partialPath.removeLastSegments(1), outputFolder);
                        BatchImageBuilder.this.copyResource(resource, (IResource)copiedResource);
                        return false;
                    }
                    case 2: {
                        resource = proxy.requestResource();
                        if (BatchImageBuilder.this.javaBuilder.filterExtraResource(resource)) {
                            return false;
                        }
                        if (isAlsoProject && BatchImageBuilder.this.isExcludedFromProject(resource.getFullPath())) {
                            return false;
                        }
                        if (exclusionPatterns == null || inclusionPatterns != null || !org.eclipse.jdt.internal.core.util.Util.isExcluded(resource.getFullPath(), null, exclusionPatterns, true)) break;
                        return false;
                    }
                }
                return true;
            }
        }, 0);
    }

    protected IResource findOriginalResource(IPath partialPath) {
        int i = 0;
        int l = this.sourceLocations.length;
        while (i < l) {
            IFile originalResource;
            ClasspathMultiDirectory sourceLocation = this.sourceLocations[i];
            if (sourceLocation.hasIndependentOutputFolder && (originalResource = sourceLocation.sourceFolder.getFile(partialPath)).exists()) {
                return originalResource;
            }
            ++i;
        }
        return null;
    }

    private void printStats() {
        if (this.compiler == null) {
            return;
        }
        CompilerStats compilerStats = this.compiler.stats;
        long time = compilerStats.elapsedTime();
        long lineCount = compilerStats.lineCount;
        double speed = (double)((int)((double)lineCount * 10000.0 / (double)time)) / 10.0;
        System.out.println(">FULL BUILD STATS for: " + this.javaBuilder.javaProject.getElementName());
        System.out.println(">   compiled " + lineCount + " lines in " + time + "ms:" + speed + "lines/s");
        System.out.print(">   parse: " + compilerStats.parseTime + " ms (" + (double)((int)((double)compilerStats.parseTime * 1000.0 / (double)time)) / 10.0 + "%)");
        System.out.print(", resolve: " + compilerStats.resolveTime + " ms (" + (double)((int)((double)compilerStats.resolveTime * 1000.0 / (double)time)) / 10.0 + "%)");
        System.out.print(", analyze: " + compilerStats.analyzeTime + " ms (" + (double)((int)((double)compilerStats.analyzeTime * 1000.0 / (double)time)) / 10.0 + "%)");
        System.out.println(", generate: " + compilerStats.generateTime + " ms (" + (double)((int)((double)compilerStats.generateTime * 1000.0 / (double)time)) / 10.0 + "%)");
    }

    protected void processAnnotationResults(CompilationParticipantResult[] results) {
        if (this.incrementalBuilder == null) {
            this.incrementalBuilder = new IncrementalImageBuilder(this);
        }
        this.incrementalBuilder.processAnnotationResults(results);
    }

    protected void rebuildTypesAffectedBySecondaryTypes() {
        if (this.incrementalBuilder == null) {
            this.incrementalBuilder = new IncrementalImageBuilder(this);
        }
        int count = this.secondaryTypes.size();
        StringSet qualifiedNames = new StringSet(count * 2);
        StringSet simpleNames = new StringSet(count);
        StringSet rootNames = new StringSet(3);
        while (--count >= 0) {
            char[] secondaryTypeName = (char[])this.secondaryTypes.get(count);
            Path path = new Path(null, new String(secondaryTypeName));
            this.incrementalBuilder.addDependentsOf((IPath)path, false, qualifiedNames, simpleNames, rootNames);
        }
        this.incrementalBuilder.addAffectedSourceFiles(qualifiedNames, simpleNames, rootNames, this.typeLocatorsWithUndefinedTypes);
    }

    protected void storeProblemsFor(SourceFile sourceFile, CategorizedProblem[] problems) throws CoreException {
        if (sourceFile == null || problems == null || problems.length == 0) {
            return;
        }
        int i = problems.length;
        while (--i >= 0) {
            CategorizedProblem problem = problems[i];
            if (problem == null || problem.getID() != 0x1000002) continue;
            if (this.typeLocatorsWithUndefinedTypes == null) {
                this.typeLocatorsWithUndefinedTypes = new StringSet(3);
            }
            this.typeLocatorsWithUndefinedTypes.add(sourceFile.typeLocator());
            break;
        }
        super.storeProblemsFor(sourceFile, problems);
    }

    public String toString() {
        return "batch image builder for:\n\tnew state: " + this.newState;
    }
}

