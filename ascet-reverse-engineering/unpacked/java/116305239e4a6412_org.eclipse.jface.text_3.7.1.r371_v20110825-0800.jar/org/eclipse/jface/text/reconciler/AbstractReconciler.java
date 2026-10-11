/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 */
package org.eclipse.jface.text.reconciler;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.reconciler.DirtyRegion;
import org.eclipse.jface.text.reconciler.DirtyRegionQueue;
import org.eclipse.jface.text.reconciler.IReconciler;

public abstract class AbstractReconciler
implements IReconciler {
    private DirtyRegionQueue fDirtyRegionQueue;
    private BackgroundThread fThread;
    private Listener fListener;
    private int fDelay = 500;
    private boolean fIsIncrementalReconciler = true;
    private IProgressMonitor fProgressMonitor = new NullProgressMonitor();
    private boolean fIsAllowedToModifyDocument = true;
    private IDocument fDocument;
    private ITextViewer fViewer;

    protected abstract void process(DirtyRegion var1);

    protected abstract void reconcilerDocumentChanged(IDocument var1);

    protected AbstractReconciler() {
    }

    public void setDelay(int delay) {
        this.fDelay = delay;
    }

    public void setIsIncrementalReconciler(boolean isIncremental) {
        this.fIsIncrementalReconciler = isIncremental;
    }

    public void setIsAllowedToModifyDocument(boolean isAllowedToModify) {
        this.fIsAllowedToModifyDocument = isAllowedToModify;
    }

    public void setProgressMonitor(IProgressMonitor monitor) {
        Assert.isLegal((monitor != null ? 1 : 0) != 0);
        this.fProgressMonitor = monitor;
    }

    protected boolean isIncrementalReconciler() {
        return this.fIsIncrementalReconciler;
    }

    protected IDocument getDocument() {
        return this.fDocument;
    }

    protected ITextViewer getTextViewer() {
        return this.fViewer;
    }

    protected IProgressMonitor getProgressMonitor() {
        return this.fProgressMonitor;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void install(ITextViewer textViewer) {
        Assert.isNotNull((Object)textViewer);
        this.fViewer = textViewer;
        AbstractReconciler abstractReconciler = this;
        synchronized (abstractReconciler) {
            if (this.fThread != null) {
                return;
            }
            this.fThread = new BackgroundThread(this.getClass().getName());
        }
        this.fDirtyRegionQueue = new DirtyRegionQueue();
        this.fListener = new Listener();
        this.fViewer.addTextInputListener(this.fListener);
        IDocument document = textViewer.getDocument();
        if (document != null) {
            this.fListener.inputDocumentAboutToBeChanged(this.fDocument, document);
            this.fListener.inputDocumentChanged(this.fDocument, document);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void uninstall() {
        if (this.fListener != null) {
            this.fViewer.removeTextInputListener(this.fListener);
            if (this.fDocument != null) {
                this.fListener.inputDocumentAboutToBeChanged(this.fDocument, null);
                this.fListener.inputDocumentChanged(this.fDocument, null);
            }
            this.fListener = null;
            AbstractReconciler abstractReconciler = this;
            synchronized (abstractReconciler) {
                BackgroundThread bt = this.fThread;
                this.fThread = null;
                bt.cancel();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void createDirtyRegion(DocumentEvent e) {
        DirtyRegionQueue dirtyRegionQueue = this.fDirtyRegionQueue;
        synchronized (dirtyRegionQueue) {
            if (e.getLength() == 0 && e.getText() != null) {
                this.fDirtyRegionQueue.addDirtyRegion(new DirtyRegion(e.getOffset(), e.getText().length(), "__insert", e.getText()));
            } else if (e.getText() == null || e.getText().length() == 0) {
                this.fDirtyRegionQueue.addDirtyRegion(new DirtyRegion(e.getOffset(), e.getLength(), "__remove", null));
            } else {
                this.fDirtyRegionQueue.addDirtyRegion(new DirtyRegion(e.getOffset(), e.getLength(), "__remove", null));
                this.fDirtyRegionQueue.addDirtyRegion(new DirtyRegion(e.getOffset(), e.getText().length(), "__insert", e.getText()));
            }
        }
    }

    protected void aboutToBeReconciled() {
    }

    protected void initialProcess() {
    }

    protected void forceReconciling() {
        if (this.fDocument != null) {
            if (!this.fThread.isDirty() && this.fThread.isAlive()) {
                this.aboutToBeReconciled();
            }
            if (this.fThread.isActive()) {
                this.fProgressMonitor.setCanceled(true);
            }
            if (this.fIsIncrementalReconciler) {
                DocumentEvent e = new DocumentEvent(this.fDocument, 0, this.fDocument.getLength(), this.fDocument.get());
                this.createDirtyRegion(e);
            }
            this.startReconciling();
        }
    }

    protected synchronized void startReconciling() {
        if (this.fThread == null) {
            return;
        }
        if (!this.fThread.isAlive()) {
            try {
                this.fThread.start();
            }
            catch (IllegalThreadStateException illegalThreadStateException) {}
        } else {
            this.fThread.reset();
        }
    }

    protected void reconcilerReset() {
    }

    protected boolean isRunningInReconcilerThread() {
        return Thread.currentThread() == this.fThread;
    }

    class BackgroundThread
    extends Thread {
        private boolean fCanceled = false;
        private boolean fReset = false;
        private boolean fIsDirty = false;
        private boolean fIsActive = false;

        public BackgroundThread(String name) {
            super(name);
            this.setPriority(1);
            this.setDaemon(true);
        }

        public boolean isActive() {
            return this.fIsActive;
        }

        public synchronized boolean isDirty() {
            return this.fIsDirty;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void cancel() {
            this.fCanceled = true;
            IProgressMonitor pm = AbstractReconciler.this.fProgressMonitor;
            if (pm != null) {
                pm.setCanceled(true);
            }
            DirtyRegionQueue dirtyRegionQueue = AbstractReconciler.this.fDirtyRegionQueue;
            synchronized (dirtyRegionQueue) {
                AbstractReconciler.this.fDirtyRegionQueue.notifyAll();
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void suspendCallerWhileDirty() {
            boolean isDirty;
            do {
                DirtyRegionQueue dirtyRegionQueue = AbstractReconciler.this.fDirtyRegionQueue;
                synchronized (dirtyRegionQueue) {
                    boolean bl = isDirty = AbstractReconciler.this.fDirtyRegionQueue.getSize() > 0;
                    if (isDirty) {
                        try {
                            AbstractReconciler.this.fDirtyRegionQueue.wait();
                        }
                        catch (InterruptedException interruptedException) {}
                    }
                }
            } while (isDirty);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void reset() {
            if (AbstractReconciler.this.fDelay > 0) {
                BackgroundThread backgroundThread = this;
                synchronized (backgroundThread) {
                    this.fIsDirty = true;
                    this.fReset = true;
                }
            }
            Object object = this;
            synchronized (object) {
                this.fIsDirty = true;
            }
            object = AbstractReconciler.this.fDirtyRegionQueue;
            synchronized (object) {
                AbstractReconciler.this.fDirtyRegionQueue.notifyAll();
            }
            AbstractReconciler.this.reconcilerReset();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void run() {
            Object object = AbstractReconciler.this.fDirtyRegionQueue;
            synchronized (object) {
                try {
                    AbstractReconciler.this.fDirtyRegionQueue.wait(AbstractReconciler.this.fDelay);
                }
                catch (InterruptedException interruptedException) {}
            }
            if (this.fCanceled) {
                return;
            }
            AbstractReconciler.this.initialProcess();
            while (!this.fCanceled) {
                object = AbstractReconciler.this.fDirtyRegionQueue;
                synchronized (object) {
                    try {
                        AbstractReconciler.this.fDirtyRegionQueue.wait(AbstractReconciler.this.fDelay);
                    }
                    catch (InterruptedException interruptedException) {}
                }
                if (this.fCanceled) break;
                if (!this.isDirty()) continue;
                object = this;
                synchronized (object) {
                    if (this.fReset) {
                        this.fReset = false;
                        continue;
                    }
                }
                DirtyRegion r = null;
                DirtyRegionQueue dirtyRegionQueue = AbstractReconciler.this.fDirtyRegionQueue;
                synchronized (dirtyRegionQueue) {
                    r = AbstractReconciler.this.fDirtyRegionQueue.removeNextDirtyRegion();
                }
                this.fIsActive = true;
                AbstractReconciler.this.fProgressMonitor.setCanceled(false);
                AbstractReconciler.this.process(r);
                dirtyRegionQueue = AbstractReconciler.this.fDirtyRegionQueue;
                synchronized (dirtyRegionQueue) {
                    if (AbstractReconciler.this.fDirtyRegionQueue.getSize() == 0) {
                        BackgroundThread backgroundThread = this;
                        synchronized (backgroundThread) {
                            this.fIsDirty = AbstractReconciler.this.fProgressMonitor.isCanceled();
                        }
                        AbstractReconciler.this.fDirtyRegionQueue.notifyAll();
                    }
                }
                this.fIsActive = false;
            }
        }
    }

    class Listener
    implements IDocumentListener,
    ITextInputListener {
        Listener() {
        }

        public void documentAboutToBeChanged(DocumentEvent e) {
        }

        public void documentChanged(DocumentEvent e) {
            if (AbstractReconciler.this.fThread.isActive() || !AbstractReconciler.this.fThread.isDirty() && AbstractReconciler.this.fThread.isAlive()) {
                if (!AbstractReconciler.this.fIsAllowedToModifyDocument && Thread.currentThread() == AbstractReconciler.this.fThread) {
                    throw new UnsupportedOperationException("The reconciler thread is not allowed to modify the document");
                }
                AbstractReconciler.this.aboutToBeReconciled();
            }
            if (AbstractReconciler.this.fThread.isActive() || AbstractReconciler.this.fThread.isDirty() && AbstractReconciler.this.fThread.isAlive()) {
                AbstractReconciler.this.fProgressMonitor.setCanceled(true);
            }
            if (AbstractReconciler.this.fIsIncrementalReconciler) {
                AbstractReconciler.this.createDirtyRegion(e);
            }
            AbstractReconciler.this.fThread.reset();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void inputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
            if (oldInput == AbstractReconciler.this.fDocument) {
                if (AbstractReconciler.this.fDocument != null) {
                    AbstractReconciler.this.fDocument.removeDocumentListener((IDocumentListener)this);
                }
                if (AbstractReconciler.this.fIsIncrementalReconciler) {
                    DirtyRegionQueue dirtyRegionQueue = AbstractReconciler.this.fDirtyRegionQueue;
                    synchronized (dirtyRegionQueue) {
                        AbstractReconciler.this.fDirtyRegionQueue.purgeQueue();
                    }
                    if (AbstractReconciler.this.fDocument != null && AbstractReconciler.this.fDocument.getLength() > 0 && AbstractReconciler.this.fThread.isDirty() && AbstractReconciler.this.fThread.isAlive()) {
                        DocumentEvent e = new DocumentEvent(AbstractReconciler.this.fDocument, 0, AbstractReconciler.this.fDocument.getLength(), "");
                        AbstractReconciler.this.createDirtyRegion(e);
                        AbstractReconciler.this.fThread.reset();
                        AbstractReconciler.this.fThread.suspendCallerWhileDirty();
                    }
                }
                AbstractReconciler.this.fDocument = null;
            }
        }

        public void inputDocumentChanged(IDocument oldInput, IDocument newInput) {
            AbstractReconciler.this.fDocument = newInput;
            if (AbstractReconciler.this.fDocument == null) {
                return;
            }
            AbstractReconciler.this.reconcilerDocumentChanged(AbstractReconciler.this.fDocument);
            AbstractReconciler.this.fDocument.addDocumentListener((IDocumentListener)this);
            if (!AbstractReconciler.this.fThread.isDirty()) {
                AbstractReconciler.this.aboutToBeReconciled();
            }
            AbstractReconciler.this.startReconciling();
        }
    }
}

