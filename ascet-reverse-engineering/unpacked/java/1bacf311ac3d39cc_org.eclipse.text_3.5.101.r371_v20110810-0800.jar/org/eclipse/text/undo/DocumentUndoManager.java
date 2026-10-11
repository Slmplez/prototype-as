/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.AbstractOperation
 *  org.eclipse.core.commands.operations.IContextReplacingOperation
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IOperationHistoryListener
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.commands.operations.ObjectUndoContext
 *  org.eclipse.core.commands.operations.OperationHistoryEvent
 *  org.eclipse.core.commands.operations.OperationHistoryFactory
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.text.undo;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.AbstractOperation;
import org.eclipse.core.commands.operations.IContextReplacingOperation;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IOperationHistoryListener;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.ObjectUndoContext;
import org.eclipse.core.commands.operations.OperationHistoryEvent;
import org.eclipse.core.commands.operations.OperationHistoryFactory;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.text.undo.DocumentUndoEvent;
import org.eclipse.text.undo.IDocumentUndoListener;
import org.eclipse.text.undo.IDocumentUndoManager;
import org.eclipse.text.undo.UndoMessages;

public class DocumentUndoManager
implements IDocumentUndoManager {
    private ObjectUndoContext fUndoContext;
    private IDocument fDocument;
    private UndoableTextChange fCurrent;
    private DocumentListener fDocumentListener;
    private boolean fFoldingIntoCompoundChange = false;
    private IOperationHistory fHistory;
    private IOperationHistoryListener fHistoryListener;
    private UndoableTextChange fLastAddedTextEdit = null;
    private long fPreservedRedoModificationStamp = -1L;
    private StringBuffer fPreservedTextBuffer;
    private long fPreservedUndoModificationStamp = -1L;
    private UndoableTextChange fPreviousDelete;
    private StringBuffer fTextBuffer;
    private boolean fInserting = false;
    private boolean fOverwriting = false;
    private ListenerList fDocumentUndoListeners;
    private List fConnected;

    public DocumentUndoManager(IDocument document) {
        Assert.isNotNull((Object)document);
        this.fDocument = document;
        this.fHistory = OperationHistoryFactory.getOperationHistory();
        this.fUndoContext = new ObjectUndoContext((Object)this.fDocument);
        this.fConnected = new ArrayList();
        this.fDocumentUndoListeners = new ListenerList(1);
    }

    public void addDocumentUndoListener(IDocumentUndoListener listener) {
        this.fDocumentUndoListeners.add((Object)listener);
    }

    public void removeDocumentUndoListener(IDocumentUndoListener listener) {
        this.fDocumentUndoListeners.remove((Object)listener);
    }

    public IUndoContext getUndoContext() {
        return this.fUndoContext;
    }

    public void commit() {
        if (this.fLastAddedTextEdit != this.fCurrent) {
            this.fCurrent.pretendCommit();
            if (this.fCurrent.isValid()) {
                this.addToOperationHistory(this.fCurrent);
            }
        }
        this.fCurrent.commit();
    }

    public void reset() {
        if (this.isConnected()) {
            this.shutdown();
            this.initialize();
        }
    }

    public boolean redoable() {
        return OperationHistoryFactory.getOperationHistory().canRedo((IUndoContext)this.fUndoContext);
    }

    public boolean undoable() {
        return OperationHistoryFactory.getOperationHistory().canUndo((IUndoContext)this.fUndoContext);
    }

    public void redo() throws ExecutionException {
        if (this.isConnected() && this.redoable()) {
            OperationHistoryFactory.getOperationHistory().redo(this.getUndoContext(), null, null);
        }
    }

    public void undo() throws ExecutionException {
        if (this.undoable()) {
            OperationHistoryFactory.getOperationHistory().undo((IUndoContext)this.fUndoContext, null, null);
        }
    }

    public void connect(Object client) {
        if (!this.isConnected()) {
            this.initialize();
        }
        if (!this.fConnected.contains(client)) {
            this.fConnected.add(client);
        }
    }

    public void disconnect(Object client) {
        this.fConnected.remove(client);
        if (!this.isConnected()) {
            this.shutdown();
        }
    }

    public void beginCompoundChange() {
        if (this.isConnected()) {
            this.fFoldingIntoCompoundChange = true;
            this.commit();
        }
    }

    public void endCompoundChange() {
        if (this.isConnected()) {
            this.fFoldingIntoCompoundChange = false;
            this.commit();
        }
    }

    public void setMaximalUndoLevel(int undoLimit) {
        this.fHistory.setLimit((IUndoContext)this.fUndoContext, undoLimit);
    }

    void fireDocumentUndo(int offset, String text, String preservedText, Object source, int eventType, boolean isCompound) {
        eventType = isCompound ? eventType | 0x10 : eventType;
        DocumentUndoEvent event = new DocumentUndoEvent(this.fDocument, offset, text, preservedText, eventType, source);
        Object[] listeners = this.fDocumentUndoListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IDocumentUndoListener)listeners[i]).documentUndoNotification(event);
            ++i;
        }
    }

    private void addListeners() {
        this.fHistoryListener = new HistoryListener();
        this.fHistory.addOperationHistoryListener(this.fHistoryListener);
        this.listenToTextChanges(true);
    }

    private void removeListeners() {
        this.listenToTextChanges(false);
        this.fHistory.removeOperationHistoryListener(this.fHistoryListener);
        this.fHistoryListener = null;
    }

    private void addToOperationHistory(UndoableTextChange edit) {
        if (!this.fFoldingIntoCompoundChange || edit instanceof UndoableCompoundTextChange) {
            this.fHistory.add((IUndoableOperation)edit);
            this.fLastAddedTextEdit = edit;
        }
    }

    private void disposeUndoHistory() {
        this.fHistory.dispose((IUndoContext)this.fUndoContext, true, true, true);
    }

    private void initializeUndoHistory() {
        if (this.fHistory != null && this.fUndoContext != null) {
            this.fHistory.dispose((IUndoContext)this.fUndoContext, true, true, false);
        }
    }

    private boolean isWhitespaceText(String text) {
        if (text == null || text.length() == 0) {
            return false;
        }
        String[] delimiters = this.fDocument.getLegalLineDelimiters();
        int index = TextUtilities.startsWith(delimiters, text);
        if (index > -1) {
            int length = text.length();
            int i = delimiters[index].length();
            while (i < length) {
                char c = text.charAt(i);
                if (c != ' ' && c != '\t') {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    private void listenToTextChanges(boolean listen) {
        if (listen) {
            if (this.fDocumentListener == null && this.fDocument != null) {
                this.fDocumentListener = new DocumentListener();
                this.fDocument.addDocumentListener(this.fDocumentListener);
            }
        } else if (!listen && this.fDocumentListener != null && this.fDocument != null) {
            this.fDocument.removeDocumentListener(this.fDocumentListener);
            this.fDocumentListener = null;
        }
    }

    private void processChange(int modelStart, int modelEnd, String insertedText, String replacedText, long beforeChangeModificationStamp, long afterChangeModificationStamp) {
        if (insertedText == null) {
            insertedText = "";
        }
        if (replacedText == null) {
            replacedText = "";
        }
        int length = insertedText.length();
        int diff = modelEnd - modelStart;
        if (this.fCurrent.fUndoModificationStamp == -1L) {
            this.fCurrent.fUndoModificationStamp = beforeChangeModificationStamp;
        }
        if (diff < 0) {
            int tmp = modelEnd;
            modelEnd = modelStart;
            modelStart = tmp;
        }
        if (modelStart == modelEnd) {
            if (length == 1 || this.isWhitespaceText(insertedText)) {
                if (!this.fInserting || modelStart != this.fCurrent.fStart + this.fTextBuffer.length()) {
                    this.fCurrent.fRedoModificationStamp = beforeChangeModificationStamp;
                    if (this.fCurrent.attemptCommit()) {
                        this.fCurrent.fUndoModificationStamp = beforeChangeModificationStamp;
                    }
                    this.fInserting = true;
                }
                if (this.fCurrent.fStart < 0) {
                    this.fCurrent.fStart = this.fCurrent.fEnd = modelStart;
                }
                if (length > 0) {
                    this.fTextBuffer.append(insertedText);
                }
            } else if (length > 0) {
                this.fCurrent.fRedoModificationStamp = beforeChangeModificationStamp;
                if (this.fCurrent.attemptCommit()) {
                    this.fCurrent.fUndoModificationStamp = beforeChangeModificationStamp;
                }
                this.fCurrent.fStart = this.fCurrent.fEnd = modelStart;
                this.fTextBuffer.append(insertedText);
                this.fCurrent.fRedoModificationStamp = afterChangeModificationStamp;
                if (this.fCurrent.attemptCommit()) {
                    this.fCurrent.fUndoModificationStamp = afterChangeModificationStamp;
                }
            }
        } else if (length == 0) {
            length = replacedText.length();
            String[] delimiters = this.fDocument.getLegalLineDelimiters();
            if (length == 1 || TextUtilities.equals(delimiters, replacedText) > -1) {
                if (this.fPreviousDelete.fStart == modelStart && this.fPreviousDelete.fEnd == modelEnd) {
                    if (this.fCurrent.fStart == modelEnd && this.fCurrent.fEnd == modelStart) {
                        this.fCurrent.fStart = modelStart;
                        this.fCurrent.fEnd = modelEnd;
                    }
                    this.fPreservedTextBuffer.append(replacedText);
                    ++this.fCurrent.fEnd;
                } else if (this.fPreviousDelete.fStart == modelEnd) {
                    this.fPreservedTextBuffer.insert(0, replacedText);
                    this.fCurrent.fStart = modelStart;
                } else {
                    this.fCurrent.fRedoModificationStamp = beforeChangeModificationStamp;
                    if (this.fCurrent.attemptCommit()) {
                        this.fCurrent.fUndoModificationStamp = beforeChangeModificationStamp;
                    }
                    this.fPreservedTextBuffer.append(replacedText);
                    this.fCurrent.fStart = modelStart;
                    this.fCurrent.fEnd = modelEnd;
                }
                this.fPreviousDelete.set(modelStart, modelEnd);
            } else if (length > 0) {
                this.fCurrent.fRedoModificationStamp = beforeChangeModificationStamp;
                if (this.fCurrent.attemptCommit()) {
                    this.fCurrent.fUndoModificationStamp = beforeChangeModificationStamp;
                }
                this.fCurrent.fStart = modelStart;
                this.fCurrent.fEnd = modelEnd;
                this.fPreservedTextBuffer.append(replacedText);
            }
        } else {
            if (length == 1) {
                length = replacedText.length();
                String[] delimiters = this.fDocument.getLegalLineDelimiters();
                if (length == 1 || TextUtilities.equals(delimiters, replacedText) > -1) {
                    if (!this.fOverwriting || modelStart != this.fCurrent.fStart + this.fTextBuffer.length()) {
                        this.fCurrent.fRedoModificationStamp = beforeChangeModificationStamp;
                        if (this.fCurrent.attemptCommit()) {
                            this.fCurrent.fUndoModificationStamp = beforeChangeModificationStamp;
                        }
                        this.fOverwriting = true;
                    }
                    if (this.fCurrent.fStart < 0) {
                        this.fCurrent.fStart = modelStart;
                    }
                    this.fCurrent.fEnd = modelEnd;
                    this.fTextBuffer.append(insertedText);
                    this.fPreservedTextBuffer.append(replacedText);
                    this.fCurrent.fRedoModificationStamp = afterChangeModificationStamp;
                    return;
                }
            }
            this.fCurrent.fRedoModificationStamp = beforeChangeModificationStamp;
            if (this.fCurrent.attemptCommit()) {
                this.fCurrent.fUndoModificationStamp = beforeChangeModificationStamp;
            }
            this.fCurrent.fStart = modelStart;
            this.fCurrent.fEnd = modelEnd;
            this.fTextBuffer.append(insertedText);
            this.fPreservedTextBuffer.append(replacedText);
        }
        this.fCurrent.fRedoModificationStamp = afterChangeModificationStamp;
    }

    private void initialize() {
        this.initializeUndoHistory();
        this.fCurrent = new UndoableTextChange(this);
        this.fPreviousDelete = new UndoableTextChange(this);
        this.fTextBuffer = new StringBuffer();
        this.fPreservedTextBuffer = new StringBuffer();
        this.addListeners();
    }

    private void resetProcessChangeState() {
        this.fInserting = false;
        this.fOverwriting = false;
        this.fPreviousDelete.reinitialize();
    }

    private void shutdown() {
        this.removeListeners();
        this.fCurrent = null;
        this.fPreviousDelete = null;
        this.fTextBuffer = null;
        this.fPreservedTextBuffer = null;
        this.disposeUndoHistory();
    }

    boolean isConnected() {
        if (this.fConnected == null) {
            return false;
        }
        return !this.fConnected.isEmpty();
    }

    public void transferUndoHistory(IDocumentUndoManager manager) {
        IUndoContext oldUndoContext = manager.getUndoContext();
        IUndoableOperation[] operations = OperationHistoryFactory.getOperationHistory().getUndoHistory(oldUndoContext);
        int i = 0;
        while (i < operations.length) {
            IUndoableOperation op = operations[i];
            if (op instanceof IContextReplacingOperation) {
                ((IContextReplacingOperation)op).replaceContext(oldUndoContext, this.getUndoContext());
            } else {
                op.addContext(this.getUndoContext());
                op.removeContext(oldUndoContext);
            }
            if (op instanceof UndoableTextChange) {
                ((UndoableTextChange)op).fDocumentUndoManager = this;
            }
            ++i;
        }
        IUndoableOperation op = OperationHistoryFactory.getOperationHistory().getUndoOperation(this.getUndoContext());
        if (op != null && !(op instanceof UndoableTextChange)) {
            return;
        }
        UndoableTextChange cmd = new UndoableTextChange(this);
        cmd.fEnd = 0;
        cmd.fStart = 0;
        cmd.fPreservedText = "";
        cmd.fText = "";
        if (this.fDocument instanceof IDocumentExtension4) {
            cmd.fRedoModificationStamp = ((IDocumentExtension4)((Object)this.fDocument)).getModificationStamp();
            if (op != null) {
                cmd.fUndoModificationStamp = ((UndoableTextChange)op).fRedoModificationStamp;
            }
        }
        this.addToOperationHistory(cmd);
    }

    private class DocumentListener
    implements IDocumentListener {
        private String fReplacedText;

        private DocumentListener() {
        }

        public void documentAboutToBeChanged(DocumentEvent event) {
            try {
                this.fReplacedText = event.getDocument().get(event.getOffset(), event.getLength());
                DocumentUndoManager.this.fPreservedUndoModificationStamp = event.getModificationStamp();
            }
            catch (BadLocationException badLocationException) {
                this.fReplacedText = null;
            }
        }

        public void documentChanged(DocumentEvent event) {
            DocumentUndoManager.this.fPreservedRedoModificationStamp = event.getModificationStamp();
            IUndoableOperation op = DocumentUndoManager.this.fHistory.getUndoOperation((IUndoContext)DocumentUndoManager.this.fUndoContext);
            boolean wasValid = false;
            if (op != null) {
                wasValid = op.canUndo();
            }
            DocumentUndoManager.this.processChange(event.getOffset(), event.getOffset() + event.getLength(), event.getText(), this.fReplacedText, DocumentUndoManager.this.fPreservedUndoModificationStamp, DocumentUndoManager.this.fPreservedRedoModificationStamp);
            DocumentUndoManager.this.fCurrent.pretendCommit();
            if (op == DocumentUndoManager.this.fCurrent) {
                if (wasValid != DocumentUndoManager.this.fCurrent.isValid()) {
                    DocumentUndoManager.this.fHistory.operationChanged(op);
                }
            } else if (DocumentUndoManager.this.fCurrent != DocumentUndoManager.this.fLastAddedTextEdit && DocumentUndoManager.this.fCurrent.isValid()) {
                DocumentUndoManager.this.addToOperationHistory(DocumentUndoManager.this.fCurrent);
            }
        }
    }

    private class HistoryListener
    implements IOperationHistoryListener {
        private IUndoableOperation fOperation;

        private HistoryListener() {
        }

        public void historyNotification(OperationHistoryEvent event) {
            int type = event.getEventType();
            switch (type) {
                case 2: 
                case 3: {
                    if (!event.getOperation().hasContext((IUndoContext)DocumentUndoManager.this.fUndoContext)) break;
                    if (event.getOperation() instanceof UndoableTextChange) {
                        DocumentUndoManager.this.listenToTextChanges(false);
                        if (type == 3 && DocumentUndoManager.this.fFoldingIntoCompoundChange) {
                            DocumentUndoManager.this.endCompoundChange();
                        }
                    } else {
                        DocumentUndoManager.this.commit();
                        DocumentUndoManager.this.fLastAddedTextEdit = null;
                    }
                    this.fOperation = event.getOperation();
                    break;
                }
                case 7: 
                case 9: 
                case 10: {
                    if (event.getOperation() != this.fOperation) break;
                    DocumentUndoManager.this.listenToTextChanges(true);
                    this.fOperation = null;
                }
            }
        }
    }

    private static class UndoableCompoundTextChange
    extends UndoableTextChange {
        private List fChanges = new ArrayList();

        UndoableCompoundTextChange(DocumentUndoManager manager) {
            super(manager);
        }

        protected void add(UndoableTextChange change) {
            this.fChanges.add(change);
        }

        public IStatus undo(IProgressMonitor monitor, IAdaptable uiInfo) {
            int size = this.fChanges.size();
            if (size > 0) {
                UndoableTextChange c = (UndoableTextChange)((Object)this.fChanges.get(0));
                this.fDocumentUndoManager.fireDocumentUndo(c.fStart, c.fPreservedText, c.fText, uiInfo, 1, true);
                int i = size - 1;
                while (i >= 0) {
                    c = (UndoableTextChange)((Object)this.fChanges.get(i));
                    c.undoTextChange();
                    --i;
                }
                this.fDocumentUndoManager.resetProcessChangeState();
                this.fDocumentUndoManager.fireDocumentUndo(c.fStart, c.fPreservedText, c.fText, uiInfo, 4, true);
            }
            return Status.OK_STATUS;
        }

        public IStatus redo(IProgressMonitor monitor, IAdaptable uiInfo) {
            int size = this.fChanges.size();
            if (size > 0) {
                UndoableTextChange c = (UndoableTextChange)((Object)this.fChanges.get(size - 1));
                this.fDocumentUndoManager.fireDocumentUndo(c.fStart, c.fText, c.fPreservedText, uiInfo, 2, true);
                int i = 0;
                while (i <= size - 1) {
                    c = (UndoableTextChange)((Object)this.fChanges.get(i));
                    c.redoTextChange();
                    ++i;
                }
                this.fDocumentUndoManager.resetProcessChangeState();
                this.fDocumentUndoManager.fireDocumentUndo(c.fStart, c.fText, c.fPreservedText, uiInfo, 8, true);
            }
            return Status.OK_STATUS;
        }

        protected void updateTextChange() {
            super.updateTextChange();
            UndoableTextChange c = new UndoableTextChange(this.fDocumentUndoManager);
            c.fStart = this.fStart;
            c.fEnd = this.fEnd;
            c.fText = this.fText;
            c.fPreservedText = this.fPreservedText;
            c.fUndoModificationStamp = this.fUndoModificationStamp;
            c.fRedoModificationStamp = this.fRedoModificationStamp;
            this.add(c);
            this.reinitialize();
        }

        protected UndoableTextChange createCurrent() {
            if (!this.fDocumentUndoManager.fFoldingIntoCompoundChange) {
                return new UndoableTextChange(this.fDocumentUndoManager);
            }
            this.reinitialize();
            return this;
        }

        protected void commit() {
            if (this.fStart > -1) {
                this.updateTextChange();
            }
            this.fDocumentUndoManager.fCurrent = this.createCurrent();
            this.fDocumentUndoManager.resetProcessChangeState();
        }

        protected boolean isValid() {
            return this.fStart > -1 || this.fChanges.size() > 0;
        }

        protected long getUndoModificationStamp() {
            if (this.fStart > -1) {
                return super.getUndoModificationStamp();
            }
            if (this.fChanges.size() > 0) {
                return ((UndoableTextChange)((Object)this.fChanges.get(0))).getUndoModificationStamp();
            }
            return this.fUndoModificationStamp;
        }

        protected long getRedoModificationStamp() {
            if (this.fStart > -1) {
                return super.getRedoModificationStamp();
            }
            if (this.fChanges.size() > 0) {
                return ((UndoableTextChange)((Object)this.fChanges.get(this.fChanges.size() - 1))).getRedoModificationStamp();
            }
            return this.fRedoModificationStamp;
        }
    }

    private static class UndoableTextChange
    extends AbstractOperation {
        protected int fStart = -1;
        protected int fEnd = -1;
        protected String fText;
        protected String fPreservedText;
        protected long fUndoModificationStamp = -1L;
        protected long fRedoModificationStamp = -1L;
        protected DocumentUndoManager fDocumentUndoManager;

        UndoableTextChange(DocumentUndoManager manager) {
            super(UndoMessages.getString("DocumentUndoManager.operationLabel"));
            this.fDocumentUndoManager = manager;
            this.addContext(manager.getUndoContext());
        }

        protected void reinitialize() {
            this.fEnd = -1;
            this.fStart = -1;
            this.fPreservedText = null;
            this.fText = null;
            this.fUndoModificationStamp = -1L;
            this.fRedoModificationStamp = -1L;
        }

        protected void set(int start, int end) {
            this.fStart = start;
            this.fEnd = end;
            this.fText = null;
            this.fPreservedText = null;
        }

        public void dispose() {
            this.reinitialize();
        }

        protected void undoTextChange() {
            try {
                if (this.fDocumentUndoManager.fDocument instanceof IDocumentExtension4) {
                    ((IDocumentExtension4)((Object)this.fDocumentUndoManager.fDocument)).replace(this.fStart, this.fText.length(), this.fPreservedText, this.fUndoModificationStamp);
                } else {
                    this.fDocumentUndoManager.fDocument.replace(this.fStart, this.fText.length(), this.fPreservedText);
                }
            }
            catch (BadLocationException badLocationException) {}
        }

        public boolean canUndo() {
            if (this.isValid()) {
                if (this.fDocumentUndoManager.fDocument instanceof IDocumentExtension4) {
                    boolean canUndo;
                    long docStamp = ((IDocumentExtension4)((Object)this.fDocumentUndoManager.fDocument)).getModificationStamp();
                    boolean bl = canUndo = docStamp == -1L || docStamp >= this.getRedoModificationStamp();
                    if (!canUndo && this == this.fDocumentUndoManager.fHistory.getUndoOperation((IUndoContext)this.fDocumentUndoManager.fUndoContext) && this != this.fDocumentUndoManager.fCurrent && !this.fDocumentUndoManager.fCurrent.isValid() && ((DocumentUndoManager)this.fDocumentUndoManager).fCurrent.fUndoModificationStamp != -1L) {
                        boolean bl2 = canUndo = ((DocumentUndoManager)this.fDocumentUndoManager).fCurrent.fRedoModificationStamp == docStamp;
                    }
                    if (!canUndo && this == this.fDocumentUndoManager.fHistory.getUndoOperation((IUndoContext)this.fDocumentUndoManager.fUndoContext) && this instanceof UndoableCompoundTextChange && this == this.fDocumentUndoManager.fCurrent && this.fStart == -1 && ((DocumentUndoManager)this.fDocumentUndoManager).fCurrent.fRedoModificationStamp != -1L) {
                        canUndo = ((DocumentUndoManager)this.fDocumentUndoManager).fCurrent.fRedoModificationStamp == docStamp;
                    }
                    return canUndo;
                }
                return true;
            }
            return false;
        }

        public boolean canRedo() {
            if (this.isValid()) {
                if (this.fDocumentUndoManager.fDocument instanceof IDocumentExtension4) {
                    long docStamp = ((IDocumentExtension4)((Object)this.fDocumentUndoManager.fDocument)).getModificationStamp();
                    return docStamp == -1L || docStamp == this.getUndoModificationStamp();
                }
                return true;
            }
            return false;
        }

        public boolean canExecute() {
            return this.fDocumentUndoManager.isConnected();
        }

        public IStatus execute(IProgressMonitor monitor, IAdaptable uiInfo) {
            return Status.OK_STATUS;
        }

        public IStatus undo(IProgressMonitor monitor, IAdaptable uiInfo) {
            if (this.isValid()) {
                this.fDocumentUndoManager.fireDocumentUndo(this.fStart, this.fPreservedText, this.fText, uiInfo, 1, false);
                this.undoTextChange();
                this.fDocumentUndoManager.resetProcessChangeState();
                this.fDocumentUndoManager.fireDocumentUndo(this.fStart, this.fPreservedText, this.fText, uiInfo, 4, false);
                return Status.OK_STATUS;
            }
            return IOperationHistory.OPERATION_INVALID_STATUS;
        }

        protected void redoTextChange() {
            try {
                if (this.fDocumentUndoManager.fDocument instanceof IDocumentExtension4) {
                    ((IDocumentExtension4)((Object)this.fDocumentUndoManager.fDocument)).replace(this.fStart, this.fEnd - this.fStart, this.fText, this.fRedoModificationStamp);
                } else {
                    this.fDocumentUndoManager.fDocument.replace(this.fStart, this.fEnd - this.fStart, this.fText);
                }
            }
            catch (BadLocationException badLocationException) {}
        }

        public IStatus redo(IProgressMonitor monitor, IAdaptable uiInfo) {
            if (this.isValid()) {
                this.fDocumentUndoManager.fireDocumentUndo(this.fStart, this.fText, this.fPreservedText, uiInfo, 2, false);
                this.redoTextChange();
                this.fDocumentUndoManager.resetProcessChangeState();
                this.fDocumentUndoManager.fireDocumentUndo(this.fStart, this.fText, this.fPreservedText, uiInfo, 8, false);
                return Status.OK_STATUS;
            }
            return IOperationHistory.OPERATION_INVALID_STATUS;
        }

        protected void updateTextChange() {
            this.fText = this.fDocumentUndoManager.fTextBuffer.toString();
            this.fDocumentUndoManager.fTextBuffer.setLength(0);
            this.fPreservedText = this.fDocumentUndoManager.fPreservedTextBuffer.toString();
            this.fDocumentUndoManager.fPreservedTextBuffer.setLength(0);
        }

        protected UndoableTextChange createCurrent() {
            if (this.fDocumentUndoManager.fFoldingIntoCompoundChange) {
                return new UndoableCompoundTextChange(this.fDocumentUndoManager);
            }
            return new UndoableTextChange(this.fDocumentUndoManager);
        }

        protected void commit() {
            if (this.fStart < 0) {
                if (this.fDocumentUndoManager.fFoldingIntoCompoundChange) {
                    this.fDocumentUndoManager.fCurrent = this.createCurrent();
                } else {
                    this.reinitialize();
                }
            } else {
                this.updateTextChange();
                this.fDocumentUndoManager.fCurrent = this.createCurrent();
            }
            this.fDocumentUndoManager.resetProcessChangeState();
        }

        protected void pretendCommit() {
            if (this.fStart > -1) {
                this.fText = this.fDocumentUndoManager.fTextBuffer.toString();
                this.fPreservedText = this.fDocumentUndoManager.fPreservedTextBuffer.toString();
            }
        }

        protected boolean attemptCommit() {
            this.pretendCommit();
            if (this.isValid()) {
                this.fDocumentUndoManager.commit();
                return true;
            }
            return false;
        }

        protected boolean isValid() {
            return this.fStart > -1 && this.fEnd > -1 && this.fText != null;
        }

        public String toString() {
            String delimiter = ", ";
            StringBuffer text = new StringBuffer(super.toString());
            text.append("\n");
            text.append(((Object)((Object)this)).getClass().getName());
            text.append(" undo modification stamp: ");
            text.append(this.fUndoModificationStamp);
            text.append(" redo modification stamp: ");
            text.append(this.fRedoModificationStamp);
            text.append(" start: ");
            text.append(this.fStart);
            text.append(delimiter);
            text.append("end: ");
            text.append(this.fEnd);
            text.append(delimiter);
            text.append("text: '");
            text.append(this.fText);
            text.append('\'');
            text.append(delimiter);
            text.append("preservedText: '");
            text.append(this.fPreservedText);
            text.append('\'');
            return text.toString();
        }

        protected long getUndoModificationStamp() {
            return this.fUndoModificationStamp;
        }

        protected long getRedoModificationStamp() {
            return this.fRedoModificationStamp;
        }
    }
}

