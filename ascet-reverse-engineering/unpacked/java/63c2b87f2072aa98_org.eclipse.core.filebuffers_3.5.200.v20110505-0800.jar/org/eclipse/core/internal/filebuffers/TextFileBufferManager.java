/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentExtension4
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.core.internal.filebuffers;

import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.filebuffers.IAnnotationModelFactory;
import org.eclipse.core.filebuffers.IDocumentFactory;
import org.eclipse.core.filebuffers.IDocumentSetupParticipant;
import org.eclipse.core.filebuffers.IDocumentSetupParticipantExtension;
import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.core.filebuffers.IFileBufferListener;
import org.eclipse.core.filebuffers.ISynchronizationContext;
import org.eclipse.core.filebuffers.ITextFileBuffer;
import org.eclipse.core.filebuffers.ITextFileBufferManager;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.filebuffers.AbstractFileBuffer;
import org.eclipse.core.internal.filebuffers.ExtensionsRegistry;
import org.eclipse.core.internal.filebuffers.FileBuffersMessages;
import org.eclipse.core.internal.filebuffers.FileBuffersPlugin;
import org.eclipse.core.internal.filebuffers.FileStoreFileBuffer;
import org.eclipse.core.internal.filebuffers.FileStoreTextFileBuffer;
import org.eclipse.core.internal.filebuffers.NLSUtility;
import org.eclipse.core.internal.filebuffers.SynchronizableDocument;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.source.IAnnotationModel;

