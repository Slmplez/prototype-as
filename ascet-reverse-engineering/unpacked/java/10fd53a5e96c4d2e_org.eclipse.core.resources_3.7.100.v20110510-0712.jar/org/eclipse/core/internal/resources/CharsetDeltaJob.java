/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentTypeManager$ContentTypeChangeEvent
 *  org.eclipse.core.runtime.content.IContentTypeManager$IContentTypeChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Queue;
import org.eclipse.core.internal.utils.WrappedRuntimeException;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeIterator;
import org.eclipse.core.internal.watson.IElementContentVisitor;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.jobs.Job;
import org.osgi.framework.Bundle;

public class CharsetDeltaJob
extends Job
implements IContentTypeManager.IContentTypeChangeListener {
    public static final String FAMILY_CHARSET_DELTA = "org.eclipse.core.resourcescharsetJobFamily";
    private ThreadLocal<Boolean> disabled = new ThreadLocal();
    private final Bundle systemBundle = Platform.getBundle((String)"org.eclipse.osgi");
    private Queue<ICharsetListenerFilter> work = new Queue();
    Workspace workspace;
    private static final int CHARSET_DELTA_DELAY = 500;

    public CharsetDeltaJob(Workspace workspace) {
        super(Messages.resources_charsetBroadcasting);
        this.workspace = workspace;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void addToQueue(ICharsetListenerFilter filter) {
        Queue<ICharsetListenerFilter> queue = this.work;
        synchronized (queue) {
            this.work.add(filter);
        }
        this.schedule(500L);
    }

    public boolean belongsTo(Object family) {
        return FAMILY_CHARSET_DELTA.equals(family);
    }

    public void charsetPreferencesChanged(final IProject project) {
        if (this.isDisabled()) {
            return;
        }
        ICharsetListenerFilter filter = new ICharsetListenerFilter(){

            public IPath getRoot() {
                return project.getFullPath();
            }

            public boolean isAffected(ResourceInfo info, IPathRequestor requestor) {
                return true;
            }
        };
        this.addToQueue(filter);
    }

    public void contentTypeChanged(final IContentTypeManager.ContentTypeChangeEvent event) {
        ICharsetListenerFilter filter = new ICharsetListenerFilter(){

            public IPath getRoot() {
                return Path.ROOT;
            }

            public boolean isAffected(ResourceInfo info, IPathRequestor requestor) {
                if (info.getType() != 1) {
                    return false;
                }
                return event.getContentType().isAssociatedWith(requestor.requestName());
            }
        };
        this.addToQueue(filter);
    }

    private boolean isDisabled() {
        return this.disabled.get() != null;
    }

    private void processNextEvent(final ICharsetListenerFilter filter, IProgressMonitor monitor) throws CoreException {
        IElementContentVisitor visitor = new IElementContentVisitor(){

            public boolean visitElement(ElementTree tree, IPathRequestor requestor, Object elementContents) {
                ResourceInfo info = (ResourceInfo)elementContents;
                if (!filter.isAffected(info, requestor)) {
                    return true;
                }
                info = CharsetDeltaJob.this.workspace.getResourceInfo(requestor.requestPath(), false, true);
                if (info == null) {
                    return false;
                }
                info.incrementCharsetGenerationCount();
                return true;
            }
        };
        try {
            new ElementTreeIterator(this.workspace.getElementTree(), filter.getRoot()).iterate(visitor);
        }
        catch (WrappedRuntimeException e) {
            throw (CoreException)e.getTargetException();
        }
        if (monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private ICharsetListenerFilter removeFromQueue() {
        Queue<ICharsetListenerFilter> queue = this.work;
        synchronized (queue) {
            return this.work.remove();
        }
    }

    /*
     * Exception decompiling
     */
    public IStatus run(IProgressMonitor monitor) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [6[CATCHBLOCK]], but top level block is 4[TRYBLOCK]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public void setDisabled(boolean disabled) {
        this.disabled.set(disabled ? Boolean.TRUE : null);
    }

    public void shutdown() {
        Platform.getContentTypeManager().removeContentTypeChangeListener((IContentTypeManager.IContentTypeChangeListener)this);
    }

    public void startup() {
        Platform.getContentTypeManager().addContentTypeChangeListener((IContentTypeManager.IContentTypeChangeListener)this);
    }

    static interface ICharsetListenerFilter {
        public IPath getRoot();

        public boolean isAffected(ResourceInfo var1, IPathRequestor var2);
    }
}

