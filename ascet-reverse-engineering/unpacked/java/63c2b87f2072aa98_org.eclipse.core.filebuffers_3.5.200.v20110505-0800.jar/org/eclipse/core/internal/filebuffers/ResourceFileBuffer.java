/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.ILog
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.core.internal.filebuffers;

import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.internal.filebuffers.AbstractFileBuffer;
import org.eclipse.core.internal.filebuffers.FileBuffersMessages;
import org.eclipse.core.internal.filebuffers.FileBuffersPlugin;
import org.eclipse.core.internal.filebuffers.Progress;
import org.eclipse.core.internal.filebuffers.TextFileBufferManager;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public abstract class ResourceFileBuffer
extends AbstractFileBuffer {
    protected IPath fLocation;
    protected IFile fFile;
    protected int fReferenceCount;
    protected boolean fCanBeSaved = false;
    protected boolean fIsStateValidated = false;
    protected IStatus fStatus;
    protected FileSynchronizer fFileSynchronizer;
    protected long fSynchronizationStamp = -1L;
    protected int fSynchronizationContextCount;

    public ResourceFileBuffer(TextFileBufferManager manager) {
        super(manager);
    }

    protected abstract void addFileBufferContentListeners();

    protected abstract void removeFileBufferContentListeners();

    protected abstract void initializeFileBufferContent(IProgressMonitor var1) throws CoreException;

    protected abstract void commitFileBufferContent(IProgressMonitor var1, boolean var2) throws CoreException;

    protected abstract void handleFileContentChanged(boolean var1, boolean var2) throws CoreException;

    public void create(IPath location, IProgressMonitor monitor) throws CoreException {
        monitor = Progress.getMonitor(monitor);
        monitor.beginTask(FileBuffersMessages.ResourceFileBuffer_task_creatingFileBuffer, 2);
        try {
            IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
            IFile file = workspaceRoot.getFile(location);
            if (file == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 0, FileBuffersMessages.ResourceFileBuffer_error_fileDoesNotExist, null));
            }
            URI uri = file.getLocationURI();
            if (uri == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 0, FileBuffersMessages.ResourceFileBuffer_error_fileDoesNotExist, null));
            }
            this.fLocation = location;
            this.fFile = file;
            this.fFileStore = EFS.getStore((URI)uri);
            this.fFileSynchronizer = new FileSynchronizer();
            SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 1);
            this.initializeFileBufferContent((IProgressMonitor)subMonitor);
            subMonitor.done();
            this.fSynchronizationStamp = this.fFile.getModificationStamp();
            this.addFileBufferContentListeners();
        }
        finally {
            monitor.done();
        }
    }

    public void connect() {
        ++this.fReferenceCount;
        if (this.fReferenceCount == 1) {
            this.connected();
        }
    }

    protected void connected() {
        this.fFileSynchronizer.install();
    }

    public void disconnect() throws CoreException {
        --this.fReferenceCount;
        if (this.fReferenceCount <= 0) {
            this.disconnected();
        }
    }

    protected void disconnected() {
        if (this.fFileSynchronizer != null) {
            this.fFileSynchronizer.uninstall();
            this.fFileSynchronizer = null;
        }
        this.removeFileBufferContentListeners();
    }

    public boolean isDisconnected() {
        return this.fFileSynchronizer == null;
    }

    public IPath getLocation() {
        return this.fLocation;
    }

    public ISchedulingRule computeCommitRule() {
        IResourceRuleFactory factory = ResourcesPlugin.getWorkspace().getRuleFactory();
        return factory.modifyRule((IResource)this.fFile);
    }

    public void commit(IProgressMonitor monitor, boolean overwrite) throws CoreException {
        if (!this.isDisconnected() && this.fCanBeSaved) {
            this.fManager.fireStateChanging(this);
            try {
                this.commitFileBufferContent(monitor, overwrite);
            }
            catch (CoreException x) {
                this.fManager.fireStateChangeFailed(this);
                throw x;
            }
            catch (RuntimeException x) {
                this.fManager.fireStateChangeFailed(this);
                throw x;
            }
            this.fCanBeSaved = false;
            this.fManager.fireDirtyStateChanged(this, this.fCanBeSaved);
        }
    }

    public void revert(IProgressMonitor monitor) throws CoreException {
        if (this.isDisconnected()) {
            return;
        }
        if (!this.fFile.isSynchronized(2)) {
            this.fCanBeSaved = false;
            this.refreshFile(monitor);
            return;
        }
        try {
            this.fManager.fireStateChanging(this);
            this.handleFileContentChanged(true, false);
        }
        catch (RuntimeException x) {
            this.fManager.fireStateChangeFailed(this);
            throw x;
        }
    }

    public boolean isDirty() {
        return this.fCanBeSaved;
    }

    public void setDirty(boolean isDirty) {
        this.fCanBeSaved = isDirty;
    }

    public boolean isShared() {
        return this.fReferenceCount > 1;
    }

    public ISchedulingRule computeValidateStateRule() {
        IResourceRuleFactory factory = ResourcesPlugin.getWorkspace().getRuleFactory();
        return factory.validateEditRule(new IResource[]{this.fFile});
    }

    public void validateState(IProgressMonitor monitor, Object computationContext) throws CoreException {
        if (!this.isDisconnected() && !this.fIsStateValidated) {
            this.fStatus = null;
            this.fManager.fireStateChanging(this);
            try {
                if (this.fFile.isReadOnly()) {
                    IWorkspace workspace = this.fFile.getWorkspace();
                    this.fStatus = workspace.validateEdit(new IFile[]{this.fFile}, computationContext);
                    if (this.fStatus.isOK()) {
                        this.handleFileContentChanged(false, false);
                    }
                }
                if (this.fFile.isDerived(512)) {
                    Status status = new Status(2, "org.eclipse.core.filebuffers", 5, FileBuffersMessages.ResourceFileBuffer_warning_fileIsDerived, null);
                    this.fStatus = this.fStatus == null || this.fStatus.isOK() ? status : new MultiStatus("org.eclipse.core.filebuffers", 4, new IStatus[]{this.fStatus, status}, FileBuffersMessages.ResourceFileBuffer_stateValidationFailed, null);
                }
            }
            catch (RuntimeException x) {
                this.fManager.fireStateChangeFailed(this);
                throw x;
            }
            this.fIsStateValidated = this.fStatus == null || this.fStatus.getSeverity() != 8;
            this.fManager.fireStateValidationChanged(this, this.fIsStateValidated);
        }
    }

    public boolean isStateValidated() {
        return this.fIsStateValidated;
    }

    public void resetStateValidation() {
        if (this.fIsStateValidated) {
            this.fIsStateValidated = false;
            this.fManager.fireStateValidationChanged(this, this.fIsStateValidated);
        }
    }

    protected void handleFileMoved(IPath newLocation) {
        this.fManager.fireUnderlyingFileMoved(this, newLocation);
    }

    protected void handleFileDeleted() {
        this.fManager.fireUnderlyingFileDeleted(this);
    }

    protected void refreshFile(IProgressMonitor monitor) {
        try {
            this.fFile.refreshLocal(2, monitor);
        }
        catch (OperationCanceledException operationCanceledException) {
        }
        catch (CoreException x) {
            this.handleCoreException(x);
        }
    }

    protected void handleCoreException(CoreException exception) {
        ILog log = FileBuffersPlugin.getDefault().getLog();
        log.log(exception.getStatus());
    }

    public boolean isSynchronized() {
        if (this.fSynchronizationStamp == this.fFile.getModificationStamp() && this.fFile.isSynchronized(0)) {
            return true;
        }
        this.fSynchronizationStamp = -1L;
        return false;
    }

    public void requestSynchronizationContext() {
        ++this.fSynchronizationContextCount;
    }

    public void releaseSynchronizationContext() {
        --this.fSynchronizationContextCount;
    }

    public boolean isSynchronizationContextRequested() {
        return this.fSynchronizationContextCount > 0;
    }

    public boolean isCommitable() {
        IFileInfo info = this.fFileStore.fetchInfo();
        return info.exists() && !info.getAttribute(2);
    }

    public void validationStateChanged(boolean validationState, IStatus status) {
        this.fIsStateValidated = validationState;
        this.fStatus = status;
    }

    private class FileSynchronizer
    implements IResourceChangeListener {
        private boolean fIsInstalled = false;

        public void install() {
            ResourceFileBuffer.this.fFile.getWorkspace().addResourceChangeListener((IResourceChangeListener)this);
            this.fIsInstalled = true;
        }

        public void uninstall() {
            ResourceFileBuffer.this.fFile.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
            this.fIsInstalled = false;
        }

        public void resourceChanged(IResourceChangeEvent e) {
            IResourceDelta delta = e.getDelta();
            if (delta != null) {
                delta = delta.findMember(ResourceFileBuffer.this.fFile.getFullPath());
            }
            if (delta != null && this.fIsInstalled) {
                SafeFileChange fileChange = null;
                int flags = delta.getFlags();
                switch (delta.getKind()) {
                    case 4: {
                        if ((0x100000 & flags) != 0 && !ResourceFileBuffer.this.isDisconnected() && !ResourceFileBuffer.this.fCanBeSaved && ResourceFileBuffer.this.isSynchronized()) {
                            fileChange = new SafeFileChange(this, ResourceFileBuffer.this){
                                final /* synthetic */ FileSynchronizer this$1;
                                {
                                    this.this$1 = fileSynchronizer;
                                }

                                protected void execute() throws Exception {
                                    FileSynchronizer.access$0(this.this$1).handleFileContentChanged(false, false);
                                }
                            };
                        }
                        if (fileChange != null || (0x100 & flags) == 0 || ResourceFileBuffer.this.isDisconnected() || ResourceFileBuffer.this.fCanBeSaved || ResourceFileBuffer.this.isSynchronized() && (0x40000 & flags) == 0) break;
                        fileChange = new SafeFileChange(this, ResourceFileBuffer.this){
                            final /* synthetic */ FileSynchronizer this$1;
                            {
                                this.this$1 = fileSynchronizer;
                            }

                            protected void execute() throws Exception {
                                FileSynchronizer.access$0(this.this$1).handleFileContentChanged(false, true);
                            }
                        };
                        break;
                    }
                    case 2: {
                        if ((0x2000 & flags) != 0) {
                            IPath path = delta.getMovedToPath();
                            fileChange = new SafeFileChange(this, ResourceFileBuffer.this, path){
                                final /* synthetic */ FileSynchronizer this$1;
                                private final /* synthetic */ IPath val$path;
                                {
                                    this.this$1 = fileSynchronizer;
                                    this.val$path = iPath;
                                }

                                protected void execute() throws Exception {
                                    FileSynchronizer.access$0(this.this$1).handleFileMoved(this.val$path);
                                }
                            };
                            break;
                        }
                        if (ResourceFileBuffer.this.isDisconnected() || ResourceFileBuffer.this.fCanBeSaved) break;
                        fileChange = new SafeFileChange(this, ResourceFileBuffer.this){
                            final /* synthetic */ FileSynchronizer this$1;
                            {
                                this.this$1 = fileSynchronizer;
                            }

                            protected void execute() throws Exception {
                                FileSynchronizer.access$0(this.this$1).handleFileDeleted();
                            }
                        };
                    }
                }
                if (fileChange != null) {
                    fileChange.preRun();
                    if (ResourceFileBuffer.this.isSynchronizationContextRequested()) {
                        ResourceFileBuffer.this.fManager.execute(fileChange);
                    } else {
                        fileChange.run();
                    }
                }
            }
        }

        static /* synthetic */ ResourceFileBuffer access$0(FileSynchronizer fileSynchronizer) {
            return fileSynchronizer.ResourceFileBuffer.this;
        }
    }

    private class SafeFileChange
    implements Runnable {
        protected void execute() throws Exception {
        }

        public void preRun() {
            ResourceFileBuffer.this.fManager.fireStateChanging(ResourceFileBuffer.this);
        }

        public void run() {
            if (ResourceFileBuffer.this.isDisconnected()) {
                ResourceFileBuffer.this.fManager.fireStateChangeFailed(ResourceFileBuffer.this);
                return;
            }
            try {
                this.execute();
            }
            catch (Exception x) {
                FileBuffersPlugin.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.core.filebuffers", 0, "Exception when synchronizing", (Throwable)x));
                ResourceFileBuffer.this.fManager.fireStateChangeFailed(ResourceFileBuffer.this);
            }
        }
    }
}

