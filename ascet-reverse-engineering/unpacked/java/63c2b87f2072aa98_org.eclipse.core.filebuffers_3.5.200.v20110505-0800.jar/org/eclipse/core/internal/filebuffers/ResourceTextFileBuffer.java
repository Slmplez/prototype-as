/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentExtension4
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.core.internal.filebuffers;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.SequenceInputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnmappableCharacterException;
import java.nio.charset.UnsupportedCharsetException;
import org.eclipse.core.filebuffers.IPersistableAnnotationModel;
import org.eclipse.core.filebuffers.ITextFileBuffer;
import org.eclipse.core.filebuffers.manipulation.ContainerCreator;
import org.eclipse.core.internal.filebuffers.DocumentReader;
import org.eclipse.core.internal.filebuffers.FileBuffersMessages;
import org.eclipse.core.internal.filebuffers.NLSUtility;
import org.eclipse.core.internal.filebuffers.Progress;
import org.eclipse.core.internal.filebuffers.ResourceFileBuffer;
import org.eclipse.core.internal.filebuffers.ResourceTextFileBufferManager;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.source.IAnnotationModel;

public class ResourceTextFileBuffer
extends ResourceFileBuffer
implements ITextFileBuffer {
    private static final int READER_CHUNK_SIZE = 2048;
    private static final int BUFFER_SIZE = 16384;
    private static final QualifiedName ENCODING_KEY = new QualifiedName("org.eclipse.core.filebuffers", "encoding");
    private static final IStatus STATUS_ERROR = new Status(4, "org.eclipse.core.filebuffers", 0, FileBuffersMessages.FileBuffer_status_error, null);
    private static final String CHARSET_UTF_8 = "UTF-8";
    private static final String CHARSET_UTF_16 = "UTF-16";
    private static final String CHARSET_UTF_16LE = "UTF-16LE";
    private static final QualifiedName[] NO_PROPERTIES = new QualifiedName[0];
    protected IDocument fDocument;
    protected String fEncoding;
    protected IDocumentListener fDocumentListener = new DocumentListener();
    protected IAnnotationModel fAnnotationModel;
    private String fExplicitEncoding;
    private byte[] fBOM;
    private final Object fAnnotationModelCreationLock = new Object();

    public ResourceTextFileBuffer(ResourceTextFileBufferManager manager) {
        super(manager);
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IAnnotationModel getAnnotationModel() {
        Object object = this.fAnnotationModelCreationLock;
        synchronized (object) {
            if (this.fAnnotationModel == null && !this.isDisconnected()) {
                this.fAnnotationModel = this.getManager().createAnnotationModel(this.fFile);
                if (this.fAnnotationModel != null) {
                    this.fAnnotationModel.connect(this.fDocument);
                }
            }
        }
        return this.fAnnotationModel;
    }

    private ResourceTextFileBufferManager getManager() {
        return (ResourceTextFileBufferManager)this.fManager;
    }

    public String getEncoding() {
        return this.fEncoding;
    }

    public void setEncoding(String encoding) {
        this.fEncoding = encoding;
        this.fExplicitEncoding = encoding;
        this.fBOM = null;
        try {
            this.fFile.setCharset(encoding, null);
            if (encoding == null) {
                this.fEncoding = this.fFile.getCharset();
            }
            this.cacheBOM();
        }
        catch (CoreException x) {
            this.handleCoreException(x);
        }
    }

    public IStatus getStatus() {
        if (!this.isDisconnected()) {
            if (this.fStatus != null) {
                return this.fStatus;
            }
            return this.fDocument == null ? STATUS_ERROR : Status.OK_STATUS;
        }
        return STATUS_ERROR;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public IContentType getContentType() throws CoreException {
        try {
            IContentDescription desc;
            if (this.isDirty()) {
                DocumentReader reader;
                block12: {
                    IContentType iContentType;
                    reader = null;
                    try {
                        reader = new DocumentReader(this.getDocument());
                        IContentDescription desc2 = Platform.getContentTypeManager().getDescriptionFor((Reader)reader, this.fFile.getName(), NO_PROPERTIES);
                        if (desc2 == null || desc2.getContentType() == null) break block12;
                        iContentType = desc2.getContentType();
                    }
                    catch (Throwable throwable) {
                        try {
                            if (reader == null) throw throwable;
                            ((Reader)reader).close();
                            throw throwable;
                        }
                        catch (IOException iOException) {}
                        throw throwable;
                    }
                    try {
                        if (reader == null) return iContentType;
                        ((Reader)reader).close();
                        return iContentType;
                    }
                    catch (IOException iOException) {}
                    return iContentType;
                }
                try {
                    if (reader != null) {
                        ((Reader)reader).close();
                    }
                }
                catch (IOException iOException) {}
            }
            if ((desc = this.fFile.getContentDescription()) == null) return null;
            if (desc.getContentType() == null) return null;
            return desc.getContentType();
        }
        catch (IOException x) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.core.filebuffers", 0, NLSUtility.format(FileBuffersMessages.FileBuffer_error_queryContentDescription, this.fFile.getFullPath().toOSString()), (Throwable)x));
        }
    }

    protected void addFileBufferContentListeners() {
        if (this.fDocument != null) {
            this.fDocument.addDocumentListener(this.fDocumentListener);
        }
    }

    protected void removeFileBufferContentListeners() {
        if (this.fDocument != null) {
            this.fDocument.removeDocumentListener(this.fDocumentListener);
        }
    }

    protected void initializeFileBufferContent(IProgressMonitor monitor) throws CoreException {
        try {
            this.fEncoding = null;
            this.fExplicitEncoding = null;
            try {
                this.fEncoding = this.fFile.getPersistentProperty(ENCODING_KEY);
            }
            catch (CoreException coreException) {}
            if (this.fEncoding != null) {
                try {
                    this.fExplicitEncoding = this.fEncoding;
                    this.fFile.setCharset(this.fEncoding, monitor);
                    this.fFile.setPersistentProperty(ENCODING_KEY, null);
                }
                catch (CoreException ex) {
                    this.handleCoreException(ex);
                }
                this.cacheBOM();
            } else {
                this.cacheEncodingState();
            }
            this.fDocument = this.getManager().createEmptyDocument(this.fFile);
            this.setDocumentContent(this.fDocument, this.fFile, this.fEncoding);
        }
        catch (CoreException x) {
            this.fDocument = this.getManager().createEmptyDocument(this.fFile);
            this.fStatus = x.getStatus();
        }
    }

    protected void cacheBOM() throws CoreException {
        this.fBOM = null;
        IContentDescription description = this.fFile.getContentDescription();
        if (description != null) {
            this.fBOM = (byte[])description.getProperty(IContentDescription.BYTE_ORDER_MARK);
        }
    }

    protected void connected() {
        super.connected();
        if (this.fAnnotationModel != null) {
            this.fAnnotationModel.connect(this.fDocument);
        }
    }

    protected void dispose() {
        try {
            this.fDocument.removePositionCategory("__dflt_position_category");
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
        if (this.fAnnotationModel != null) {
            this.fAnnotationModel.disconnect(this.fDocument);
        }
        this.fDocument = null;
        super.dispose();
    }

    protected void commitFileBufferContent(IProgressMonitor monitor, boolean overwrite) throws CoreException {
        InputStream stream;
        Charset charset;
        String encoding = this.computeEncoding();
        if (this.fBOM == IContentDescription.BOM_UTF_16LE && CHARSET_UTF_16.equals(encoding)) {
            encoding = CHARSET_UTF_16LE;
        }
        try {
            charset = Charset.forName(encoding);
        }
        catch (UnsupportedCharsetException ex) {
            String message = NLSUtility.format(FileBuffersMessages.ResourceTextFileBuffer_error_unsupported_encoding_message_arg, encoding);
            Status s = new Status(4, "org.eclipse.core.filebuffers", 0, message, (Throwable)ex);
            throw new CoreException((IStatus)s);
        }
        catch (IllegalCharsetNameException ex) {
            String message = NLSUtility.format(FileBuffersMessages.ResourceTextFileBuffer_error_illegal_encoding_message_arg, encoding);
            Status s = new Status(4, "org.eclipse.core.filebuffers", 0, message, (Throwable)ex);
            throw new CoreException((IStatus)s);
        }
        CharsetEncoder encoder = charset.newEncoder();
        encoder.onMalformedInput(CodingErrorAction.REPLACE);
        encoder.onUnmappableCharacter(CodingErrorAction.REPORT);
        try {
            byte[] bytes;
            ByteBuffer byteBuffer = encoder.encode(CharBuffer.wrap(this.fDocument.get()));
            if (byteBuffer.hasArray()) {
                bytes = byteBuffer.array();
            } else {
                bytes = new byte[byteBuffer.limit()];
                byteBuffer.get(bytes);
            }
            stream = new ByteArrayInputStream(bytes, 0, byteBuffer.limit());
        }
        catch (CharacterCodingException ex) {
            Assert.isTrue((boolean)(ex instanceof UnmappableCharacterException));
            String message = NLSUtility.format(FileBuffersMessages.ResourceTextFileBuffer_error_charset_mapping_failed_message_arg, encoding);
            Status s = new Status(4, "org.eclipse.core.filebuffers", 3, message, (Throwable)ex);
            throw new CoreException((IStatus)s);
        }
        if (this.fBOM == IContentDescription.BOM_UTF_8 && CHARSET_UTF_8.equals(encoding)) {
            stream = new SequenceInputStream(new ByteArrayInputStream(IContentDescription.BOM_UTF_8), stream);
        }
        if (this.fBOM == IContentDescription.BOM_UTF_16LE && CHARSET_UTF_16LE.equals(encoding)) {
            stream = new SequenceInputStream(new ByteArrayInputStream(IContentDescription.BOM_UTF_16LE), stream);
        }
        if (this.fFile.exists()) {
            this.fFile.setContents(stream, overwrite, true, monitor);
            if (this.fDocument instanceof IDocumentExtension4) {
                this.fSynchronizationStamp = ((IDocumentExtension4)this.fDocument).getModificationStamp();
                this.fFile.revertModificationStamp(this.fSynchronizationStamp);
            } else {
                this.fSynchronizationStamp = this.fFile.getModificationStamp();
            }
            if (this.fAnnotationModel instanceof IPersistableAnnotationModel) {
                IPersistableAnnotationModel persistableModel = (IPersistableAnnotationModel)this.fAnnotationModel;
                persistableModel.commit(this.fDocument);
            }
        } else {
            monitor = Progress.getMonitor(monitor);
            try {
                monitor.beginTask(FileBuffersMessages.ResourceTextFileBuffer_task_saving, 2);
                ContainerCreator creator = new ContainerCreator(this.fFile.getWorkspace(), this.fFile.getParent().getFullPath());
                SubProgressMonitor subMonitor = new SubProgressMonitor(monitor, 1);
                creator.createContainer((IProgressMonitor)subMonitor);
                subMonitor.done();
                subMonitor = new SubProgressMonitor(monitor, 1);
                this.fFile.create(stream, false, (IProgressMonitor)subMonitor);
                subMonitor.done();
            }
            finally {
                monitor.done();
            }
            this.fSynchronizationStamp = this.fFile.getModificationStamp();
        }
    }

    /*
     * Loose catch block
     */
    private String computeEncoding() {
        block17: {
            DocumentReader reader;
            block16: {
                String encoding;
                if (this.fExplicitEncoding != null) {
                    return this.fExplicitEncoding;
                }
                reader = new DocumentReader(this.fDocument);
                QualifiedName[] options = new QualifiedName[]{IContentDescription.CHARSET, IContentDescription.BYTE_ORDER_MARK};
                IContentDescription description = Platform.getContentTypeManager().getDescriptionFor((Reader)reader, this.fFile.getName(), options);
                if (description == null || (encoding = description.getCharset()) == null) break block16;
                String string = encoding;
                try {
                    ((Reader)reader).close();
                }
                catch (IOException iOException) {}
                return string;
                catch (IOException iOException) {
                    try {}
                    catch (Throwable throwable) {
                        try {
                            ((Reader)reader).close();
                        }
                        catch (IOException iOException2) {}
                        throw throwable;
                    }
                    try {
                        ((Reader)reader).close();
                    }
                    catch (IOException iOException3) {}
                    break block17;
                }
            }
            try {
                ((Reader)reader).close();
            }
            catch (IOException iOException) {}
        }
        if (this.fBOM != null) {
            return this.fEncoding;
        }
        try {
            return this.fFile.getParent().getDefaultCharset();
        }
        catch (CoreException coreException) {
            return this.fManager.getDefaultEncoding();
        }
    }

    protected void cacheEncodingState() throws CoreException {
        this.fExplicitEncoding = this.fFile.getCharset(false);
        this.fEncoding = this.fExplicitEncoding != null ? this.fExplicitEncoding : this.fFile.getCharset();
        this.cacheBOM();
    }

    protected void handleFileContentChanged(boolean revert, boolean updateModificationStamp) throws CoreException {
        boolean replaceContent;
        IDocument document = this.getManager().createEmptyDocument(this.fFile);
        IStatus status = null;
        try {
            this.cacheEncodingState();
            this.setDocumentContent(document, this.fFile, this.fEncoding);
        }
        catch (CoreException x) {
            status = x.getStatus();
        }
        String newContent = document.get();
        boolean bl = replaceContent = updateModificationStamp || !newContent.equals(this.fDocument.get());
        if (replaceContent) {
            this.fManager.fireBufferContentAboutToBeReplaced(this);
        }
        this.removeFileBufferContentListeners();
        this.fSynchronizationStamp = this.fFile.getModificationStamp();
        if (replaceContent) {
            if (this.fDocument instanceof IDocumentExtension4) {
                ((IDocumentExtension4)this.fDocument).set(newContent, this.fSynchronizationStamp);
            } else {
                this.fDocument.set(newContent);
            }
        }
        this.fCanBeSaved = false;
        this.fStatus = status;
        this.addFileBufferContentListeners();
        if (replaceContent) {
            this.fManager.fireBufferContentReplaced(this);
        }
        if (this.fAnnotationModel instanceof IPersistableAnnotationModel) {
            IPersistableAnnotationModel persistableModel = (IPersistableAnnotationModel)this.fAnnotationModel;
            try {
                if (revert) {
                    persistableModel.revert(this.fDocument);
                } else {
                    persistableModel.reinitialize(this.fDocument);
                }
            }
            catch (CoreException x) {
                this.fStatus = x.getStatus();
            }
        }
        this.fManager.fireDirtyStateChanged(this, this.fCanBeSaved);
    }

    private void setDocumentContent(IDocument document, IFile file, String encoding) throws CoreException {
        InputStream contentStream = file.getContents();
        Reader in = null;
        try {
            try {
                if (encoding == null) {
                    encoding = this.fManager.getDefaultEncoding();
                }
                if (this.fBOM != null && CHARSET_UTF_8.equals(encoding)) {
                    int bytes;
                    int n = 0;
                    do {
                        if ((bytes = contentStream.read(new byte[IContentDescription.BOM_UTF_8.length])) != -1) continue;
                        throw new IOException();
                    } while ((n += bytes) < IContentDescription.BOM_UTF_8.length);
                }
                in = new BufferedReader(new InputStreamReader(contentStream, encoding), 16384);
                StringBuffer buffer = new StringBuffer(16384);
                char[] readBuffer = new char[2048];
                int n = in.read(readBuffer);
                while (n > 0) {
                    buffer.append(readBuffer, 0, n);
                    n = in.read(readBuffer);
                }
                if (document instanceof IDocumentExtension4) {
                    ((IDocumentExtension4)document).set(buffer.toString(), this.fFile.getModificationStamp());
                } else {
                    document.set(buffer.toString());
                }
            }
            catch (IOException x) {
                String message = x.getMessage() != null ? x.getMessage() : "";
                Status s = new Status(4, "org.eclipse.core.filebuffers", 0, message, (Throwable)x);
                throw new CoreException((IStatus)s);
            }
        }
        catch (Throwable throwable) {
            try {
                if (in != null) {
                    in.close();
                } else {
                    contentStream.close();
                }
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            if (in != null) {
                in.close();
            } else {
                contentStream.close();
            }
        }
        catch (IOException iOException) {}
    }

    private class DocumentListener
    implements IDocumentListener {
        private DocumentListener() {
        }

        public void documentAboutToBeChanged(DocumentEvent event) {
        }

        public void documentChanged(DocumentEvent event) {
            if (ResourceTextFileBuffer.this.fCanBeSaved && ResourceTextFileBuffer.this.fSynchronizationStamp == event.getModificationStamp()) {
                ResourceTextFileBuffer.this.fCanBeSaved = false;
                ResourceTextFileBuffer.this.fManager.fireDirtyStateChanged(ResourceTextFileBuffer.this, ResourceTextFileBuffer.this.fCanBeSaved);
            } else if (!ResourceTextFileBuffer.this.fCanBeSaved) {
                ResourceTextFileBuffer.this.fCanBeSaved = true;
                ResourceTextFileBuffer.this.fManager.fireDirtyStateChanged(ResourceTextFileBuffer.this, ResourceTextFileBuffer.this.fCanBeSaved);
            }
        }
    }
}

