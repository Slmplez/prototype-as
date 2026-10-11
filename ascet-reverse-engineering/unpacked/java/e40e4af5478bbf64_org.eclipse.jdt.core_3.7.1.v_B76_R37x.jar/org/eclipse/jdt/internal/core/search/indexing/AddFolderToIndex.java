/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceProxy
 *  org.eclipse.core.resources.IResourceProxyVisitor
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.indexing.IndexRequest;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

class AddFolderToIndex
extends IndexRequest {
    IPath folderPath;
    IProject project;
    char[][] inclusionPatterns;
    char[][] exclusionPatterns;

    public AddFolderToIndex(IPath folderPath, IProject project, char[][] inclusionPatterns, char[][] exclusionPatterns, IndexManager manager) {
        super(project.getFullPath(), manager);
        this.folderPath = folderPath;
        this.project = project;
        this.inclusionPatterns = inclusionPatterns;
        this.exclusionPatterns = exclusionPatterns;
    }

    public boolean execute(IProgressMonitor progressMonitor) {
        if (this.isCancelled || progressMonitor != null && progressMonitor.isCanceled()) {
            return true;
        }
        if (!this.project.isAccessible()) {
            return true;
        }
        IResource folder = this.project.getParent().findMember(this.folderPath);
        if (folder == null || folder.getType() == 1) {
            return true;
        }
        Index index = this.manager.getIndex(this.containerPath, true, true);
        if (index == null) {
            return true;
        }
        ReadWriteMonitor monitor = index.monitor;
        if (monitor == null) {
            return true;
        }
        try {
            try {
                monitor.enterRead();
                final IPath container = this.containerPath;
                final IndexManager indexManager = this.manager;
                final SourceElementParser parser = indexManager.getSourceElementParser(JavaCore.create(this.project), null);
                if (this.exclusionPatterns == null && this.inclusionPatterns == null) {
                    folder.accept(new IResourceProxyVisitor(){

                        public boolean visit(IResourceProxy proxy) {
                            if (proxy.getType() == 1) {
                                if (Util.isJavaLikeFileName(proxy.getName())) {
                                    indexManager.addSource((IFile)proxy.requestResource(), container, parser);
                                }
                                return false;
                            }
                            return true;
                        }
                    }, 0);
                } else {
                    folder.accept(new IResourceProxyVisitor(){

                        public boolean visit(IResourceProxy proxy) {
                            switch (proxy.getType()) {
                                case 1: {
                                    IResource resource;
                                    if (Util.isJavaLikeFileName(proxy.getName()) && !Util.isExcluded(resource = proxy.requestResource(), AddFolderToIndex.this.inclusionPatterns, AddFolderToIndex.this.exclusionPatterns)) {
                                        indexManager.addSource((IFile)resource, container, parser);
                                    }
                                    return false;
                                }
                                case 2: {
                                    if (AddFolderToIndex.this.exclusionPatterns == null || AddFolderToIndex.this.inclusionPatterns != null || !Util.isExcluded(proxy.requestFullPath(), AddFolderToIndex.this.inclusionPatterns, AddFolderToIndex.this.exclusionPatterns, true)) break;
                                    return false;
                                }
                            }
                            return true;
                        }
                    }, 0);
                }
            }
            catch (CoreException e) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> failed to add " + this.folderPath + " to index because of the following exception:", System.err);
                    e.printStackTrace();
                }
                monitor.exitRead();
                return false;
            }
        }
        finally {
            monitor.exitRead();
        }
        return true;
    }

    public String toString() {
        return "adding " + this.folderPath + " to index " + this.containerPath;
    }
}

