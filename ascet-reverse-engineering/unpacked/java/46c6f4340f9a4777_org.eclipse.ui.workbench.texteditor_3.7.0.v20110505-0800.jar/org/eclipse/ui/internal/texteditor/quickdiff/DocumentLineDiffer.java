/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.compare.rangedifferencer.AbstractRangeDifferenceFactory
 *  org.eclipse.compare.rangedifferencer.IRangeComparator
 *  org.eclipse.compare.rangedifferencer.RangeDifference
 *  org.eclipse.compare.rangedifferencer.RangeDifferencer
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.DocumentRewriteSessionEvent
 *  org.eclipse.jface.text.DocumentRewriteSessionType
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentExtension4
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IDocumentRewriteSessionListener
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ISynchronizable
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.AnnotationModelEvent
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelListener
 *  org.eclipse.jface.text.source.IAnnotationModelListenerExtension
 *  org.eclipse.jface.text.source.ILineDiffInfo
 *  org.eclipse.jface.text.source.ILineDiffer
 *  org.eclipse.jface.text.source.ILineDifferExtension
 *  org.eclipse.jface.text.source.ILineDifferExtension2
 *  org.eclipse.jface.text.source.ILineRange
 *  org.eclipse.jface.text.source.LineRange
 *  org.eclipse.ui.progress.IProgressConstants
 */
package org.eclipse.ui.internal.texteditor.quickdiff;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.compare.rangedifferencer.AbstractRangeDifferenceFactory;
import org.eclipse.compare.rangedifferencer.IRangeComparator;
import org.eclipse.compare.rangedifferencer.RangeDifference;
import org.eclipse.compare.rangedifferencer.RangeDifferencer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.DocumentRewriteSessionEvent;
import org.eclipse.jface.text.DocumentRewriteSessionType;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IDocumentRewriteSessionListener;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ISynchronizable;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationModelEvent;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelListener;
import org.eclipse.jface.text.source.IAnnotationModelListenerExtension;
import org.eclipse.jface.text.source.ILineDiffInfo;
import org.eclipse.jface.text.source.ILineDiffer;
import org.eclipse.jface.text.source.ILineDifferExtension;
import org.eclipse.jface.text.source.ILineDifferExtension2;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.LineRange;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.quickdiff.DiffRegion;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffMessages;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffRangeDifference;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.DJBHashFunction;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.DocEquivalenceComparator;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.DocumentEquivalenceClass;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.texteditor.quickdiff.IQuickDiffReferenceProvider;