public class TextFileBufferManager
implements ITextFileBufferManager {
    protected static final IContentType TEXT_CONTENT_TYPE = Platform.getContentTypeManager().getContentType("org.eclipse.core.runtime.text");
    private Map fFilesBuffers = new HashMap();
    private Map fFileStoreFileBuffers = new HashMap();
    private List fFileBufferListeners = new ArrayList();
    protected ExtensionsRegistry fRegistry = new ExtensionsRegistry();
    private ISynchronizationContext fSynchronizationContext;

    public void connect(IPath location, IProgressMonitor monitor) throws CoreException {
        this.connect(location, LocationKind.NORMALIZE, monitor);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void connect(IPath location, LocationKind locationKind, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)location);
        if (locationKind == LocationKind.NORMALIZE) {
            location = this.normalizeLocation(location);
        }
        AbstractFileBuffer fileBuffer = null;
        Map map = this.fFilesBuffers;
        synchronized (map) {
            fileBuffer = this.internalGetFileBuffer(location);
            if (fileBuffer != null) {
                fileBuffer.connect();
                return;
            }
        }
        fileBuffer = this.createFileBuffer(location, locationKind);
        if (fileBuffer == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 2, FileBuffersMessages.FileBufferManager_error_canNotCreateFilebuffer, null));
        }
        fileBuffer.create(location, monitor);
        map = this.fFilesBuffers;
        synchronized (map) {
            AbstractFileBuffer oldFileBuffer = this.internalGetFileBuffer(location);
            if (oldFileBuffer != null) {
                fileBuffer.disconnect();
                fileBuffer.dispose();
                oldFileBuffer.connect();
                return;
            }
            fileBuffer.connect();
            this.fFilesBuffers.put(location, fileBuffer);
        }
        this.fireBufferCreated(fileBuffer);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void connectFileStore(IFileStore fileStore, IProgressMonitor monitor) throws CoreException {
        Assert.isLegal((fileStore != null ? 1 : 0) != 0);
        FileStoreFileBuffer fileBuffer = null;
        Map map = this.fFileStoreFileBuffers;
        synchronized (map) {
            fileBuffer = this.internalGetFileBuffer(fileStore);
            if (fileBuffer != null) {
                fileBuffer.connect();
                return;
            }
        }
        fileBuffer = this.createFileBuffer(fileStore);
        if (fileBuffer == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 2, FileBuffersMessages.FileBufferManager_error_canNotCreateFilebuffer, null));
        }
        fileBuffer.create(fileStore, monitor);
        map = this.fFileStoreFileBuffers;
        synchronized (map) {
            FileStoreFileBuffer oldFileBuffer = this.internalGetFileBuffer(fileStore);
            if (oldFileBuffer != null) {
                fileBuffer.disconnect();
                fileBuffer.dispose();
                ((AbstractFileBuffer)oldFileBuffer).connect();
                return;
            }
            fileBuffer.connect();
            this.fFileStoreFileBuffers.put(fileStore, fileBuffer);
        }
        this.fireBufferCreated(fileBuffer);
    }

    public void disconnect(IPath location, IProgressMonitor monitor) throws CoreException {
        this.disconnect(location, LocationKind.NORMALIZE, monitor);
    }

    protected IPath normalizeLocation(IPath location) {
        return location;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void disconnect(IPath location, LocationKind locationKind, IProgressMonitor monitor) throws CoreException {
        AbstractFileBuffer fileBuffer;
        Assert.isNotNull((Object)location);
        if (locationKind == LocationKind.NORMALIZE) {
            location = this.normalizeLocation(location);
        }
        Map map = this.fFilesBuffers;
        synchronized (map) {
            fileBuffer = this.internalGetFileBuffer(location);
            if (fileBuffer == null) {
                return;
            }
            fileBuffer.disconnect();
            if (!fileBuffer.isDisconnected()) {
                return;
            }
            this.fFilesBuffers.remove(location);
        }
        this.fireBufferDisposed(fileBuffer);
        fileBuffer.dispose();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void disconnectFileStore(IFileStore fileStore, IProgressMonitor monitor) throws CoreException {
        FileStoreFileBuffer fileBuffer;
        Assert.isLegal((fileStore != null ? 1 : 0) != 0);
        Map map = this.fFileStoreFileBuffers;
        synchronized (map) {
            fileBuffer = this.internalGetFileBuffer(fileStore);
            if (fileBuffer == null) {
                return;
            }
            ((AbstractFileBuffer)fileBuffer).disconnect();
            if (!((AbstractFileBuffer)fileBuffer).isDisconnected()) {
                return;
            }
            this.fFileStoreFileBuffers.remove(fileStore);
        }
        this.fireBufferDisposed(fileBuffer);
        fileBuffer.dispose();
    }

    public boolean isTextFileLocation(IPath location) {
        return this.isTextFileLocation(location, false);
    }

    /*
     * Unable to fully structure code
     */
    protected boolean isTextFileLocation(IFileStore fileStore, boolean strict) {
        if (fileStore == null) {
            return false;
        }
        manager = Platform.getContentTypeManager();
        fileInfo = fileStore.fetchInfo();
        if (fileInfo.exists()) {
            block27: {
                block25: {
                    block26: {
                        is = null;
                        is = fileStore.openInputStream(0, null);
                        description = manager.getDescriptionFor(is, fileStore.getName(), IContentDescription.ALL);
                        if (description == null || (type = description.getContentType()) == null) break block25;
                        var9_10 = type.isKindOf(TextFileBufferManager.TEXT_CONTENT_TYPE);
                        if (is == null) break block26;
                        try {
                            is.close();
                        }
                        catch (IOException v0) {}
                    }
                    return var9_10;
                    catch (CoreException v1) {
                        ** if (is == null) goto lbl-1000
lbl-1000:
                        // 1 sources

                        {
                            try {
                                is.close();
                            }
                            catch (IOException v2) {}
                        }
lbl-1000:
                        // 2 sources

                        {
                            break block27;
                        }
                    }
                    catch (IOException v3) {
                        ** if (is == null) goto lbl-1000
lbl-1000:
                        // 1 sources

                        {
                            try {
                                is.close();
                            }
                            catch (IOException v4) {}
                        }
lbl-1000:
                        // 2 sources

                        {
                            break block27;
                        }
                        {
                            catch (Throwable var8_11) {
                                if (is != null) {
                                    try {
                                        is.close();
                                    }
                                    catch (IOException v5) {}
                                }
                                throw var8_11;
                            }
                        }
                    }
                }
                if (is != null) {
                    try {
                        is.close();
                    }
                    catch (IOException v6) {}
                }
            }
            return strict == false;
        }
        contentTypes = manager.findContentTypesFor(fileStore.getName());
        if (contentTypes != null && contentTypes.length > 0) {
            i = 0;
            while (i < contentTypes.length) {
                if (contentTypes[i].isKindOf(TextFileBufferManager.TEXT_CONTENT_TYPE)) {
                    return true;
                }
                ++i;
            }
            return false;
        }
        return strict == false;
    }

    public boolean isTextFileLocation(IPath location, boolean strict) {
        Assert.isNotNull((Object)location);
        location = this.normalizeLocation(location);
        try {
            return this.isTextFileLocation(EFS.getStore((URI)URIUtil.toURI((IPath)location)), strict);
        }
        catch (CoreException coreException) {
            return false;
        }
    }

    public IFileBuffer getFileBuffer(IPath location) {
        return this.getFileBuffer(location, LocationKind.NORMALIZE);
    }

    public IFileBuffer getFileBuffer(IPath location, LocationKind locationKind) {
        if (locationKind == LocationKind.NORMALIZE) {
            location = this.normalizeLocation(location);
        }
        return this.internalGetFileBuffer(location);
    }

    public IFileBuffer getFileStoreFileBuffer(IFileStore fileStore) {
        Assert.isLegal((fileStore != null ? 1 : 0) != 0);
        return this.internalGetFileBuffer(fileStore);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private AbstractFileBuffer internalGetFileBuffer(IPath location) {
        Map map = this.fFilesBuffers;
        synchronized (map) {
            return (AbstractFileBuffer)this.fFilesBuffers.get(location);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private FileStoreFileBuffer internalGetFileBuffer(IFileStore fileStore) {
        Map map = this.fFileStoreFileBuffers;
        synchronized (map) {
            return (FileStoreFileBuffer)this.fFileStoreFileBuffers.get(fileStore);
        }
    }

    public ITextFileBuffer getTextFileBuffer(IPath location) {
        return this.getTextFileBuffer(location, LocationKind.NORMALIZE);
    }

    public ITextFileBuffer getTextFileBuffer(IPath location, LocationKind locationKind) {
        return (ITextFileBuffer)this.getFileBuffer(location, locationKind);
    }

    public ITextFileBuffer getFileStoreTextFileBuffer(IFileStore fileStore) {
        Assert.isLegal((fileStore != null ? 1 : 0) != 0);
        return (ITextFileBuffer)this.getFileStoreFileBuffer(fileStore);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Unable to fully structure code
     * Could not resolve type clashes
     */
    public ITextFileBuffer getTextFileBuffer(IDocument document) {
        Assert.isLegal((boolean)(document != null));
        var3_2 = this.fFilesBuffers;
        synchronized (var3_2) {
            iter = new ArrayList<V>(this.fFilesBuffers.values()).iterator();
            // MONITOREXIT @DISABLED, blocks:[0, 2] lbl7 : MonitorExitStatement: MONITOREXIT : var3_2
            if (true) ** GOTO lbl16
        }
        do {
            if (!((buffer /* !! */  = iter.next()) instanceof ITextFileBuffer) || (textFileBuffer = (ITextFileBuffer)buffer /* !! */ ).getDocument() != document) continue;
            if (!((AbstractFileBuffer)textFileBuffer).isDisconnected()) {
                return textFileBuffer;
            }
            return null;
lbl16:
            // 2 sources

        } while (iter.hasNext());
        buffer /* !! */  = this.fFilesBuffers;
        synchronized (buffer /* !! */ ) {
            iter = new ArrayList<V>(this.fFileStoreFileBuffers.values()).iterator();
            // MONITOREXIT @DISABLED, blocks:[1, 3] lbl22 : MonitorExitStatement: MONITOREXIT : buffer /* !! */ 
            if (true) ** GOTO lbl28
        }
        do {
            if (!((buffer /* !! */  = iter.next()) instanceof ITextFileBuffer) || (textFileBuffer = (ITextFileBuffer)buffer /* !! */ ).getDocument() != document || ((AbstractFileBuffer)textFileBuffer).isDisconnected()) continue;
            return textFileBuffer;
lbl28:
            // 2 sources

        } while (iter.hasNext());
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IFileBuffer[] getFileBuffers() {
        Map map = this.fFilesBuffers;
        synchronized (map) {
            Collection values = this.fFilesBuffers.values();
            return values.toArray(new IFileBuffer[values.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IFileBuffer[] getFileStoreFileBuffers() {
        Map map = this.fFileStoreFileBuffers;
        synchronized (map) {
            Collection values = this.fFileStoreFileBuffers.values();
            return values.toArray(new IFileBuffer[values.size()]);
        }
    }

    public String getDefaultEncoding() {
        return System.getProperty("file.encoding");
    }

    public IDocument createEmptyDocument(IPath location) {
        return this.createEmptyDocument(location, LocationKind.NORMALIZE);
    }

    public IDocument createEmptyDocument(IPath location, LocationKind locationKind) {
        IDocumentSetupParticipant[] participants;
        String initalLineDelimiter;
        IDocument documentFromFactory = this.createDocumentFromFactory(location, locationKind);
        Object document = documentFromFactory != null ? documentFromFactory : new SynchronizableDocument();
        if (location == null) {
            return document;
        }
        if (document instanceof IDocumentExtension4 && (initalLineDelimiter = this.getLineDelimiterPreference(location, locationKind)) != null) {
            ((IDocumentExtension4)document).setInitialLineDelimiter(initalLineDelimiter);
        }
        if ((participants = this.fRegistry.getDocumentSetupParticipants(location, locationKind)) != null) {
            int i = 0;
            while (i < participants.length) {
                final IDocumentSetupParticipant participant = participants[i];
                ISafeRunnable runnable = new ISafeRunnable((IDocument)document, location, locationKind){
                    private final /* synthetic */ IDocument val$document;
                    private final /* synthetic */ IPath val$location;
                    private final /* synthetic */ LocationKind val$locationKind;
                    {
                        this.val$document = iDocument;
                        this.val$location = iPath;
                        this.val$locationKind = locationKind;
                    }

                    public void run() throws Exception {
                        if (participant instanceof IDocumentSetupParticipantExtension) {
                            ((IDocumentSetupParticipantExtension)((Object)participant)).setup(this.val$document, this.val$location, this.val$locationKind);
                        } else {
                            participant.setup(this.val$document);
                        }
                        if (this.val$document.getDocumentPartitioner() != null) {
                            String message = NLSUtility.format(FileBuffersMessages.TextFileBufferManager_warning_documentSetupInstallsDefaultPartitioner, participant.getClass());
                            Status status = new Status(2, "org.eclipse.core.filebuffers", 0, message, null);
                            FileBuffersPlugin.getDefault().getLog().log((IStatus)status);
                        }
                    }

                    public void handleException(Throwable t) {
                        Status status = new Status(4, "org.eclipse.core.filebuffers", 0, FileBuffersMessages.TextFileBufferManager_error_documentSetupFailed, t);
                        FileBuffersPlugin.getDefault().getLog().log((IStatus)status);
                    }
                };
                SafeRunner.run((ISafeRunnable)runnable);
                ++i;
            }
        }
        return document;
    }

    private IDocument createDocumentFromFactory(IPath location, LocationKind locationKind) {
        IDocumentFactory factory;
        final IDocument[] runnableResult = new IDocument[1];
        if (location != null && (factory = this.fRegistry.getDocumentFactory(location, locationKind)) != null) {
            ISafeRunnable runnable = new ISafeRunnable(){

                public void run() throws Exception {
                    runnableResult[0] = factory.createDocument();
                }

                public void handleException(Throwable t) {
                    Status status = new Status(4, "org.eclipse.core.filebuffers", 0, FileBuffersMessages.TextFileBufferManager_error_documentFactoryFailed, t);
                    FileBuffersPlugin.getDefault().getLog().log((IStatus)status);
                }
            };
            SafeRunner.run((ISafeRunnable)runnable);
        }
        return runnableResult[0];
    }

    public IAnnotationModel createAnnotationModel(IPath location) {
        return this.createAnnotationModel(location, LocationKind.NORMALIZE);
    }

    public IAnnotationModel createAnnotationModel(IPath location, LocationKind locationKind) {
        Assert.isNotNull((Object)location);
        IAnnotationModelFactory factory = this.fRegistry.getAnnotationModelFactory(location, locationKind);
        if (factory != null) {
            return factory.createAnnotationModel(location);
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addFileBufferListener(IFileBufferListener listener) {
        Assert.isNotNull((Object)listener);
        List list = this.fFileBufferListeners;
        synchronized (list) {
            if (!this.fFileBufferListeners.contains(listener)) {
                this.fFileBufferListeners.add(listener);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeFileBufferListener(IFileBufferListener listener) {
        Assert.isNotNull((Object)listener);
        List list = this.fFileBufferListeners;
        synchronized (list) {
            this.fFileBufferListeners.remove(listener);
        }
    }

    public void setSynchronizationContext(ISynchronizationContext context) {
        this.fSynchronizationContext = context;
    }

    public void requestSynchronizationContext(IPath location) {
        Assert.isNotNull((Object)location);
        location = this.normalizeLocation(location);
        AbstractFileBuffer fileBuffer = this.internalGetFileBuffer(location);
        if (fileBuffer != null) {
            fileBuffer.requestSynchronizationContext();
        }
    }

    public void releaseSynchronizationContext(IPath location) {
        Assert.isNotNull((Object)location);
        location = this.normalizeLocation(location);
        AbstractFileBuffer fileBuffer = this.internalGetFileBuffer(location);
        if (fileBuffer != null) {
            fileBuffer.releaseSynchronizationContext();
        }
    }

    public void execute(Runnable runnable) {
        if (this.fSynchronizationContext != null) {
            this.fSynchronizationContext.run(runnable);
        } else {
            runnable.run();
        }
    }

    private AbstractFileBuffer createFileBuffer(IPath location, LocationKind locationKind) {
        return this.createTextFileBuffer(location, locationKind);
    }

    protected AbstractFileBuffer createTextFileBuffer(IPath location, LocationKind locationKind) {
        Assert.isLegal((locationKind != LocationKind.IFILE ? 1 : 0) != 0);
        return new FileStoreTextFileBuffer(this);
    }

    private FileStoreFileBuffer createFileBuffer(IFileStore location) {
        return this.createTextFileBuffer(location);
    }

    protected FileStoreFileBuffer createTextFileBuffer(IFileStore location) {
        return new FileStoreTextFileBuffer(this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Iterator getFileBufferListenerIterator() {
        List list = this.fFileBufferListeners;
        synchronized (list) {
            return new ArrayList(this.fFileBufferListeners).iterator();
        }
    }

    protected void fireDirtyStateChanged(final IFileBuffer buffer, final boolean isDirty) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.dirtyStateChanged(buffer, isDirty);
                }
            });
        }
    }

    protected void fireBufferContentAboutToBeReplaced(final IFileBuffer buffer) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.bufferContentAboutToBeReplaced(buffer);
                }
            });
        }
    }

    protected void fireBufferContentReplaced(final IFileBuffer buffer) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.bufferContentReplaced(buffer);
                }
            });
        }
    }

    protected void fireUnderlyingFileMoved(final IFileBuffer buffer, final IPath target) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.underlyingFileMoved(buffer, target);
                }
            });
        }
    }

    protected void fireUnderlyingFileDeleted(final IFileBuffer buffer) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.underlyingFileDeleted(buffer);
                }
            });
        }
    }

    protected void fireStateValidationChanged(final IFileBuffer buffer, final boolean isStateValidated) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.stateValidationChanged(buffer, isStateValidated);
                }
            });
        }
    }

    protected void fireStateChanging(final IFileBuffer buffer) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.stateChanging(buffer);
                }
            });
        }
    }

    protected void fireStateChangeFailed(final IFileBuffer buffer) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.stateChangeFailed(buffer);
                }
            });
        }
    }

    protected void fireBufferCreated(final IFileBuffer buffer) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.bufferCreated(buffer);
                }
            });
        }
    }

    protected void fireBufferDisposed(final IFileBuffer buffer) {
        Iterator e = this.getFileBufferListenerIterator();
        while (e.hasNext()) {
            final IFileBufferListener l = (IFileBufferListener)e.next();
            SafeRunner.run((ISafeRunnable)new SafeNotifier(){

                public void run() {
                    l.bufferDisposed(buffer);
                }
            });
        }
    }

    public void validateState(IFileBuffer[] fileBuffers, IProgressMonitor monitor, Object computationContext) throws CoreException {
    }

    protected String getLineDelimiterPreference(IPath location, LocationKind locationKind) {
        return System.getProperty("line.separator");
    }

    private static abstract class SafeNotifier
    implements ISafeRunnable {
        private SafeNotifier() {
        }

        public void handleException(Throwable ex) {
        }
    }
}

