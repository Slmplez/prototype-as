/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.ui.texteditor;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.ui.texteditor.AbstractDocumentProvider;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.IDocumentProviderExtension;
import org.eclipse.ui.texteditor.IDocumentProviderExtension2;
import org.eclipse.ui.texteditor.IDocumentProviderExtension3;
import org.eclipse.ui.texteditor.IDocumentProviderExtension4;
import org.eclipse.ui.texteditor.IDocumentProviderExtension5;
import org.eclipse.ui.texteditor.IElementStateListener;
import org.eclipse.ui.texteditor.IElementStateListenerExtension;
import org.eclipse.ui.texteditor.ISchedulingRuleProvider;

public abstract class AbstractDocumentProvider
implements IDocumentProvider,
IDocumentProviderExtension,
IDocumentProviderExtension2,
IDocumentProviderExtension3,
IDocumentProviderExtension4,
IDocumentProviderExtension5 {
    protected static final boolean PR10806_UC5_ENABLED = true;
    protected static final boolean PR14469_ENABLED = false;
    protected static final IStatus STATUS_OK = new Status(0, "org.eclipse.ui.workbench.texteditor", 0, EditorMessages.AbstractDocumentProvider_ok, null);
    protected static final IStatus STATUS_ERROR = new Status(4, "org.eclipse.ui.workbench.texteditor", 1, EditorMessages.AbstractDocumentProvider_error, null);
    private Map fElementInfoMap = new HashMap();
    private List fElementStateListeners = new ArrayList();
    private IProgressMonitor fProgressMonitor;

    protected AbstractDocumentProvider() {
    }

    protected abstract IDocument createDocument(Object var1) throws CoreException;

    protected abstract IAnnotationModel createAnnotationModel(Object var1) throws CoreException;

    protected abstract void doSaveDocument(IProgressMonitor var1, Object var2, IDocument var3, boolean var4) throws CoreException;

    protected abstract IRunnableContext getOperationRunner(IProgressMonitor var1);

    protected ISchedulingRule getSynchronizeRule(Object element) {
        return null;
    }

    protected ISchedulingRule getValidateStateRule(Object element) {
        return null;
    }

    protected ISchedulingRule getSaveRule(Object element) {
        return null;
    }

    protected ISchedulingRule getResetRule(Object element) {
        return null;
    }

    protected ElementInfo getElementInfo(Object element) {
        return (ElementInfo)this.fElementInfoMap.get(element);
    }

    protected ElementInfo createElementInfo(Object element) throws CoreException {
        return new ElementInfo(this.createDocument(element), this.createAnnotationModel(element));
    }

    protected void disposeElementInfo(Object element, ElementInfo info) {
    }

    protected void addUnchangedElementListeners(Object element, ElementInfo info) {
        if (info.fDocument != null) {
            info.fDocument.addDocumentListener((IDocumentListener)info);
        }
    }

    protected void removeUnchangedElementListeners(Object element, ElementInfo info) {
        if (info.fDocument != null) {
            info.fDocument.removeDocumentListener((IDocumentListener)info);
        }
    }

    protected Iterator getConnectedElements() {
        HashSet s = new HashSet();
        Set keys = this.fElementInfoMap.keySet();
        if (keys != null) {
            s.addAll(keys);
        }
        return s.iterator();
    }

    public final void connect(Object element) throws CoreException {
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        if (info == null) {
            info = this.createElementInfo(element);
            if (info == null) {
                info = new ElementInfo(null, null);
            }
            info.fElement = element;
            this.addUnchangedElementListeners(element, info);
            this.fElementInfoMap.put(element, info);
            if (this.fElementInfoMap.size() == 1) {
                this.connected();
            }
        }
        ++info.fCount;
    }

    protected void connected() {
    }

    public final void disconnect(Object element) {
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        if (info == null) {
            return;
        }
        if (info.fCount == 1) {
            this.fElementInfoMap.remove(element);
            this.removeUnchangedElementListeners(element, info);
            this.disposeElementInfo(element, info);
            if (this.fElementInfoMap.size() == 0) {
                this.disconnected();
            }
        } else {
            --info.fCount;
        }
    }

    protected void disconnected() {
    }

    public IDocument getDocument(Object element) {
        if (element == null) {
            return null;
        }
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        return info != null ? info.fDocument : null;
    }

    public boolean mustSaveDocument(Object element) {
        if (element == null) {
            return false;
        }
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        return info != null ? info.fCount == 1 && info.fCanBeSaved : false;
    }

    public IAnnotationModel getAnnotationModel(Object element) {
        if (element == null) {
            return null;
        }
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        return info != null ? info.fModel : null;
    }

    public boolean canSaveDocument(Object element) {
        if (element == null) {
            return false;
        }
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        return info != null ? info.fCanBeSaved : false;
    }

    protected void doResetDocument(Object element, IProgressMonitor monitor) throws CoreException {
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        if (info != null) {
            IDocument original = null;
            IStatus status = null;
            try {
                original = this.createDocument(element);
            }
            catch (CoreException x) {
                status = x.getStatus();
            }
            info.fStatus = status;
            if (original != null) {
                this.fireElementContentAboutToBeReplaced(element);
                info.fDocument.set(original.get());
                if (info.fCanBeSaved) {
                    info.fCanBeSaved = false;
                    this.addUnchangedElementListeners(element, info);
                }
                this.fireElementContentReplaced(element);
                this.fireElementDirtyStateChanged(element, false);
            }
        }
    }

    protected void executeOperation(DocumentProviderOperation operation, IProgressMonitor monitor) throws CoreException {
        try {
            IRunnableContext runner = this.getOperationRunner(monitor);
            if (runner != null) {
                runner.run(false, false, (IRunnableWithProgress)operation);
            } else {
                operation.run(monitor);
            }
        }
        catch (InvocationTargetException x) {
            Throwable e = x.getTargetException();
            if (e instanceof CoreException) {
                throw (CoreException)e;
            }
            String message = e.getMessage() != null ? e.getMessage() : "";
            throw new CoreException((IStatus)new Status(4, "org.eclipse.ui.workbench.texteditor", 4, message, e));
        }
        catch (InterruptedException x) {
            String message = x.getMessage() != null ? x.getMessage() : "";
            throw new CoreException((IStatus)new Status(8, "org.eclipse.ui.workbench.texteditor", 0, message, (Throwable)x));
        }
    }

    public final void resetDocument(Object element) throws CoreException {
        if (element == null) {
            return;
        }
        class ResetOperation
        extends DocumentProviderOperation
        implements ISchedulingRuleProvider {
            final /* synthetic */ AbstractDocumentProvider this$0;
            private final /* synthetic */ Object val$element;

            ResetOperation(AbstractDocumentProvider abstractDocumentProvider, Object object) {
                this.this$0 = abstractDocumentProvider;
                this.val$element = object;
            }

            protected void execute(IProgressMonitor monitor) throws CoreException {
                this.this$0.doResetDocument(this.val$element, monitor);
            }

            public ISchedulingRule getSchedulingRule() {
                return this.this$0.getResetRule(this.val$element);
            }
        }
        this.executeOperation(new ResetOperation(this, element), this.getProgressMonitor());
    }

    public final void saveDocument(IProgressMonitor monitor, Object element, IDocument document, boolean overwrite) throws CoreException {
        if (element == null) {
            return;
        }
        class SaveOperation
        extends DocumentProviderOperation
        implements ISchedulingRuleProvider {
            final /* synthetic */ AbstractDocumentProvider this$0;
            private final /* synthetic */ Object val$element;
            private final /* synthetic */ IDocument val$document;
            private final /* synthetic */ boolean val$overwrite;

            SaveOperation(AbstractDocumentProvider abstractDocumentProvider, Object object, IDocument iDocument, boolean bl) {
                this.this$0 = abstractDocumentProvider;
                this.val$element = object;
                this.val$document = iDocument;
                this.val$overwrite = bl;
            }

            protected void execute(IProgressMonitor pm) throws CoreException {
                ElementInfo info = (ElementInfo)AbstractDocumentProvider.access$0(this.this$0).get(this.val$element);
                if (info != null) {
                    if (info.fDocument != this.val$document) {
                        Status status = new Status(2, "org.eclipse.ui.workbench.texteditor", 4, EditorMessages.AbstractDocumentProvider_error_save_inuse, null);
                        throw new CoreException((IStatus)status);
                    }
                    this.this$0.doSaveDocument(pm, this.val$element, this.val$document, this.val$overwrite);
                    if (pm != null && pm.isCanceled()) {
                        return;
                    }
                    info.fCanBeSaved = false;
                    this.this$0.addUnchangedElementListeners(this.val$element, info);
                    this.this$0.fireElementDirtyStateChanged(this.val$element, false);
                } else {
                    this.this$0.doSaveDocument(pm, this.val$element, this.val$document, this.val$overwrite);
                }
            }

            public ISchedulingRule getSchedulingRule() {
                return this.this$0.getSaveRule(this.val$element);
            }
        }
        this.executeOperation(new SaveOperation(this, element, document, overwrite), monitor);
    }

    public void aboutToChange(Object element) {
    }

    public void changed(Object element) {
    }

    public void addElementStateListener(IElementStateListener listener) {
        Assert.isNotNull((Object)listener);
        if (!this.fElementStateListeners.contains(listener)) {
            this.fElementStateListeners.add(listener);
        }
    }

    public void removeElementStateListener(IElementStateListener listener) {
        Assert.isNotNull((Object)listener);
        this.fElementStateListeners.remove(listener);
    }

    protected void fireElementDirtyStateChanged(Object element, boolean isDirty) {
        Iterator e = new ArrayList(this.fElementStateListeners).iterator();
        while (e.hasNext()) {
            IElementStateListener l = (IElementStateListener)e.next();
            l.elementDirtyStateChanged(element, isDirty);
        }
    }

    protected void fireElementContentAboutToBeReplaced(Object element) {
        Iterator e = new ArrayList(this.fElementStateListeners).iterator();
        while (e.hasNext()) {
            IElementStateListener l = (IElementStateListener)e.next();
            l.elementContentAboutToBeReplaced(element);
        }
    }

    protected void fireElementContentReplaced(Object element) {
        Iterator e = new ArrayList(this.fElementStateListeners).iterator();
        while (e.hasNext()) {
            IElementStateListener l = (IElementStateListener)e.next();
            l.elementContentReplaced(element);
        }
    }

    protected void fireElementDeleted(Object element) {
        Iterator e = new ArrayList(this.fElementStateListeners).iterator();
        while (e.hasNext()) {
            IElementStateListener l = (IElementStateListener)e.next();
            l.elementDeleted(element);
        }
    }

    protected void fireElementMoved(Object originalElement, Object movedElement) {
        Iterator e = new ArrayList(this.fElementStateListeners).iterator();
        while (e.hasNext()) {
            IElementStateListener l = (IElementStateListener)e.next();
            l.elementMoved(originalElement, movedElement);
        }
    }

    public long getModificationStamp(Object element) {
        return 0L;
    }

    public long getSynchronizationStamp(Object element) {
        return 0L;
    }

    public boolean isDeleted(Object element) {
        return false;
    }

    public boolean isReadOnly(Object element) {
        return true;
    }

    public boolean isModifiable(Object element) {
        return false;
    }

    public boolean isStateValidated(Object element) {
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        if (info != null) {
            return info.fIsStateValidated;
        }
        return false;
    }

    protected void doValidateState(Object element, Object computationContext) throws CoreException {
    }

    public void validateState(Object element, Object computationContext) throws CoreException {
        if (element == null) {
            return;
        }
        class ValidateStateOperation
        extends DocumentProviderOperation
        implements ISchedulingRuleProvider {
            final /* synthetic */ AbstractDocumentProvider this$0;
            private final /* synthetic */ Object val$element;
            private final /* synthetic */ Object val$computationContext;

            ValidateStateOperation(AbstractDocumentProvider abstractDocumentProvider, Object object, Object object2) {
                this.this$0 = abstractDocumentProvider;
                this.val$element = object;
                this.val$computationContext = object2;
            }

            protected void execute(IProgressMonitor monitor) throws CoreException {
                ElementInfo info = (ElementInfo)AbstractDocumentProvider.access$0(this.this$0).get(this.val$element);
                if (info == null) {
                    return;
                }
                this.this$0.doValidateState(this.val$element, this.val$computationContext);
                this.this$0.doUpdateStateCache(this.val$element);
                info.fIsStateValidated = true;
                this.this$0.fireElementStateValidationChanged(this.val$element, true);
            }

            public ISchedulingRule getSchedulingRule() {
                return this.this$0.getValidateStateRule(this.val$element);
            }
        }
        this.executeOperation(new ValidateStateOperation(this, element, computationContext), this.getProgressMonitor());
    }

    protected void doUpdateStateCache(Object element) throws CoreException {
    }

    protected boolean invalidatesState(Object element, boolean wasReadOnly) {
        Assert.isTrue((boolean)true);
        boolean readOnlyChanged = this.isReadOnly(element) != wasReadOnly && !wasReadOnly;
        return readOnlyChanged;
    }

    public final void updateStateCache(Object element) throws CoreException {
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        if (info != null) {
            boolean wasReadOnly = this.isReadOnly(element);
            this.doUpdateStateCache(element);
            if (this.invalidatesState(element, wasReadOnly)) {
                info.fIsStateValidated = false;
                this.fireElementStateValidationChanged(element, false);
            }
        }
    }

    public void setCanSaveDocument(Object element) {
        ElementInfo info;
        if (element != null && (info = (ElementInfo)this.fElementInfoMap.get(element)) != null) {
            info.fCanBeSaved = true;
            this.removeUnchangedElementListeners(element, info);
            this.fireElementDirtyStateChanged(element, info.fCanBeSaved);
        }
    }

    protected void fireElementStateValidationChanged(Object element, boolean isStateValidated) {
        Iterator e = new ArrayList(this.fElementStateListeners).iterator();
        while (e.hasNext()) {
            Object o = e.next();
            if (!(o instanceof IElementStateListenerExtension)) continue;
            IElementStateListenerExtension l = (IElementStateListenerExtension)o;
            l.elementStateValidationChanged(element, isStateValidated);
        }
    }

    protected void fireElementStateChanging(Object element) {
        Iterator e = new ArrayList(this.fElementStateListeners).iterator();
        while (e.hasNext()) {
            Object o = e.next();
            if (!(o instanceof IElementStateListenerExtension)) continue;
            IElementStateListenerExtension l = (IElementStateListenerExtension)o;
            l.elementStateChanging(element);
        }
    }

    protected void fireElementStateChangeFailed(Object element) {
        Iterator e = new ArrayList(this.fElementStateListeners).iterator();
        while (e.hasNext()) {
            Object o = e.next();
            if (!(o instanceof IElementStateListenerExtension)) continue;
            IElementStateListenerExtension l = (IElementStateListenerExtension)o;
            l.elementStateChangeFailed(element);
        }
    }

    public IStatus getStatus(Object element) {
        ElementInfo info = (ElementInfo)this.fElementInfoMap.get(element);
        if (info != null) {
            if (info.fStatus != null) {
                return info.fStatus;
            }
            return info.fDocument == null ? STATUS_ERROR : Status.OK_STATUS;
        }
        return STATUS_ERROR;
    }

    protected void doSynchronize(Object element, IProgressMonitor monitor) throws CoreException {
    }

    public final void synchronize(Object element) throws CoreException {
        if (element == null) {
            return;
        }
        class SynchronizeOperation
        extends DocumentProviderOperation
        implements ISchedulingRuleProvider {
            final /* synthetic */ AbstractDocumentProvider this$0;
            private final /* synthetic */ Object val$element;

            SynchronizeOperation(AbstractDocumentProvider abstractDocumentProvider, Object object) {
                this.this$0 = abstractDocumentProvider;
                this.val$element = object;
            }

            protected void execute(IProgressMonitor monitor) throws CoreException {
                this.this$0.doSynchronize(this.val$element, monitor);
            }

            public ISchedulingRule getSchedulingRule() {
                return this.this$0.getSynchronizeRule(this.val$element);
            }
        }
        this.executeOperation(new SynchronizeOperation(this, element), this.getProgressMonitor());
    }

    public IProgressMonitor getProgressMonitor() {
        return this.fProgressMonitor == null ? new NullProgressMonitor() : this.fProgressMonitor;
    }

    public void setProgressMonitor(IProgressMonitor progressMonitor) {
        this.fProgressMonitor = progressMonitor;
    }

    public boolean isSynchronized(Object element) {
        return true;
    }

    public boolean isNotSynchronizedException(Object element, CoreException ex) {
        return false;
    }

    public IContentType getContentType(Object element) throws CoreException {
        return null;
    }

    static /* synthetic */ Map access$0(AbstractDocumentProvider abstractDocumentProvider) {
        return abstractDocumentProvider.fElementInfoMap;
    }

    protected static abstract class DocumentProviderOperation
    implements IRunnableWithProgress {
        protected DocumentProviderOperation() {
        }

        protected abstract void execute(IProgressMonitor var1) throws CoreException;

        public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
            try {
                this.execute(monitor);
            }
            catch (CoreException x) {
                throw new InvocationTargetException(x);
            }
        }
    }

    protected class ElementInfo
    implements IDocumentListener {
        public Object fElement;
        public int fCount;
        public boolean fCanBeSaved;
        public IDocument fDocument;
        public IAnnotationModel fModel;
        public boolean fIsStateValidated;
        public IStatus fStatus;

        public ElementInfo(IDocument document, IAnnotationModel model) {
            this.fDocument = document;
            this.fModel = model;
            this.fCount = 0;
            this.fCanBeSaved = false;
            this.fIsStateValidated = false;
        }

        public boolean equals(Object o) {
            if (o instanceof ElementInfo) {
                ElementInfo e = (ElementInfo)o;
                return this.fDocument.equals(e.fDocument);
            }
            return false;
        }

        public int hashCode() {
            return this.fDocument.hashCode();
        }

        public void documentChanged(DocumentEvent event) {
            this.fCanBeSaved = true;
            AbstractDocumentProvider.this.removeUnchangedElementListeners(this.fElement, this);
            AbstractDocumentProvider.this.fireElementDirtyStateChanged(this.fElement, this.fCanBeSaved);
        }

        public void documentAboutToBeChanged(DocumentEvent event) {
        }
    }
}

