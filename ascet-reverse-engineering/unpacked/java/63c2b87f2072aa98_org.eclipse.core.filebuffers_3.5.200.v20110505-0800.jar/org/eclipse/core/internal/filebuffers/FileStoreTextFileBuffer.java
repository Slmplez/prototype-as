/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.core.internal.filebuffers;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
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
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.filebuffers.DocumentReader;
import org.eclipse.core.internal.filebuffers.FileBuffersMessages;
import org.eclipse.core.internal.filebuffers.FileBuffersPlugin;
import org.eclipse.core.internal.filebuffers.FileStoreFileBuffer;
import org.eclipse.core.internal.filebuffers.NLSUtility;
import org.eclipse.core.internal.filebuffers.TextFileBufferManager;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.source.IAnnotationModel;

public class FileStoreTextFileBuffer
extends FileStoreFileBuffer
implements ITextFileBuffer {
    private static final int READER_CHUNK_SIZE = 2048;
    private static final int BUFFER_SIZE = 16384;
    private static final IStatus STATUS_ERROR = new Status(4, "org.eclipse.core.filebuffers", 0, FileBuffersMessages.FileBuffer_status_error, null);
    private static final String CHARSET_UTF_8 = "UTF-8";
    private static final QualifiedName[] NO_PROPERTIES = new QualifiedName[0];
    protected IDocument fDocument;
    protected String fEncoding;
    protected IDocumentListener fDocumentListener = new DocumentListener();
    private String fExplicitEncoding;
    private boolean fHasBOM;
    private IAnnotationModel fAnnotationModel;
    private final Object fAnnotationModelCreationLock = new Object();
    private boolean fIsCacheUpdated = false;

    public FileStoreTextFileBuffer(TextFileBufferManager manager) {
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
                this.fAnnotationModel = this.fManager.createAnnotationModel(this.getLocationOrName(), LocationKind.LOCATION);
                if (this.fAnnotationModel != null) {
                    this.fAnnotationModel.connect(this.fDocument);
                }
            }
        }
        return this.fAnnotationModel;
    }

    public String getEncoding() {
        if (!this.fIsCacheUpdated) {
            this.cacheEncodingState();
        }
        return this.fEncoding;
    }

    public void setEncoding(String encoding) {
        this.fExplicitEncoding = encoding;
        if (encoding == null || encoding.equals(this.fEncoding)) {
            this.fIsCacheUpdated = false;
        } else {
            this.fEncoding = encoding;
            this.fHasBOM = false;
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

    private InputStream getFileContents(IFileStore fileStore) throws CoreException {
        if (!this.fFileStore.fetchInfo().exists()) {
            return null;
        }
        return fileStore.openInputStream(0, null);
    }

    private void setFileContents(InputStream stream, IProgressMonitor monitor) throws CoreException {
        block30: {
            OutputStream out = this.fFileStore.openOutputStream(0, null);
            try {
                try {
                    byte[] buffer = new byte[8192];
                    while (true) {
                        int bytesRead = -1;
                        bytesRead = stream.read(buffer);
                        if (bytesRead == -1) {
                            out.close();
                            break;
                        }
                        out.write(buffer, 0, bytesRead);
                        if (monitor == null) continue;
                        monitor.worked(1);
                    }
                }
                catch (IOException ex) {
                    String message = ex.getMessage() != null ? ex.getMessage() : "";
                    Status s = new Status(4, "org.eclipse.core.filebuffers", 0, message, (Throwable)ex);
                    throw new CoreException((IStatus)s);
                }
            }
            catch (Throwable throwable) {
                block28: {
                    try {
                        try {
                            stream.close();
                        }
                        catch (IOException iOException) {
                            try {
                                out.close();
                            }
                            catch (IOException iOException2) {}
                            break block28;
                        }
                    }
                    catch (Throwable throwable2) {
                        try {
                            out.close();
                        }
                        catch (IOException iOException) {}
                        throw throwable2;
                    }
                    try {
                        out.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            try {
                try {
                    stream.close();
                }
                catch (IOException iOException) {
                    try {
                        out.close();
                    }
                    catch (IOException iOException3) {}
                    break block30;
                }
            }
            catch (Throwable throwable) {
                try {
                    out.close();
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                out.close();
            }
            catch (IOException iOException) {}
        }
    }

    public void revert(IProgressMonitor monitor) throws CoreException {
        boolean replaceContents;
        if (this.isDisconnected()) {
            return;
        }
        IDocument original = null;
        this.fStatus = null;
        try {
            original = this.fManager.createEmptyDocument(this.getLocationOrName(), LocationKind.LOCATION);
            this.cacheEncodingState();
            this.setDocumentContent(original, this.fFileStore, this.fEncoding, this.fHasBOM, monitor);
        }
        catch (CoreException x) {
            this.fStatus = x.getStatus();
        }
        if (original == null) {
            return;
        }
        String originalContents = original.get();
        boolean bl = replaceContents = !originalContents.equals(this.fDocument.get());
        if (!replaceContents && !this.fCanBeSaved) {
            return;
        }
        this.fManager.fireStateChanging(this);
        try {
            IFileInfo info;
            if (replaceContents) {
                this.fManager.fireBufferContentAboutToBeReplaced(this);
                this.fDocument.set(original.get());
            }
            boolean fireDirtyStateChanged = this.fCanBeSaved;
            if (this.fCanBeSaved) {
                this.fCanBeSaved = false;
                this.addFileBufferContentListeners();
            }
            if (replaceContents) {
                this.fManager.fireBufferContentReplaced(this);
            }
            if ((info = this.fFileStore.fetchInfo()).exists()) {
                this.fSynchronizationStamp = this.fFileStore.fetchInfo().getLastModified();
            }
            if (this.fAnnotationModel instanceof IPersistableAnnotationModel) {
                IPersistableAnnotationModel persistableModel = (IPersistableAnnotationModel)this.fAnnotationModel;
                try {
                    persistableModel.revert(this.fDocument);
                }
                catch (CoreException x) {
                    this.fStatus = x.getStatus();
                }
            }
            if (fireDirtyStateChanged) {
                this.fManager.fireDirtyStateChanged(this, this.fCanBeSaved);
            }
        }
        catch (RuntimeException x) {
            this.fManager.fireStateChangeFailed(this);
            throw x;
        }
    }

    /*
     * Exception decompiling
     */
    public IContentType getContentType() throws CoreException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK], 13[CATCHBLOCK]], but top level block is 4[TRYBLOCK]
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
            this.fDocument = this.fManager.createEmptyDocument(this.getLocationOrName(), LocationKind.LOCATION);
            this.cacheEncodingState();
            this.setDocumentContent(this.fDocument, this.fFileStore, this.fEncoding, this.fHasBOM, monitor);
        }
        catch (CoreException x) {
            this.fDocument = this.fManager.createEmptyDocument(this.getLocationOrName(), LocationKind.LOCATION);
            this.fStatus = x.getStatus();
        }
    }

    protected void connected() {
        super.connected();
        if (this.fAnnotationModel != null) {
            this.fAnnotationModel.connect(this.fDocument);
        }
    }

    protected void disconnected() {
        if (this.fAnnotationModel != null) {
            this.fAnnotationModel.disconnect(this.fDocument);
        }
        super.disconnected();
    }

    protected void cacheEncodingState() {
        this.fEncoding = this.fExplicitEncoding;
        this.fHasBOM = false;
        this.fIsCacheUpdated = true;
        InputStream stream = null;
        try {
            stream = this.getFileContents(this.fFileStore);
            if (stream == null) {
                return;
            }
            try {
                QualifiedName[] options = new QualifiedName[]{IContentDescription.CHARSET, IContentDescription.BYTE_ORDER_MARK};
                IContentDescription description = Platform.getContentTypeManager().getDescriptionFor(stream, this.fFileStore.getName(), options);
                if (description != null) {
                    boolean bl = this.fHasBOM = description.getProperty(IContentDescription.BYTE_ORDER_MARK) != null;
                    if (this.fEncoding == null) {
                        this.fEncoding = description.getCharset();
                    }
                }
            }
            catch (CoreException coreException) {
            }
            catch (IOException iOException) {}
        }
        finally {
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException ex) {
                FileBuffersPlugin.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.core.filebuffers", 0, FileBuffersMessages.JavaTextFileBuffer_error_closeStream, (Throwable)ex));
            }
        }
    }

    protected void commitFileBufferContent(IProgressMonitor monitor, boolean overwrite) throws CoreException {
        byte[] bytes;
        int bytesLength;
        Charset charset;
        String encoding = this.computeEncoding();
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
            ByteBuffer byteBuffer = encoder.encode(CharBuffer.wrap(this.fDocument.get()));
            bytesLength = byteBuffer.limit();
            if (byteBuffer.hasArray()) {
                bytes = byteBuffer.array();
            } else {
                bytes = new byte[bytesLength];
                byteBuffer.get(bytes);
            }
        }
        catch (CharacterCodingException ex) {
            Assert.isTrue((boolean)(ex instanceof UnmappableCharacterException));
            String message = NLSUtility.format(FileBuffersMessages.ResourceTextFileBuffer_error_charset_mapping_failed_message_arg, encoding);
            Status s = new Status(4, "org.eclipse.core.filebuffers", 3, message, null);
            throw new CoreException((IStatus)s);
        }
        IFileInfo fileInfo = this.fFileStore.fetchInfo();
        if (fileInfo != null && fileInfo.exists()) {
            if (!overwrite) {
                this.checkSynchronizationState();
            }
            InputStream stream = new ByteArrayInputStream(bytes, 0, bytesLength);
            if (this.fHasBOM && CHARSET_UTF_8.equals(encoding)) {
                stream = new SequenceInputStream(new ByteArrayInputStream(IContentDescription.BOM_UTF_8), stream);
            }
            this.setFileContents(stream, monitor);
            this.fSynchronizationStamp = this.fFileStore.fetchInfo().getLastModified();
            if (this.fAnnotationModel instanceof IPersistableAnnotationModel) {
                IPersistableAnnotationModel persistableModel = (IPersistableAnnotationModel)this.fAnnotationModel;
                persistableModel.commit(this.fDocument);
            }
        } else {
            this.fFileStore.getParent().mkdir(0, null);
            OutputStream out = this.fFileStore.openOutputStream(0, null);
            try {
                try {
                    if (this.fHasBOM && CHARSET_UTF_8.equals(encoding)) {
                        out.write(IContentDescription.BOM_UTF_8);
                    }
                    out.write(bytes, 0, bytesLength);
                    out.flush();
                    out.close();
                }
                catch (IOException x) {
                    Status s = new Status(4, "org.eclipse.core.filebuffers", 0, x.getLocalizedMessage(), (Throwable)x);
                    throw new CoreException((IStatus)s);
                }
            }
            catch (Throwable throwable) {
                try {
                    out.close();
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                out.close();
            }
            catch (IOException iOException) {}
            this.fSynchronizationStamp = this.fFileStore.fetchInfo().getLastModified();
        }
    }

    /*
     * Loose catch block
     */
    private String computeEncoding() {
        block16: {
            DocumentReader reader;
            block15: {
                String encoding;
                if (!this.fIsCacheUpdated) {
                    this.cacheEncodingState();
                }
                if (this.fExplicitEncoding != null) {
                    return this.fExplicitEncoding;
                }
                reader = new DocumentReader(this.fDocument);
                QualifiedName[] options = new QualifiedName[]{IContentDescription.CHARSET, IContentDescription.BYTE_ORDER_MARK};
                IContentDescription description = Platform.getContentTypeManager().getDescriptionFor((Reader)reader, this.fFileStore.getName(), options);
                if (description == null || (encoding = description.getCharset()) == null) break block15;
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
                    break block16;
                }
            }
            try {
                ((Reader)reader).close();
            }
            catch (IOException iOException) {}
        }
        if (this.fHasBOM) {
            return this.fEncoding;
        }
        return this.fManager.getDefaultEncoding();
    }

    private void setDocumentContent(IDocument document, IFileStore file, String encoding, boolean hasBOM, IProgressMonitor monitor) throws CoreException {
        InputStream contentStream = this.getFileContents(file);
        if (contentStream == null) {
            return;
        }
        Reader in = null;
        try {
            try {
                if (encoding == null) {
                    encoding = this.fManager.getDefaultEncoding();
                }
                if (hasBOM && CHARSET_UTF_8.equals(encoding)) {
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
                document.set(buffer.toString());
            }
            catch (IOException x) {
                String msg = x.getMessage() == null ? "" : x.getMessage();
                Status s = new Status(4, "org.eclipse.core.filebuffers", 0, msg, (Throwable)x);
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

    private void checkSynchronizationState() throws CoreException {
        if (!this.isSynchronized()) {
            Status status = new Status(4, "org.eclipse.core.filebuffers", 274, FileBuffersMessages.FileBuffer_error_outOfSync, null);
            throw new CoreException((IStatus)status);
        }
    }

    private IPath getLocationOrName() {
        IPath path = this.getLocation();
        if (path == null) {
            path = new Path(this.fFileStore.getName());
        }
        return path;
    }

    private class DocumentListener
    implements IDocumentListener {
        private DocumentListener() {
        }

        public void documentAboutToBeChanged(DocumentEvent event) {
        }

        public void documentChanged(DocumentEvent event) {
            FileStoreTextFileBuffer.this.fCanBeSaved = true;
            FileStoreTextFileBuffer.this.removeFileBufferContentListeners();
            FileStoreTextFileBuffer.this.fManager.fireDirtyStateChanged(FileStoreTextFileBuffer.this, FileStoreTextFileBuffer.this.fCanBeSaved);
        }
    }
}

