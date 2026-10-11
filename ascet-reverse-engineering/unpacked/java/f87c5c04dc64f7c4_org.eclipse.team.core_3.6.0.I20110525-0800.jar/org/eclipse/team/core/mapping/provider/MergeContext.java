/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core.mapping.provider;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IThreeWayDiff;
import org.eclipse.team.core.history.IFileRevision;
import org.eclipse.team.core.mapping.DelegatingStorageMerger;
import org.eclipse.team.core.mapping.IMergeContext;
import org.eclipse.team.core.mapping.IMergeStatus;
import org.eclipse.team.core.mapping.IResourceDiff;
import org.eclipse.team.core.mapping.IResourceDiffTree;
import org.eclipse.team.core.mapping.IStorageMerger;
import org.eclipse.team.core.mapping.ISynchronizationScopeManager;
import org.eclipse.team.core.mapping.provider.MergeStatus;
import org.eclipse.team.core.mapping.provider.SynchronizationContext;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.mapping.SyncInfoToDiffConverter;

public abstract class MergeContext
extends SynchronizationContext
implements IMergeContext {
    static /* synthetic */ Class class$0;

    protected MergeContext(ISynchronizationScopeManager manager, int type, IResourceDiffTree deltaTree) {
        super(manager, type, deltaTree);
    }

    public void reject(final IDiff[] diffs, IProgressMonitor monitor) throws CoreException {
        this.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                int i = 0;
                while (i < diffs.length) {
                    IDiff node = diffs[i];
                    MergeContext.this.reject(node, monitor);
                    ++i;
                }
            }
        }, this.getMergeRule(diffs), 0, monitor);
    }

    public void markAsMerged(final IDiff[] nodes, final boolean inSyncHint, IProgressMonitor monitor) throws CoreException {
        this.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                int i = 0;
                while (i < nodes.length) {
                    IDiff node = nodes[i];
                    MergeContext.this.markAsMerged(node, inSyncHint, monitor);
                    ++i;
                }
            }
        }, this.getMergeRule(nodes), 0, monitor);
    }

    public IStatus merge(final IDiff[] deltas, final boolean force, IProgressMonitor monitor) throws CoreException {
        final ArrayList failedFiles = new ArrayList();
        this.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                try {
                    monitor.beginTask(null, deltas.length * 100);
                    int i = 0;
                    while (i < deltas.length) {
                        IDiff delta = deltas[i];
                        IStatus s = MergeContext.this.merge(delta, force, Policy.subMonitorFor(monitor, 100));
                        if (!s.isOK()) {
                            if (s.getCode() == 1) {
                                failedFiles.addAll(Arrays.asList(((IMergeStatus)s).getConflictingFiles()));
                            } else {
                                throw new CoreException(s);
                            }
                        }
                        ++i;
                    }
                }
                finally {
                    monitor.done();
                }
            }
        }, this.getMergeRule(deltas), 1, monitor);
        if (failedFiles.isEmpty()) {
            return Status.OK_STATUS;
        }
        return new MergeStatus("org.eclipse.team.core", Messages.MergeContext_0, failedFiles.toArray(new IFile[failedFiles.size()]));
    }

    public IStatus merge(IDiff diff, boolean ignoreLocalChanges, IProgressMonitor monitor) throws CoreException {
        Policy.checkCanceled(monitor);
        IResource resource = this.getDiffTree().getResource(diff);
        if (resource.getType() != 1) {
            if (diff instanceof IThreeWayDiff) {
                IThreeWayDiff twd = (IThreeWayDiff)diff;
                if ((ignoreLocalChanges || this.getMergeType() == 2) && resource.getType() == 2 && twd.getKind() == 1 && twd.getDirection() == 256 && ((IFolder)resource).members().length == 0) {
                    ((IFolder)resource).delete(false, monitor);
                } else if (resource.getType() == 2 && !resource.exists() && twd.getKind() == 1 && twd.getDirection() == 512) {
                    this.ensureParentsExist(resource, monitor);
                    ((IFolder)resource).create(false, true, monitor);
                    this.makeInSync(diff, monitor);
                }
            }
            return Status.OK_STATUS;
        }
        if (diff instanceof IThreeWayDiff && !ignoreLocalChanges && this.getMergeType() == 3) {
            IThreeWayDiff twDelta = (IThreeWayDiff)diff;
            int direction = twDelta.getDirection();
            if (direction == 256) {
                return Status.OK_STATUS;
            }
            if (direction == 512) {
                this.performReplace(diff, monitor);
                return Status.OK_STATUS;
            }
            int type = twDelta.getKind();
            if (type == 2) {
                this.makeInSync(diff, monitor);
                return Status.OK_STATUS;
            }
            IResourceDiff remoteChange = (IResourceDiff)twDelta.getRemoteChange();
            IFileRevision remote = null;
            if (remoteChange != null) {
                remote = remoteChange.getAfterState();
            }
            if (remote == null || !this.getLocalFile(diff).exists()) {
                return new MergeStatus("org.eclipse.team.core", NLS.bind((String)Messages.MergeContext_1, (Object[])new String[]{diff.getPath().toString()}), new IFile[]{this.getLocalFile(diff)});
            }
            return this.performThreeWayMerge(twDelta, monitor);
        }
        this.performReplace(diff, monitor);
        return Status.OK_STATUS;
    }

    protected IStatus performThreeWayMerge(final IThreeWayDiff diff, IProgressMonitor monitor) throws CoreException {
        final IStatus[] result = new IStatus[]{Status.OK_STATUS};
        this.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                IStorageMerger merger;
                monitor.beginTask(null, 100);
                IResourceDiff localDiff = (IResourceDiff)diff.getLocalChange();
                IResourceDiff remoteDiff = (IResourceDiff)diff.getRemoteChange();
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.team.core.mapping.IStorageMerger");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((merger = (IStorageMerger)MergeContext.this.getAdapter(clazz)) == null) {
                    merger = DelegatingStorageMerger.getInstance();
                }
                IFile file = (IFile)localDiff.getResource();
                monitor.subTask(NLS.bind((String)Messages.MergeContext_5, (Object)file.getFullPath().toString()));
                String osEncoding = file.getCharset();
                IFileRevision ancestorState = localDiff.getBeforeState();
                IFileRevision remoteState = remoteDiff.getAfterState();
                IStorage ancestorStorage = ancestorState != null ? ancestorState.getStorage(Policy.subMonitorFor(monitor, 30)) : null;
                IStorage remoteStorage = remoteState.getStorage(Policy.subMonitorFor(monitor, 30));
                OutputStream os = MergeContext.this.getTempOutputStream(file);
                try {
                    IStatus status = merger.merge(os, osEncoding, ancestorStorage, (IStorage)file, remoteStorage, Policy.subMonitorFor(monitor, 30));
                    if (status.isOK()) {
                        file.setContents(MergeContext.this.getTempInputStream(file, os), false, true, Policy.subMonitorFor(monitor, 5));
                        MergeContext.this.markAsMerged(diff, false, Policy.subMonitorFor(monitor, 5));
                    } else {
                        status = new MergeStatus(status.getPlugin(), status.getMessage(), new IFile[]{file});
                    }
                    result[0] = status;
                }
                finally {
                    MergeContext.this.disposeTempOutputStream(file, os);
                }
                monitor.done();
            }
        }, this.getMergeRule(diff), 1, monitor);
        return result[0];
    }

    private void disposeTempOutputStream(IFile file, OutputStream output) {
        File tmpFile;
        if (output instanceof ByteArrayOutputStream) {
            return;
        }
        try {
            if (output != null) {
                output.close();
            }
        }
        catch (IOException iOException) {}
        if ((tmpFile = this.getTempFile(file)).exists()) {
            tmpFile.delete();
        }
    }

    private OutputStream getTempOutputStream(IFile file) throws CoreException {
        File parent;
        File tmpFile = this.getTempFile(file);
        if (tmpFile.exists()) {
            tmpFile.delete();
        }
        if (!(parent = tmpFile.getParentFile()).exists()) {
            parent.mkdirs();
        }
        try {
            return new BufferedOutputStream(new FileOutputStream(tmpFile));
        }
        catch (FileNotFoundException e) {
            TeamPlugin.log(4, NLS.bind((String)"Could not open temporary file {0} for writing: {1}", (Object[])new String[]{tmpFile.getAbsolutePath(), e.getMessage()}), e);
            return new ByteArrayOutputStream();
        }
    }

    private InputStream getTempInputStream(IFile file, OutputStream output) throws CoreException {
        if (output instanceof ByteArrayOutputStream) {
            ByteArrayOutputStream baos = (ByteArrayOutputStream)output;
            return new ByteArrayInputStream(baos.toByteArray());
        }
        try {
            if (output != null) {
                output.close();
            }
        }
        catch (IOException iOException) {}
        File tmpFile = this.getTempFile(file);
        try {
            return new BufferedInputStream(new FileInputStream(tmpFile));
        }
        catch (FileNotFoundException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.team.core", 2, NLS.bind((String)Messages.MergeContext_4, (Object[])new String[]{tmpFile.getAbsolutePath(), e.getMessage()}), (Throwable)e));
        }
    }

    private File getTempFile(IFile file) {
        return TeamPlugin.getPlugin().getStateLocation().append(".tmp").append(String.valueOf(file.getName()) + ".tmp").toFile();
    }

    private IFile getLocalFile(IDiff delta) {
        return ResourcesPlugin.getWorkspace().getRoot().getFile(delta.getPath());
    }

    protected void performReplace(IDiff diff, IProgressMonitor monitor) throws CoreException {
        IResourceDiff d;
        IFile file = this.getLocalFile(diff);
        IFileRevision remote = null;
        if (diff instanceof IResourceDiff) {
            d = (IResourceDiff)diff;
            remote = d.getAfterState();
        } else {
            d = (IResourceDiff)((IThreeWayDiff)diff).getRemoteChange();
            if (d != null) {
                remote = d.getAfterState();
            }
        }
        if (d == null && (d = (IResourceDiff)((IThreeWayDiff)diff).getLocalChange()) != null) {
            remote = d.getBeforeState();
        }
        if (d != null) {
            this.performReplace(diff, file, remote, monitor);
        }
    }

    protected abstract void makeInSync(IDiff var1, IProgressMonitor var2) throws CoreException;

    private void performReplace(final IDiff diff, final IFile file, final IFileRevision remote, IProgressMonitor monitor) throws CoreException {
        this.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                try {
                    monitor.beginTask(null, 100);
                    monitor.subTask(NLS.bind((String)Messages.MergeContext_6, (Object)file.getFullPath().toString()));
                    if ((remote == null || !remote.exists()) && file.exists()) {
                        file.delete(false, true, Policy.subMonitorFor(monitor, 95));
                    } else if (remote != null) {
                        MergeContext.this.ensureParentsExist((IResource)file, monitor);
                        InputStream stream = remote.getStorage(monitor).getContents();
                        stream = new BufferedInputStream(stream);
                        try {
                            if (file.exists()) {
                                file.setContents(stream, false, true, Policy.subMonitorFor(monitor, 95));
                            } else {
                                file.create(stream, false, Policy.subMonitorFor(monitor, 95));
                            }
                        }
                        catch (Throwable throwable) {
                            try {
                                stream.close();
                            }
                            catch (IOException iOException) {}
                            throw throwable;
                        }
                        try {
                            stream.close();
                        }
                        catch (IOException iOException) {}
                    }
                    MergeContext.this.makeInSync(diff, Policy.subMonitorFor(monitor, 5));
                }
                finally {
                    monitor.done();
                }
            }
        }, this.getMergeRule(diff), 1, monitor);
    }

    protected void ensureParentsExist(IResource resource, IProgressMonitor monitor) throws CoreException {
        IContainer parent = resource.getParent();
        if (parent.getType() != 2) {
            return;
        }
        if (!parent.exists()) {
            this.ensureParentsExist((IResource)parent, monitor);
            ((IFolder)parent).create(false, true, monitor);
        }
    }

    public void run(IWorkspaceRunnable runnable, ISchedulingRule rule, int flags, IProgressMonitor monitor) throws CoreException {
        ResourcesPlugin.getWorkspace().run(runnable, rule, flags, monitor);
    }

    public ISchedulingRule getMergeRule(IDiff diff) {
        IResource resource = this.getDiffTree().getResource(diff);
        IResourceRuleFactory ruleFactory = ResourcesPlugin.getWorkspace().getRuleFactory();
        ISchedulingRule rule = !resource.exists() ? ruleFactory.createRule(resource) : (SyncInfoToDiffConverter.getRemote(diff) == null ? ruleFactory.deleteRule(resource) : ruleFactory.modifyRule(resource));
        return rule;
    }

    public ISchedulingRule getMergeRule(IDiff[] deltas) {
        ISchedulingRule result = null;
        int i = 0;
        while (i < deltas.length) {
            IDiff node = deltas[i];
            ISchedulingRule rule = this.getMergeRule(node);
            result = result == null ? rule : MultiRule.combine((ISchedulingRule)result, (ISchedulingRule)rule);
            ++i;
        }
        return result;
    }

    public int getMergeType() {
        return this.getType();
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.team.core.mapping.IStorageMerger");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return DelegatingStorageMerger.getInstance();
        }
        return super.getAdapter(adapter);
    }
}