public class DocumentLineDiffer
implements ILineDiffer,
IDocumentListener,
IAnnotationModel,
ILineDifferExtension,
ILineDifferExtension2 {
    private static boolean DEBUG = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.ui.workbench.texteditor/debug/DocumentLineDiffer"));
    private static final int INITIALIZE_DELAY = 500;
    private static final int SUSPENDED = 0;
    private static final int INITIALIZING = 1;
    private static final int SYNCHRONIZED = 2;
    private int fState = 0;
    private final ILineDiffInfo fLineChangeInfo = new LineChangeInfo();
    IQuickDiffReferenceProvider fReferenceProvider;
    private int fOpenConnections;
    private IDocument fLeftDocument;
    private DocumentEquivalenceClass fLeftEquivalent;
    private IDocument fRightDocument;
    private DocumentEquivalenceClass fRightEquivalent;
    private boolean fUpdateNeeded;
    private List fAnnotationModelListeners = new ArrayList();
    private Job fInitializationJob;
    private List fStoredEvents = new ArrayList();
    private List fDifferences = new ArrayList();
    private List fRemoved = new ArrayList();
    private List fAdded = new ArrayList();
    private List fChanged = new ArrayList();
    private int fFirstLine;
    private int fNLines;
    private QuickDiffRangeDifference fLastDifference;
    private boolean fIgnoreDocumentEvents = true;
    private final IDocumentRewriteSessionListener fSessionListener = new IDocumentRewriteSessionListener(){

        public void documentRewriteSessionChanged(DocumentRewriteSessionEvent event) {
            if (event.getSession().getSessionType() == DocumentRewriteSessionType.UNRESTRICTED_SMALL) {
                return;
            }
            if (DocumentRewriteSessionEvent.SESSION_START.equals(event.getChangeType())) {
                DocumentLineDiffer.this.suspend();
            } else if (DocumentRewriteSessionEvent.SESSION_STOP.equals(event.getChangeType())) {
                DocumentLineDiffer.this.resume();
            }
        }
    };
    private Thread fThread;
    private DocumentEvent fLastUIEvent;
    private RangeDifferenceFactory fRangeDiffFactory = new RangeDifferenceFactory();

    public ILineDiffInfo getLineInfo(int line) {
        if (this.isSuspended()) {
            return this.fLineChangeInfo;
        }
        QuickDiffRangeDifference last = this.fLastDifference;
        if (last != null && last.rightStart() <= line && last.rightEnd() > line) {
            return new DiffRegion(last, line - last.rightStart(), this.fDifferences, this.fLeftDocument);
        }
        this.fLastDifference = this.getRangeDifferenceForRightLine(line);
        last = this.fLastDifference;
        if (last != null) {
            return new DiffRegion(last, line - last.rightStart(), this.fDifferences, this.fLeftDocument);
        }
        return null;
    }

    public synchronized void revertLine(int line) throws BadLocationException {
        String replacement;
        if (!this.isInitialized()) {
            throw new BadLocationException(QuickDiffMessages.quickdiff_nonsynchronized);
        }
        DiffRegion region = (DiffRegion)this.getLineInfo(line);
        if (region == null || this.fRightDocument == null || this.fLeftDocument == null) {
            return;
        }
        QuickDiffRangeDifference diff = region.getDifference();
        int rOffset = this.fRightDocument.getLineOffset(line);
        int rLength = this.fRightDocument.getLineLength(line);
        int leftLine = diff.leftStart() + region.getOffset();
        if (leftLine >= diff.leftEnd()) {
            replacement = "";
        } else {
            int lOffset = this.fLeftDocument.getLineOffset(leftLine);
            int lLength = this.fLeftDocument.getLineLength(leftLine);
            replacement = this.fLeftDocument.get(lOffset, lLength);
        }
        this.fRightDocument.replace(rOffset, rLength, replacement);
    }

    public synchronized void revertBlock(int line) throws BadLocationException {
        if (!this.isInitialized()) {
            throw new BadLocationException(QuickDiffMessages.quickdiff_nonsynchronized);
        }
        DiffRegion region = (DiffRegion)this.getLineInfo(line);
        if (region == null || this.fRightDocument == null || this.fLeftDocument == null) {
            return;
        }
        QuickDiffRangeDifference diff = region.getDifference();
        int rOffset = this.fRightDocument.getLineOffset(diff.rightStart());
        int rLength = this.fRightDocument.getLineOffset(diff.rightEnd() - 1) + this.fRightDocument.getLineLength(diff.rightEnd() - 1) - rOffset;
        int lOffset = this.fLeftDocument.getLineOffset(diff.leftStart());
        int lLength = this.fLeftDocument.getLineOffset(diff.leftEnd() - 1) + this.fLeftDocument.getLineLength(diff.leftEnd() - 1) - lOffset;
        this.fRightDocument.replace(rOffset, rLength, this.fLeftDocument.get(lOffset, lLength));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public synchronized void revertSelection(int line, int nLines) throws BadLocationException {
        List differences;
        if (!this.isInitialized()) {
            throw new BadLocationException(QuickDiffMessages.quickdiff_nonsynchronized);
        }
        if (this.fRightDocument == null || this.fLeftDocument == null) {
            return;
        }
        int rOffset = -1;
        int rLength = -1;
        int lOffset = -1;
        int lLength = -1;
        QuickDiffRangeDifference diff = null;
        List list = differences = this.fDifferences;
        synchronized (list) {
            Iterator it = differences.iterator();
            while (it.hasNext()) {
                diff = (QuickDiffRangeDifference)((Object)it.next());
                if (line >= diff.rightEnd()) continue;
                rOffset = this.fRightDocument.getLineOffset(line);
                int leftLine = Math.min(diff.leftStart() + line - diff.rightStart(), diff.leftEnd() - 1);
                lOffset = this.fLeftDocument.getLineOffset(leftLine);
                break;
            }
            if (rOffset == -1 || lOffset == -1) {
                return;
            }
            int to = line + nLines - 1;
            while (it.hasNext()) {
                diff = (QuickDiffRangeDifference)((Object)it.next());
                if (to >= diff.rightEnd()) continue;
                int rEndOffset = this.fRightDocument.getLineOffset(to) + this.fRightDocument.getLineLength(to);
                rLength = rEndOffset - rOffset;
                int leftLine = Math.min(diff.leftStart() + to - diff.rightStart(), diff.leftEnd() - 1);
                int lEndOffset = this.fLeftDocument.getLineOffset(leftLine) + this.fLeftDocument.getLineLength(leftLine);
                lLength = lEndOffset - lOffset;
                break;
            }
        }
        if (rLength == -1 || lLength == -1) {
            return;
        }
        this.fRightDocument.replace(rOffset, rLength, this.fLeftDocument.get(lOffset, lLength));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public synchronized int restoreAfterLine(int line) throws BadLocationException {
        List differences;
        if (!this.isInitialized()) {
            throw new BadLocationException(QuickDiffMessages.quickdiff_nonsynchronized);
        }
        DiffRegion region = (DiffRegion)this.getLineInfo(line);
        if (region == null || this.fRightDocument == null || this.fLeftDocument == null) {
            return 0;
        }
        if (region.getRemovedLinesBelow() < 1) {
            return 0;
        }
        QuickDiffRangeDifference diff = null;
        List list = differences = this.fDifferences;
        synchronized (list) {
            Iterator it = differences.iterator();
            while (it.hasNext()) {
                diff = (QuickDiffRangeDifference)((Object)it.next());
                if (line < diff.rightStart() || line >= diff.rightEnd()) continue;
                if (diff.kind() != 0 || !it.hasNext()) break;
                diff = (QuickDiffRangeDifference)((Object)it.next());
                break;
            }
        }
        if (diff == null) {
            return 0;
        }
        int rOffset = this.fRightDocument.getLineOffset(diff.rightEnd());
        int rLength = 0;
        int leftLine = diff.leftStart() + diff.rightLength();
        int lOffset = this.fLeftDocument.getLineOffset(leftLine);
        int lLength = this.fLeftDocument.getLineOffset(diff.leftEnd() - 1) + this.fLeftDocument.getLineLength(diff.leftEnd() - 1) - lOffset;
        this.fRightDocument.replace(rOffset, rLength, this.fLeftDocument.get(lOffset, lLength));
        return diff.leftLength() - diff.rightLength();
    }

    private boolean isInitialized() {
        return this.fState == 2;
    }

    public synchronized boolean isSynchronized() {
        return this.fState == 2;
    }

    public synchronized boolean isSuspended() {
        return this.fState == 0;
    }

    public void setReferenceProvider(IQuickDiffReferenceProvider provider) {
        Assert.isNotNull((Object)provider);
        if (provider != this.fReferenceProvider) {
            if (this.fReferenceProvider != null) {
                this.fReferenceProvider.dispose();
            }
            this.fReferenceProvider = provider;
            this.initialize();
        }
    }

    public IQuickDiffReferenceProvider getReferenceProvider() {
        return this.fReferenceProvider;
    }

    protected synchronized void initialize() {
        Job oldJob;
        this.fState = 1;
        if (this.fRightDocument == null) {
            return;
        }
        this.fIgnoreDocumentEvents = true;
        if (this.fLeftDocument != null) {
            this.fLeftDocument.removeDocumentListener((IDocumentListener)this);
            this.fLeftDocument = null;
            this.fLeftEquivalent = null;
        }
        if ((oldJob = this.fInitializationJob) != null) {
            if (oldJob.getState() == 2) {
                oldJob.wakeUp(500L);
                return;
            }
            oldJob.cancel();
        }
        this.fInitializationJob = new Job(QuickDiffMessages.quickdiff_initialize){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public IStatus run(IProgressMonitor monitor) {
                DocumentLineDiffer documentLineDiffer;
                IDocument left;
                if (oldJob != null) {
                    try {
                        oldJob.join();
                    }
                    catch (InterruptedException interruptedException) {
                        Assert.isTrue((boolean)false);
                    }
                }
                IQuickDiffReferenceProvider provider = DocumentLineDiffer.this.fReferenceProvider;
                try {
                    left = provider == null ? null : provider.getReference(monitor);
                }
                catch (CoreException e) {
                    DocumentLineDiffer documentLineDiffer2 = DocumentLineDiffer.this;
                    synchronized (documentLineDiffer2) {
                        if (this.isCanceled(monitor)) {
                            return Status.CANCEL_STATUS;
                        }
                        this.clearModel();
                        DocumentLineDiffer.this.fireModelChanged();
                        return e.getStatus();
                    }
                }
                catch (OperationCanceledException operationCanceledException) {
                    return Status.CANCEL_STATUS;
                }
                IDocument right = DocumentLineDiffer.this.fRightDocument;
                IDocument actual = null;
                IDocument reference = null;
                DocumentLineDiffer documentLineDiffer3 = DocumentLineDiffer.this;
                synchronized (documentLineDiffer3) {
                    if (left == null || right == null) {
                        if (this.isCanceled(monitor)) {
                            return Status.CANCEL_STATUS;
                        }
                        this.clearModel();
                        DocumentLineDiffer.this.fireModelChanged();
                        return Status.OK_STATUS;
                    }
                    DocumentLineDiffer.this.fLeftDocument = left;
                    DocumentLineDiffer.this.fIgnoreDocumentEvents = false;
                }
                left.addDocumentListener((IDocumentListener)DocumentLineDiffer.this);
                reference = this.createCopy(left);
                if (reference == null) {
                    return Status.CANCEL_STATUS;
                }
                Object lock = null;
                if (right instanceof ISynchronizable) {
                    lock = ((ISynchronizable)right).getLockObject();
                }
                if (lock != null) {
                    Object object = lock;
                    synchronized (object) {
                        documentLineDiffer = DocumentLineDiffer.this;
                        synchronized (documentLineDiffer) {
                            if (this.isCanceled(monitor)) {
                                return Status.CANCEL_STATUS;
                            }
                            DocumentLineDiffer.this.fStoredEvents.clear();
                            actual = this.createUnprotectedCopy(right);
                        }
                    }
                }
                int i = 0;
                while (true) {
                    if (i++ == 100) {
                        return new Status(4, "org.eclipse.ui.workbench.texteditor", 0, NLSUtility.format(QuickDiffMessages.quickdiff_error_getting_document_content, new Object[]{left.getClass(), right.getClass()}), null);
                    }
                    documentLineDiffer = DocumentLineDiffer.this;
                    synchronized (documentLineDiffer) {
                        if (this.isCanceled(monitor)) {
                            return Status.CANCEL_STATUS;
                        }
                        DocumentLineDiffer.this.fStoredEvents.clear();
                    }
                    actual = this.createCopy(right);
                    documentLineDiffer = DocumentLineDiffer.this;
                    synchronized (documentLineDiffer) {
                        if (this.isCanceled(monitor)) {
                            return Status.CANCEL_STATUS;
                        }
                        if (DocumentLineDiffer.this.fStoredEvents.size() == 0 && actual != null) {
                            break;
                        }
                    }
                }
                DJBHashFunction hash = new DJBHashFunction();
                DocumentEquivalenceClass leftEquivalent = new DocumentEquivalenceClass(reference, hash);
                DocumentLineDiffer.this.fLeftEquivalent = leftEquivalent;
                DocEquivalenceComparator ref = new DocEquivalenceComparator(leftEquivalent, null);
                DocumentEquivalenceClass rightEquivalent = new DocumentEquivalenceClass(actual, hash);
                DocumentLineDiffer.this.fRightEquivalent = rightEquivalent;
                DocEquivalenceComparator act = new DocEquivalenceComparator(rightEquivalent, null);
                ArrayList<RangeDifference> diffs = new ArrayList<RangeDifference>(Arrays.asList(RangeDifferencer.findRanges((AbstractRangeDifferenceFactory)DocumentLineDiffer.this.fRangeDiffFactory, (IProgressMonitor)monitor, (IRangeComparator)ref, (IRangeComparator)act)));
                DocumentLineDiffer documentLineDiffer4 = DocumentLineDiffer.this;
                synchronized (documentLineDiffer4) {
                    if (this.isCanceled(monitor)) {
                        return Status.CANCEL_STATUS;
                    }
                    DocumentLineDiffer.this.fDifferences = diffs;
                }
                try {
                    while (true) {
                        DocumentEvent event;
                        DocumentLineDiffer documentLineDiffer5 = DocumentLineDiffer.this;
                        synchronized (documentLineDiffer5) {
                            if (this.isCanceled(monitor)) {
                                return Status.CANCEL_STATUS;
                            }
                            if (DocumentLineDiffer.this.fStoredEvents.isEmpty()) {
                                DocumentLineDiffer.this.fInitializationJob = null;
                                DocumentLineDiffer.this.fState = 2;
                                DocumentLineDiffer.this.fLastDifference = null;
                                leftEquivalent.setDocument(left);
                                rightEquivalent.setDocument(right);
                                break;
                            }
                            event = (DocumentEvent)DocumentLineDiffer.this.fStoredEvents.remove(0);
                        }
                        IDocument copy = null;
                        if (event.fDocument == right) {
                            copy = actual;
                        } else if (event.fDocument == left) {
                            copy = reference;
                        } else {
                            Assert.isTrue((boolean)false);
                        }
                        event = new DocumentEvent(copy, event.fOffset, event.fLength, event.fText);
                        DocumentLineDiffer.this.handleAboutToBeChanged(event);
                        actual.replace(event.fOffset, event.fLength, event.fText);
                        DocumentLineDiffer.this.handleChanged(event);
                    }
                }
                catch (BadLocationException badLocationException) {
                    left.removeDocumentListener((IDocumentListener)DocumentLineDiffer.this);
                    this.clearModel();
                    DocumentLineDiffer.this.initialize();
                    return Status.CANCEL_STATUS;
                }
                DocumentLineDiffer.this.fireModelChanged();
                return Status.OK_STATUS;
            }

            private boolean isCanceled(IProgressMonitor monitor) {
                return DocumentLineDiffer.this.fInitializationJob != this || monitor != null && monitor.isCanceled();
            }

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            private void clearModel() {
                DocumentLineDiffer documentLineDiffer = DocumentLineDiffer.this;
                synchronized (documentLineDiffer) {
                    DocumentLineDiffer.this.fLeftDocument = null;
                    DocumentLineDiffer.this.fLeftEquivalent = null;
                    DocumentLineDiffer.this.fInitializationJob = null;
                    DocumentLineDiffer.this.fStoredEvents.clear();
                    DocumentLineDiffer.this.fLastDifference = null;
                    DocumentLineDiffer.this.fDifferences.clear();
                }
            }

            private IDocument createCopy(IDocument document) {
                Assert.isNotNull((Object)document);
                try {
                    return this.createUnprotectedCopy(document);
                }
                catch (NullPointerException nullPointerException) {
                }
                catch (ArrayStoreException arrayStoreException) {
                }
                catch (IndexOutOfBoundsException indexOutOfBoundsException) {
                }
                catch (ConcurrentModificationException concurrentModificationException) {
                }
                catch (NegativeArraySizeException negativeArraySizeException) {}
                return null;
            }

            private IDocument createUnprotectedCopy(IDocument document) {
                return new Document(document.get());
            }
        };
        this.fInitializationJob.setSystem(true);
        this.fInitializationJob.setPriority(50);
        this.fInitializationJob.setProperty(IProgressConstants.NO_IMMEDIATE_ERROR_PROMPT_PROPERTY, (Object)Boolean.TRUE);
        this.fInitializationJob.schedule(500L);
    }

    public synchronized void documentAboutToBeChanged(DocumentEvent event) {
        if (this.fIgnoreDocumentEvents) {
            return;
        }
        if (event.getDocument() == this.fLeftDocument) {
            this.initialize();
            return;
        }
        if (!this.isInitialized()) {
            if (this.fInitializationJob != null) {
                this.fStoredEvents.add(event);
            }
            return;
        }
        this.fLastUIEvent = event;
        try {
            this.handleAboutToBeChanged(event);
        }
        catch (BadLocationException e) {
            this.reinitOnError((Exception)((Object)e));
            return;
        }
        catch (NullPointerException e) {
            this.reinitOnError(e);
            return;
        }
        catch (ArrayStoreException e) {
            this.reinitOnError(e);
            return;
        }
        catch (IndexOutOfBoundsException e) {
            this.reinitOnError(e);
            return;
        }
        catch (ConcurrentModificationException e) {
            this.reinitOnError(e);
            return;
        }
        catch (NegativeArraySizeException e) {
            this.reinitOnError(e);
            return;
        }
    }

    void handleAboutToBeChanged(DocumentEvent event) throws BadLocationException {
        Assert.isTrue((this.fThread == null ? 1 : 0) != 0);
        this.fThread = Thread.currentThread();
        IDocument doc = event.getDocument();
        DocumentEquivalenceClass rightEquivalent = this.fRightEquivalent;
        if (doc == null || rightEquivalent == null) {
            return;
        }
        this.fFirstLine = doc.getLineOfOffset(event.getOffset());
        this.fNLines = doc.getLineOfOffset(event.getOffset() + event.getLength()) - this.fFirstLine + 1;
        rightEquivalent.update(event);
    }

    public synchronized void documentChanged(DocumentEvent event) {
        Thread lastCurrentThread = this.fThread;
        this.fThread = null;
        if (this.fIgnoreDocumentEvents) {
            return;
        }
        if (event.getDocument() == this.fLeftDocument) {
            this.initialize();
            return;
        }
        if (event != this.fLastUIEvent) {
            this.fLastUIEvent = null;
            return;
        }
        this.fLastUIEvent = null;
        if (!this.isInitialized()) {
            return;
        }
        try {
            this.fThread = lastCurrentThread;
            this.handleChanged(event);
        }
        catch (BadLocationException e) {
            this.reinitOnError((Exception)((Object)e));
            return;
        }
        catch (NullPointerException e) {
            this.reinitOnError(e);
            return;
        }
        catch (ArrayStoreException e) {
            this.reinitOnError(e);
            return;
        }
        catch (IndexOutOfBoundsException e) {
            this.reinitOnError(e);
            return;
        }
        catch (ConcurrentModificationException e) {
            this.reinitOnError(e);
            return;
        }
        catch (NegativeArraySizeException e) {
            this.reinitOnError(e);
            return;
        }
        if (this.fUpdateNeeded) {
            QuickDiffRangeDifference rd;
            AnnotationModelEvent ame = new AnnotationModelEvent((IAnnotationModel)this, false);
            Iterator it = this.fAdded.iterator();
            while (it.hasNext()) {
                rd = (QuickDiffRangeDifference)((Object)it.next());
                ame.annotationAdded((Annotation)rd.getDiffRegion(this.fDifferences, this.fLeftDocument));
            }
            it = this.fRemoved.iterator();
            while (it.hasNext()) {
                rd = (QuickDiffRangeDifference)((Object)it.next());
                ame.annotationRemoved((Annotation)rd.getDiffRegion(this.fDifferences, this.fLeftDocument));
            }
            it = this.fChanged.iterator();
            while (it.hasNext()) {
                rd = (QuickDiffRangeDifference)((Object)it.next());
                ame.annotationChanged((Annotation)rd.getDiffRegion(this.fDifferences, this.fLeftDocument));
            }
            this.fireModelChanged(ame);
            this.fUpdateNeeded = false;
        }
    }

    private void reinitOnError(Exception e) {
        if (DEBUG) {
            System.err.println("reinitializing quickdiff:\n" + e.getLocalizedMessage() + "\n" + e.getStackTrace());
        }
        this.initialize();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void handleChanged(DocumentEvent event) throws BadLocationException {
        QuickDiffRangeDifference consistentAfter;
        QuickDiffRangeDifference consistentBefore;
        int repetitionField;
        int originalLine;
        int added;
        Assert.isTrue((this.fThread == null || this.fThread == Thread.currentThread() ? 1 : 0) != 0);
        this.fThread = null;
        IDocument left = this.fLeftDocument;
        DocumentEquivalenceClass leftEquivalent = this.fLeftEquivalent;
        DocumentEquivalenceClass rightEquivalent = this.fRightEquivalent;
        if (left == null || leftEquivalent == null || rightEquivalent == null) {
            return;
        }
        IDocument right = event.getDocument();
        IDocument modified = event.getDocument();
        if (modified != left && modified != right) {
            Assert.isTrue((boolean)false);
        }
        boolean leftToRight = modified == left;
        String insertion = event.getText();
        int n = added = insertion == null ? 1 : modified.computeNumberOfLines(insertion) + 1;
        if (added > 50 || this.fNLines > 50) {
            this.initialize();
            return;
        }
        int size = Math.max(this.fNLines, added) + 1;
        int lineDelta = added - this.fNLines;
        int lastLine = this.fFirstLine + this.fNLines - 1;
        if (leftToRight) {
            originalLine = this.getRightLine(lastLine + 1);
            repetitionField = this.searchForRepetitionField(size - 1, right, originalLine);
        } else {
            originalLine = this.getLeftLine(lastLine + 1);
            repetitionField = this.searchForRepetitionField(size - 1, left, originalLine);
        }
        lastLine += repetitionField;
        if (leftToRight) {
            consistentBefore = this.findConsistentRangeBeforeLeft(this.fFirstLine, size);
            consistentAfter = this.findConsistentRangeAfterLeft(lastLine, size);
        } else {
            consistentBefore = this.findConsistentRangeBeforeRight(this.fFirstLine, size);
            consistentAfter = this.findConsistentRangeAfterRight(lastLine, size);
        }
        int shiftBefore = 0;
        if (consistentBefore.kind() == 0) {
            int unchanged = leftToRight ? Math.min(this.fFirstLine, consistentBefore.leftEnd()) - consistentBefore.leftStart() : Math.min(this.fFirstLine, consistentBefore.rightEnd()) - consistentBefore.rightStart();
            shiftBefore = Math.max(0, unchanged - size);
        }
        int shiftAfter = 0;
        if (consistentAfter.kind() == 0) {
            int unchanged = leftToRight ? consistentAfter.leftEnd() - Math.max(lastLine + 1, consistentAfter.leftStart()) : consistentAfter.rightEnd() - Math.max(lastLine + 1, consistentAfter.rightStart());
            shiftAfter = Math.max(0, unchanged - size);
        }
        int leftStartLine = consistentBefore.leftStart() + shiftBefore;
        int leftLine = consistentAfter.leftEnd();
        if (leftToRight) {
            leftLine += lineDelta;
        }
        int leftEndLine = leftLine - shiftAfter;
        LineRange leftRange = new LineRange(leftStartLine, leftEndLine - leftStartLine);
        DocEquivalenceComparator reference = new DocEquivalenceComparator(leftEquivalent, (ILineRange)leftRange);
        int rightStartLine = consistentBefore.rightStart() + shiftBefore;
        int rightLine = consistentAfter.rightEnd();
        if (!leftToRight) {
            rightLine += lineDelta;
        }
        int rightEndLine = rightLine - shiftAfter;
        LineRange rightRange = new LineRange(rightStartLine, rightEndLine - rightStartLine);
        DocEquivalenceComparator change = new DocEquivalenceComparator(rightEquivalent, (ILineRange)rightRange);
        if (leftLine - shiftAfter - leftStartLine > 50 || rightLine - shiftAfter - rightStartLine > 50) {
            this.initialize();
            return;
        }
        ArrayList<RangeDifference> diffs = new ArrayList<RangeDifference>(Arrays.asList(RangeDifferencer.findRanges((AbstractRangeDifferenceFactory)this.fRangeDiffFactory, null, (IRangeComparator)reference, (IRangeComparator)change)));
        if (diffs.size() == 0) {
            diffs.add(new QuickDiffRangeDifference(2, 0, 0, 0, 0));
        }
        Iterator it = diffs.iterator();
        while (it.hasNext()) {
            QuickDiffRangeDifference d = (QuickDiffRangeDifference)((Object)it.next());
            d.shiftLeft(leftStartLine);
            d.shiftRight(rightStartLine);
        }
        if (shiftBefore > 0) {
            QuickDiffRangeDifference first = (QuickDiffRangeDifference)((Object)diffs.get(0));
            if (first.kind() == 0) {
                first.extendStart(-shiftBefore);
            } else {
                diffs.add(0, new QuickDiffRangeDifference(0, first.rightStart() - shiftBefore, shiftBefore, first.leftStart() - shiftBefore, shiftBefore));
            }
        }
        QuickDiffRangeDifference last = (QuickDiffRangeDifference)((Object)diffs.get(diffs.size() - 1));
        if (shiftAfter > 0) {
            if (last.kind() == 0) {
                last.extendEnd(shiftAfter);
            } else {
                diffs.add(new QuickDiffRangeDifference(0, last.rightEnd(), shiftAfter, last.leftEnd(), shiftAfter));
            }
        }
        List list = this.fDifferences;
        synchronized (list) {
            Object o;
            QuickDiffRangeDifference current;
            ListIterator it2 = this.fDifferences.listIterator();
            Iterator newIt = diffs.iterator();
            boolean changed = false;
            do {
                Assert.isTrue((boolean)it2.hasNext());
            } while ((current = (QuickDiffRangeDifference)((Object)it2.next())) != consistentBefore);
            Assert.isTrue((current == consistentBefore ? 1 : 0) != 0);
            this.fChanged.clear();
            this.fRemoved.clear();
            this.fAdded.clear();
            while (current != consistentAfter) {
                if (newIt.hasNext()) {
                    o = newIt.next();
                    if (!current.equals(o)) {
                        this.fRemoved.add(current);
                        this.fAdded.add(o);
                        changed = true;
                        it2.set(o);
                    }
                } else {
                    this.fRemoved.add(current);
                    it2.remove();
                    changed = true;
                }
                Assert.isTrue((boolean)it2.hasNext());
                current = (QuickDiffRangeDifference)((Object)it2.next());
            }
            Assert.isTrue((current == consistentAfter ? 1 : 0) != 0);
            if (newIt.hasNext()) {
                o = newIt.next();
                if (!current.equals(o)) {
                    this.fRemoved.add(current);
                    this.fAdded.add(o);
                    changed = true;
                    it2.set(o);
                }
            } else {
                this.fRemoved.add(current);
                it2.remove();
                changed = true;
            }
            while (newIt.hasNext()) {
                Object next = newIt.next();
                this.fAdded.add(next);
                it2.add(next);
                changed = true;
            }
            boolean init = true;
            int leftShift = 0;
            int rightShift = 0;
            while (it2.hasNext()) {
                current = (QuickDiffRangeDifference)((Object)it2.next());
                if (init) {
                    init = false;
                    leftShift = last.leftEnd() - current.leftStart();
                    rightShift = last.rightEnd() - current.rightStart();
                    if (leftShift == 0 && rightShift == 0) break;
                    changed = true;
                }
                current.shiftLeft(leftShift);
                current.shiftRight(rightShift);
            }
            this.fUpdateNeeded = changed;
        }
        this.fLastDifference = null;
    }

    private QuickDiffRangeDifference findConsistentRangeBeforeLeft(int line, int size) {
        QuickDiffRangeDifference found = null;
        ListIterator it = this.fDifferences.listIterator();
        while (it.hasNext()) {
            QuickDiffRangeDifference difference = (QuickDiffRangeDifference)((Object)it.next());
            if (found == null || difference.kind() == 0 && (difference.leftEnd() < line && difference.leftLength() >= size || difference.leftEnd() >= line && line - difference.leftStart() >= size)) {
                found = difference;
            }
            if (difference.leftEnd() >= line) break;
        }
        return found;
    }

    private QuickDiffRangeDifference findConsistentRangeAfterLeft(int line, int size) {
        QuickDiffRangeDifference found = null;
        ListIterator it = this.fDifferences.listIterator(this.fDifferences.size());
        while (it.hasPrevious()) {
            QuickDiffRangeDifference difference = (QuickDiffRangeDifference)((Object)it.previous());
            if (found == null || difference.kind() == 0 && (difference.leftStart() > line && difference.leftLength() >= size || difference.leftStart() <= line && difference.leftEnd() - line >= size)) {
                found = difference;
            }
            if (difference.leftStart() <= line) break;
        }
        return found;
    }

    private QuickDiffRangeDifference findConsistentRangeBeforeRight(int line, int size) {
        QuickDiffRangeDifference found = null;
        int unchanged = -1;
        ListIterator it = this.fDifferences.listIterator();
        while (it.hasNext()) {
            QuickDiffRangeDifference difference = (QuickDiffRangeDifference)((Object)it.next());
            if (found == null) {
                found = difference;
            } else if (difference.kind() == 0 && (unchanged = Math.min(line, difference.rightEnd()) - difference.rightStart()) >= size) {
                found = difference;
            }
            if (difference.rightEnd() >= line) break;
        }
        return found;
    }

    private QuickDiffRangeDifference findConsistentRangeAfterRight(int line, int size) {
        QuickDiffRangeDifference found = null;
        int unchanged = -1;
        ListIterator it = this.fDifferences.listIterator(this.fDifferences.size());
        while (it.hasPrevious()) {
            QuickDiffRangeDifference difference = (QuickDiffRangeDifference)((Object)it.previous());
            if (found == null) {
                found = difference;
            } else if (difference.kind() == 0 && (unchanged = difference.rightEnd() - Math.max(line + 1, difference.rightStart())) >= size) {
                found = difference;
            }
            if (difference.rightStart() <= line) break;
        }
        return found;
    }

    private int searchForRepetitionField(int size, IDocument doc, int line) throws BadLocationException {
        int fieldLength;
        LinkedList<String> window = new LinkedList<String>();
        int nLines = doc.getNumberOfLines();
        int repetition = line - 1;
        int l = line;
        while (l >= 0 && l < nLines) {
            IRegion r = doc.getLineInformation(l);
            String current = doc.get(r.getOffset(), r.getLength());
            if (!window.isEmpty() && window.get(0).equals(current)) {
                window.removeFirst();
                window.addLast(current);
                repetition = l;
            } else {
                if (window.size() >= size) break;
                window.addLast(current);
            }
            ++l;
        }
        Assert.isTrue(((fieldLength = repetition - line + 1) >= 0 ? 1 : 0) != 0);
        return fieldLength;
    }

    private int getLeftLine(int rightLine) {
        QuickDiffRangeDifference d = this.getRangeDifferenceForRightLine(rightLine);
        if (d == null) {
            return -1;
        }
        return Math.min(d.leftEnd() - 1, d.leftStart() + rightLine - d.rightStart());
    }

    private int getRightLine(int leftLine) {
        QuickDiffRangeDifference d = this.getRangeDifferenceForLeftLine(leftLine);
        if (d == null) {
            return -1;
        }
        return Math.min(d.rightEnd() - 1, d.rightStart() + leftLine - d.leftStart());
    }

    private QuickDiffRangeDifference getRangeDifferenceForLeftLine(int leftLine) {
        Iterator it = this.fDifferences.iterator();
        while (it.hasNext()) {
            QuickDiffRangeDifference d = (QuickDiffRangeDifference)((Object)it.next());
            if (leftLine < d.leftStart() || leftLine >= d.leftEnd()) continue;
            return d;
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private QuickDiffRangeDifference getRangeDifferenceForRightLine(int rightLine) {
        List differences;
        List list = differences = this.fDifferences;
        synchronized (list) {
            Iterator it = differences.iterator();
            while (it.hasNext()) {
                QuickDiffRangeDifference d = (QuickDiffRangeDifference)((Object)it.next());
                if (rightLine < d.rightStart() || rightLine >= d.rightEnd()) continue;
                return d;
            }
        }
        return null;
    }

    public void addAnnotationModelListener(IAnnotationModelListener listener) {
        this.fAnnotationModelListeners.add(listener);
    }

    public void removeAnnotationModelListener(IAnnotationModelListener listener) {
        this.fAnnotationModelListeners.remove(listener);
    }

    public void connect(IDocument document) {
        Assert.isTrue((this.fRightDocument == null || this.fRightDocument == document ? 1 : 0) != 0);
        ++this.fOpenConnections;
        if (this.fOpenConnections == 1) {
            this.fRightDocument = document;
            this.fRightDocument.addDocumentListener((IDocumentListener)this);
            if (document instanceof IDocumentExtension4) {
                IDocumentExtension4 ext = (IDocumentExtension4)document;
                ext.addDocumentRewriteSessionListener(this.fSessionListener);
            }
            this.initialize();
        }
    }

    public void disconnect(IDocument document) {
        Assert.isTrue((this.fRightDocument == document ? 1 : 0) != 0);
        --this.fOpenConnections;
        if (this.fOpenConnections == 0) {
            this.uninstall();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void uninstall() {
        Job job = this.fInitializationJob;
        if (job != null) {
            job.cancel();
        }
        DocumentLineDiffer documentLineDiffer = this;
        synchronized (documentLineDiffer) {
            this.fState = 0;
            this.fIgnoreDocumentEvents = true;
            this.fInitializationJob = null;
            if (this.fLeftDocument != null) {
                this.fLeftDocument.removeDocumentListener((IDocumentListener)this);
            }
            this.fLeftDocument = null;
            this.fLeftEquivalent = null;
            if (this.fRightDocument != null) {
                this.fRightDocument.removeDocumentListener((IDocumentListener)this);
                if (this.fRightDocument instanceof IDocumentExtension4) {
                    IDocumentExtension4 ext = (IDocumentExtension4)this.fRightDocument;
                    ext.removeDocumentRewriteSessionListener(this.fSessionListener);
                }
            }
            this.fRightDocument = null;
            this.fRightEquivalent = null;
            this.fDifferences.clear();
        }
        if (this.fReferenceProvider != null) {
            this.fReferenceProvider.dispose();
            this.fReferenceProvider = null;
        }
    }

    public void addAnnotation(Annotation annotation, Position position) {
        throw new UnsupportedOperationException();
    }

    public void removeAnnotation(Annotation annotation) {
        throw new UnsupportedOperationException();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Iterator getAnnotationIterator() {
        ArrayList copy;
        List differences;
        List list = differences = this.fDifferences;
        synchronized (list) {
            copy = new ArrayList(differences);
        }
        final Iterator iter = copy.iterator();
        return new Iterator(){

            public void remove() {
                throw new UnsupportedOperationException();
            }

            public boolean hasNext() {
                return iter.hasNext();
            }

            public Object next() {
                QuickDiffRangeDifference diff = (QuickDiffRangeDifference)((Object)iter.next());
                return diff.getDiffRegion(copy, DocumentLineDiffer.this.fLeftDocument);
            }
        };
    }

    public Position getPosition(Annotation annotation) {
        if (this.fRightDocument != null && annotation instanceof DiffRegion) {
            QuickDiffRangeDifference difference = ((DiffRegion)annotation).getDifference();
            try {
                int offset = this.fRightDocument.getLineOffset(difference.rightStart());
                return new Position(offset, this.fRightDocument.getLineOffset(difference.rightEnd() - 1) + this.fRightDocument.getLineLength(difference.rightEnd() - 1) - offset);
            }
            catch (BadLocationException badLocationException) {}
        }
        return null;
    }

    protected void fireModelChanged() {
        this.fireModelChanged(new AnnotationModelEvent((IAnnotationModel)this));
    }

    protected void fireModelChanged(AnnotationModelEvent event) {
        ArrayList v = new ArrayList(this.fAnnotationModelListeners);
        Iterator e = v.iterator();
        while (e.hasNext()) {
            IAnnotationModelListener l = (IAnnotationModelListener)e.next();
            if (l instanceof IAnnotationModelListenerExtension) {
                ((IAnnotationModelListenerExtension)l).modelChanged(event);
                continue;
            }
            l.modelChanged((IAnnotationModel)this);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void suspend() {
        Job job = this.fInitializationJob;
        if (job != null) {
            job.cancel();
        }
        DocumentLineDiffer documentLineDiffer = this;
        synchronized (documentLineDiffer) {
            this.fInitializationJob = null;
            if (this.fRightDocument != null) {
                this.fRightDocument.removeDocumentListener((IDocumentListener)this);
            }
            if (this.fLeftDocument != null) {
                this.fLeftDocument.removeDocumentListener((IDocumentListener)this);
            }
            this.fLeftDocument = null;
            this.fLeftEquivalent = null;
            this.fLastDifference = null;
            this.fStoredEvents.clear();
            this.fDifferences.clear();
            this.fState = 0;
            this.fireModelChanged();
        }
    }

    public synchronized void resume() {
        if (this.fRightDocument != null) {
            this.fRightDocument.addDocumentListener((IDocumentListener)this);
        }
        this.initialize();
    }

    private static class LineChangeInfo
    implements ILineDiffInfo {
        private static final String[] ORIGINAL_TEXT = new String[]{"\n"};

        private LineChangeInfo() {
        }

        public int getRemovedLinesBelow() {
            return 0;
        }

        public int getRemovedLinesAbove() {
            return 0;
        }

        public int getChangeType() {
            return 2;
        }

        public boolean hasChanges() {
            return true;
        }

        public String[] getOriginalText() {
            return ORIGINAL_TEXT;
        }
    }

    private static class RangeDifferenceFactory
    extends AbstractRangeDifferenceFactory {
        private RangeDifferenceFactory() {
        }

        protected RangeDifference createRangeDifference() {
            return new QuickDiffRangeDifference();
        }
    }
}

