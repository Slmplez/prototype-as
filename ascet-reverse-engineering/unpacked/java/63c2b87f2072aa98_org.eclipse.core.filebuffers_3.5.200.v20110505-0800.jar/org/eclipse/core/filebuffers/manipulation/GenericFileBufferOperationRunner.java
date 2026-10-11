/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobManager
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.MultiRule
 */
package org.eclipse.core.filebuffers.manipulation;

import java.util.ArrayList;
import org.eclipse.core.filebuffers.FileBuffers;
import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.core.filebuffers.IFileBufferManager;
import org.eclipse.core.filebuffers.ITextFileBuffer;
import org.eclipse.core.filebuffers.ITextFileBufferManager;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.filebuffers.manipulation.FileBuffersMessages;
import org.eclipse.core.filebuffers.manipulation.IFileBufferOperation;
import org.eclipse.core.internal.filebuffers.Progress;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.MultiRule;

public class GenericFileBufferOperationRunner {
    private final Object fValidationContext;
    private final IFileBufferManager fFileBufferManager;
    private final Object fCompletionLock = new Object();
    private transient boolean fIsCompleted;
    private transient Throwable fThrowable;

    public GenericFileBufferOperationRunner(IFileBufferManager fileBufferManager, Object validationContext) {
        this.fFileBufferManager = fileBufferManager;
        this.fValidationContext = validationContext;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void execute(IPath[] locations, final IFileBufferOperation operation, IProgressMonitor monitor) throws CoreException, OperationCanceledException {
        int size = locations.length;
        final IProgressMonitor progressMonitor = Progress.getMonitor(monitor);
        progressMonitor.beginTask(operation.getOperationName(), size * 200);
        try {
            IProgressMonitor subMonitor = Progress.getSubMonitor(progressMonitor, size * 10);
            IFileBuffer[] fileBuffers = this.createFileBuffers(locations, subMonitor);
            subMonitor.done();
            IFileBuffer[] fileBuffers2Save = this.findFileBuffersToSave(fileBuffers);
            subMonitor = Progress.getSubMonitor(progressMonitor, size * 10);
            this.fFileBufferManager.validateState(fileBuffers2Save, subMonitor, this.fValidationContext);
            subMonitor.done();
            if (!this.isCommitable(fileBuffers2Save)) {
                throw new OperationCanceledException();
            }
            IFileBuffer[] unsynchronizedFileBuffers = this.findUnsynchronizedFileBuffers(fileBuffers);
            this.performOperation(unsynchronizedFileBuffers, operation, progressMonitor);
            final IFileBuffer[] synchronizedFileBuffers = this.findSynchronizedFileBuffers(fileBuffers);
            this.fIsCompleted = false;
            this.fThrowable = null;
            Object object = this.fCompletionLock;
            synchronized (object) {
                this.executeInContext(new Runnable(){

                    /*
                     * WARNING - Removed try catching itself - possible behaviour change.
                     */
                    public void run() {
                        Object object = GenericFileBufferOperationRunner.this.fCompletionLock;
                        synchronized (object) {
                            try {
                                SafeRunner.run((ISafeRunnable)new ISafeRunnable(this, synchronizedFileBuffers, operation, progressMonitor){
                                    final /* synthetic */ 1 this$1;
                                    private final /* synthetic */ IFileBuffer[] val$synchronizedFileBuffers;
                                    private final /* synthetic */ IFileBufferOperation val$operation;
                                    private final /* synthetic */ IProgressMonitor val$progressMonitor;
                                    {
                                        this.this$1 = var1_1;
                                        this.val$synchronizedFileBuffers = iFileBufferArray;
                                        this.val$operation = iFileBufferOperation;
                                        this.val$progressMonitor = iProgressMonitor;
                                    }

                                    public void handleException(Throwable throwable) {
                                        GenericFileBufferOperationRunner.access$2(1.access$0(this.this$1), throwable);
                                    }

                                    public void run() throws Exception {
                                        GenericFileBufferOperationRunner.access$3(1.access$0(this.this$1), this.val$synchronizedFileBuffers, this.val$operation, this.val$progressMonitor);
                                    }
                                });
                            }
                            finally {
                                GenericFileBufferOperationRunner.this.fIsCompleted = true;
                                GenericFileBufferOperationRunner.this.fCompletionLock.notifyAll();
                            }
                        }
                    }

                    static /* synthetic */ GenericFileBufferOperationRunner access$0(1 var0) {
                        return var0.GenericFileBufferOperationRunner.this;
                    }
                });
                while (!this.fIsCompleted) {
                    try {
                        this.fCompletionLock.wait(500L);
                    }
                    catch (InterruptedException interruptedException) {}
                }
            }
            if (this.fThrowable != null) {
                if (this.fThrowable instanceof CoreException) {
                    throw (CoreException)this.fThrowable;
                }
                throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 1, this.fThrowable.getLocalizedMessage(), this.fThrowable));
            }
            subMonitor = Progress.getSubMonitor(progressMonitor, size * 80);
            this.commit(fileBuffers2Save, subMonitor);
            subMonitor.done();
        }
        finally {
            try {
                IProgressMonitor subMonitor = Progress.getSubMonitor(progressMonitor, size * 10);
                this.releaseFileBuffers(locations, subMonitor);
                subMonitor.done();
            }
            finally {
                progressMonitor.done();
            }
        }
    }

    private void performOperation(IFileBuffer fileBuffer, IFileBufferOperation operation, IProgressMonitor progressMonitor) throws CoreException, OperationCanceledException {
        ISchedulingRule rule = fileBuffer.computeCommitRule();
        IJobManager manager = Job.getJobManager();
        try {
            manager.beginRule(rule, progressMonitor);
            String name = fileBuffer.getLocation().lastSegment();
            progressMonitor.beginTask(name, 100);
            try {
                IProgressMonitor subMonitor = Progress.getSubMonitor(progressMonitor, 100);
                operation.run(fileBuffer, subMonitor);
                subMonitor.done();
            }
            finally {
                progressMonitor.done();
            }
        }
        finally {
            manager.endRule(rule);
        }
    }

    private void performOperation(IFileBuffer[] fileBuffers, IFileBufferOperation operation, IProgressMonitor progressMonitor) throws CoreException, OperationCanceledException {
        int i = 0;
        while (i < fileBuffers.length) {
            if (progressMonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            IProgressMonitor subMonitor = Progress.getSubMonitor(progressMonitor, 100);
            this.performOperation(fileBuffers[i], operation, subMonitor);
            subMonitor.done();
            ++i;
        }
    }

    private void executeInContext(Runnable runnable) {
        ITextFileBufferManager fileBufferManager = FileBuffers.getTextFileBufferManager();
        fileBufferManager.execute(runnable);
    }

    private IFileBuffer[] findUnsynchronizedFileBuffers(IFileBuffer[] fileBuffers) {
        ArrayList<IFileBuffer> list = new ArrayList<IFileBuffer>();
        int i = 0;
        while (i < fileBuffers.length) {
            if (!fileBuffers[i].isSynchronizationContextRequested()) {
                list.add(fileBuffers[i]);
            }
            ++i;
        }
        return list.toArray(new IFileBuffer[list.size()]);
    }

    private IFileBuffer[] findSynchronizedFileBuffers(IFileBuffer[] fileBuffers) {
        ArrayList<IFileBuffer> list = new ArrayList<IFileBuffer>();
        int i = 0;
        while (i < fileBuffers.length) {
            if (fileBuffers[i].isSynchronizationContextRequested()) {
                list.add(fileBuffers[i]);
            }
            ++i;
        }
        return list.toArray(new IFileBuffer[list.size()]);
    }

    private IFileBuffer[] createFileBuffers(IPath[] locations, IProgressMonitor progressMonitor) throws CoreException {
        progressMonitor.beginTask(FileBuffersMessages.FileBufferOperationRunner_task_connecting, locations.length);
        try {
            IFileBuffer[] fileBuffers = new ITextFileBuffer[locations.length];
            int i = 0;
            while (i < locations.length) {
                IProgressMonitor subMonitor = Progress.getSubMonitor(progressMonitor, 1);
                this.fFileBufferManager.connect(locations[i], LocationKind.NORMALIZE, subMonitor);
                subMonitor.done();
                fileBuffers[i] = this.fFileBufferManager.getFileBuffer(locations[i], LocationKind.NORMALIZE);
                ++i;
            }
            IFileBuffer[] iFileBufferArray = fileBuffers;
            return iFileBufferArray;
        }
        catch (CoreException x) {
            try {
                this.releaseFileBuffers(locations, Progress.getMonitor());
            }
            catch (CoreException coreException) {}
            throw x;
        }
        finally {
            progressMonitor.done();
        }
    }

    private void releaseFileBuffers(IPath[] locations, IProgressMonitor progressMonitor) throws CoreException {
        progressMonitor.beginTask(FileBuffersMessages.FileBufferOperationRunner_task_disconnecting, locations.length);
        try {
            ITextFileBufferManager fileBufferManager = FileBuffers.getTextFileBufferManager();
            int i = 0;
            while (i < locations.length) {
                IProgressMonitor subMonitor = Progress.getSubMonitor(progressMonitor, 1);
                fileBufferManager.disconnect(locations[i], LocationKind.NORMALIZE, subMonitor);
                subMonitor.done();
                ++i;
            }
        }
        finally {
            progressMonitor.done();
        }
    }

    private IFileBuffer[] findFileBuffersToSave(IFileBuffer[] fileBuffers) {
        ArrayList<IFileBuffer> list = new ArrayList<IFileBuffer>();
        int i = 0;
        while (i < fileBuffers.length) {
            IFileBuffer buffer = fileBuffers[i];
            if (!buffer.isDirty()) {
                list.add(buffer);
            }
            ++i;
        }
        return list.toArray(new IFileBuffer[list.size()]);
    }

    private boolean isCommitable(IFileBuffer[] fileBuffers) {
        int i = 0;
        while (i < fileBuffers.length) {
            if (!fileBuffers[i].isCommitable()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    protected ISchedulingRule computeCommitRule(IFileBuffer[] fileBuffers) {
        ArrayList<ISchedulingRule> list = new ArrayList<ISchedulingRule>();
        int i = 0;
        while (i < fileBuffers.length) {
            ISchedulingRule rule = fileBuffers[i].computeCommitRule();
            if (rule != null) {
                list.add(rule);
            }
            ++i;
        }
        ISchedulingRule[] rules = new ISchedulingRule[list.size()];
        list.toArray(rules);
        return new MultiRule(rules);
    }

    protected void commit(IFileBuffer[] fileBuffers, IProgressMonitor progressMonitor) throws CoreException {
        IProgressMonitor monitor = Progress.getMonitor(progressMonitor);
        ISchedulingRule rule = this.computeCommitRule(fileBuffers);
        Job.getJobManager().beginRule(rule, progressMonitor);
        try {
            this.doCommit(fileBuffers, progressMonitor);
        }
        finally {
            Job.getJobManager().endRule(rule);
            monitor.done();
        }
    }

    protected void doCommit(IFileBuffer[] fileBuffers, IProgressMonitor progressMonitor) throws CoreException {
        IProgressMonitor monitor = Progress.getMonitor(progressMonitor);
        monitor.beginTask(FileBuffersMessages.FileBufferOperationRunner_task_committing, fileBuffers.length);
        try {
            int i = 0;
            while (i < fileBuffers.length) {
                IProgressMonitor subMonitor = Progress.getSubMonitor(monitor, 1);
                fileBuffers[i].commit(subMonitor, true);
                subMonitor.done();
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    static /* synthetic */ void access$2(GenericFileBufferOperationRunner genericFileBufferOperationRunner, Throwable throwable) {
        genericFileBufferOperationRunner.fThrowable = throwable;
    }

    static /* synthetic */ void access$3(GenericFileBufferOperationRunner genericFileBufferOperationRunner, IFileBuffer[] iFileBufferArray, IFileBufferOperation iFileBufferOperation, IProgressMonitor iProgressMonitor) throws CoreException, OperationCanceledException {
        genericFileBufferOperationRunner.performOperation(iFileBufferArray, iFileBufferOperation, iProgressMonitor);
    }
}

