/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.AbstractOperation
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IOperationHistoryListener
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.commands.operations.ObjectUndoContext
 *  org.eclipse.core.commands.operations.OperationHistoryEvent
 *  org.eclipse.core.commands.operations.OperationHistoryFactory
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentExtension4
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.text;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.AbstractOperation;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IOperationHistoryListener;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.ObjectUndoContext;
import org.eclipse.core.commands.operations.OperationHistoryEvent;
import org.eclipse.core.commands.operations.OperationHistoryFactory;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.IUndoManager;
import org.eclipse.jface.text.IUndoManagerExtension;
import org.eclipse.jface.text.JFaceTextMessages;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.TextViewer;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class DefaultUndoManager
implements IUndoManager,
IUndoManagerExtension {
    private StringBuffer fTextBuffer;
    private StringBuffer fPreservedTextBuffer;
    protected long fPreservedUndoModificationStamp = -1L;
    protected long fPreservedRedoModificationStamp = -1L;
    private KeyAndMouseListener fKeyAndMouseListener;
    private DocumentListener fDocumentListener;
    private TextInputListener fTextInputListener;
    private boolean fInserting = false;
    private boolean fOverwriting = false;
    private boolean fFoldingIntoCompoundChange = false;
    private ITextViewer fTextViewer;
    private int fUndoLevel;
    private TextCommand fCurrent;
    private TextCommand fPreviousDelete;
    private IOperationHistory fHistory;
    private IUndoContext fUndoContext;
    private IOperationHistoryListener fHistoryListener = new HistoryListener();
    private TextCommand fLastAddedCommand = null;

    public DefaultUndoManager(int undoLevel) {
        this.fHistory = OperationHistoryFactory.getOperationHistory();
        this.setMaximalUndoLevel(undoLevel);
    }

    private boolean isConnected() {
        return this.fTextViewer != null;
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

    private void addListeners() {
        StyledText text = this.fTextViewer.getTextWidget();
        if (text != null) {
            this.fKeyAndMouseListener = new KeyAndMouseListener();
            text.addMouseListener((MouseListener)this.fKeyAndMouseListener);
            text.addKeyListener((KeyListener)this.fKeyAndMouseListener);
            this.fTextInputListener = new TextInputListener();
            this.fTextViewer.addTextInputListener(this.fTextInputListener);
            this.fHistory.addOperationHistoryListener(this.fHistoryListener);
            this.listenToTextChanges(true);
        }
    }

    private void removeListeners() {
        StyledText text = this.fTextViewer.getTextWidget();
        if (text != null) {
            if (this.fKeyAndMouseListener != null) {
                text.removeMouseListener((MouseListener)this.fKeyAndMouseListener);
                text.removeKeyListener((KeyListener)this.fKeyAndMouseListener);
                this.fKeyAndMouseListener = null;
            }
            if (this.fTextInputListener != null) {
                this.fTextViewer.removeTextInputListener(this.fTextInputListener);
                this.fTextInputListener = null;
            }
            this.listenToTextChanges(false);
            this.fHistory.removeOperationHistoryListener(this.fHistoryListener);
        }
    }

    private void addToCommandStack(TextCommand command) {
        if (!this.fFoldingIntoCompoundChange || command instanceof CompoundTextCommand) {
            this.fHistory.add((IUndoableOperation)command);
            this.fLastAddedCommand = command;
        }
    }

    private void disposeCommandStack() {
        this.fHistory.dispose(this.fUndoContext, true, true, true);
    }

    private void initializeCommandStack() {
        if (this.fHistory != null && this.fUndoContext != null) {
            this.fHistory.dispose(this.fUndoContext, true, true, false);
        }
    }

    private void listenToTextChanges(boolean listen) {
        if (listen) {
            if (this.fDocumentListener == null && this.fTextViewer.getDocument() != null) {
                this.fDocumentListener = new DocumentListener();
                this.fTextViewer.getDocument().addDocumentListener((IDocumentListener)this.fDocumentListener);
            }
        } else if (!listen && this.fDocumentListener != null && this.fTextViewer.getDocument() != null) {
            this.fTextViewer.getDocument().removeDocumentListener((IDocumentListener)this.fDocumentListener);
            this.fDocumentListener = null;
        }
    }

    private void commit() {
        if (this.fLastAddedCommand != this.fCurrent) {
            this.fCurrent.pretendCommit();
            if (this.fCurrent.isValid()) {
                this.addToCommandStack(this.fCurrent);
            }
        }
        this.fCurrent.commit();
    }

    private void resetProcessChangeSate() {
        this.fInserting = false;
        this.fOverwriting = false;
        this.fPreviousDelete.reinitialize();
    }

    private boolean isWhitespaceText(String text) {
        if (text == null || text.length() == 0) {
            return false;
        }
        String[] delimiters = this.fTextViewer.getDocument().getLegalLineDelimiters();
        int index = TextUtilities.startsWith((String[])delimiters, (String)text);
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
            } else if (length >= 0) {
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
            String[] delimiters = this.fTextViewer.getDocument().getLegalLineDelimiters();
            if (length == 1 || TextUtilities.equals((String[])delimiters, (String)replacedText) > -1) {
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
                String[] delimiters = this.fTextViewer.getDocument().getLegalLineDelimiters();
                if (length == 1 || TextUtilities.equals((String[])delimiters, (String)replacedText) > -1) {
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

    private void openErrorDialog(final String title, final Exception ex) {
        StyledText st;
        Shell shell = null;
        if (this.isConnected() && (st = this.fTextViewer.getTextWidget()) != null && !st.isDisposed()) {
            shell = st.getShell();
        }
        if (Display.getCurrent() != null) {
            MessageDialog.openError(shell, (String)title, (String)ex.getLocalizedMessage());
        } else {
            final Shell finalShell = shell;
            Display display = finalShell != null ? finalShell.getDisplay() : Display.getDefault();
            display.syncExec(new Runnable(){

                public void run() {
                    MessageDialog.openError((Shell)finalShell, (String)title, (String)ex.getLocalizedMessage());
                }
            });
        }
    }

    public void setMaximalUndoLevel(int undoLevel) {
        this.fUndoLevel = Math.max(0, undoLevel);
        if (this.isConnected()) {
            this.fHistory.setLimit(this.fUndoContext, this.fUndoLevel);
        }
    }

    public void connect(ITextViewer textViewer) {
        if (!this.isConnected() && textViewer != null) {
            this.fTextViewer = textViewer;
            this.fTextBuffer = new StringBuffer();
            this.fPreservedTextBuffer = new StringBuffer();
            if (this.fUndoContext == null) {
                this.fUndoContext = new ObjectUndoContext((Object)this);
            }
            this.fHistory.setLimit(this.fUndoContext, this.fUndoLevel);
            this.initializeCommandStack();
            this.fCurrent = new TextCommand(this.fUndoContext);
            this.fPreviousDelete = new TextCommand(this.fUndoContext);
            this.addListeners();
        }
    }

    public void disconnect() {
        if (this.isConnected()) {
            this.removeListeners();
            this.fCurrent = null;
            this.fTextViewer = null;
            this.disposeCommandStack();
            this.fTextBuffer = null;
            this.fPreservedTextBuffer = null;
            this.fUndoContext = null;
        }
    }

    public void reset() {
        if (this.isConnected()) {
            this.initializeCommandStack();
            this.fCurrent = new TextCommand(this.fUndoContext);
            this.fFoldingIntoCompoundChange = false;
            this.fInserting = false;
            this.fOverwriting = false;
            this.fTextBuffer.setLength(0);
            this.fPreservedTextBuffer.setLength(0);
            this.fPreservedUndoModificationStamp = -1L;
            this.fPreservedRedoModificationStamp = -1L;
        }
    }

    public boolean redoable() {
        return this.fHistory.canRedo(this.fUndoContext);
    }

    public boolean undoable() {
        return this.fHistory.canUndo(this.fUndoContext);
    }

    public void redo() {
        if (this.isConnected() && this.redoable()) {
            try {
                this.fHistory.redo(this.fUndoContext, null, null);
            }
            catch (ExecutionException ex) {
                this.openErrorDialog(JFaceTextMessages.getString("DefaultUndoManager.error.redoFailed.title"), (Exception)((Object)ex));
            }
        }
    }

    public void undo() {
        if (this.isConnected() && this.undoable()) {
            try {
                this.fHistory.undo(this.fUndoContext, null, null);
            }
            catch (ExecutionException ex) {
                this.openErrorDialog(JFaceTextMessages.getString("DefaultUndoManager.error.undoFailed.title"), (Exception)((Object)ex));
            }
        }
    }

    protected void selectAndReveal(int offset, int length) {
        if (this.fTextViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fTextViewer);
            extension.exposeModelRange((IRegion)new Region(offset, length));
        } else if (!this.fTextViewer.overlapsWithVisibleRegion(offset, length)) {
            this.fTextViewer.resetVisibleRegion();
        }
        this.fTextViewer.setSelectedRange(offset, length);
        this.fTextViewer.revealRange(offset, length);
    }

    public IUndoContext getUndoContext() {
        return this.fUndoContext;
    }

    static /* synthetic */ void access$16(DefaultUndoManager defaultUndoManager, boolean bl) {
        defaultUndoManager.listenToTextChanges(bl);
    }

    static /* synthetic */ void access$17(DefaultUndoManager defaultUndoManager, TextCommand textCommand) {
        defaultUndoManager.fLastAddedCommand = textCommand;
    }

    class CompoundTextCommand
    extends TextCommand {
        private List fCommands = new ArrayList();

        CompoundTextCommand(IUndoContext context) {
            super(context);
        }

        protected void add(TextCommand command) {
            this.fCommands.add(command);
        }

        public IStatus undo(IProgressMonitor monitor, IAdaptable uiInfo) {
            DefaultUndoManager.this.resetProcessChangeSate();
            int size = this.fCommands.size();
            if (size > 0) {
                TextCommand c;
                int i = size - 1;
                while (i > 0) {
                    c = (TextCommand)((Object)this.fCommands.get(i));
                    c.undoTextChange();
                    --i;
                }
                c = (TextCommand)((Object)this.fCommands.get(0));
                c.undo(monitor, uiInfo);
            }
            return Status.OK_STATUS;
        }

        public IStatus redo(IProgressMonitor monitor, IAdaptable uiInfo) {
            DefaultUndoManager.this.resetProcessChangeSate();
            int size = this.fCommands.size();
            if (size > 0) {
                TextCommand c;
                int i = 0;
                while (i < size - 1) {
                    c = (TextCommand)((Object)this.fCommands.get(i));
                    c.redoTextChange();
                    ++i;
                }
                c = (TextCommand)((Object)this.fCommands.get(size - 1));
                c.redo(monitor, uiInfo);
            }
            return Status.OK_STATUS;
        }

        protected void updateCommand() {
            super.updateCommand();
            TextCommand c = new TextCommand(DefaultUndoManager.this.fUndoContext);
            c.fStart = this.fStart;
            c.fEnd = this.fEnd;
            c.fText = this.fText;
            c.fPreservedText = this.fPreservedText;
            c.fUndoModificationStamp = this.fUndoModificationStamp;
            c.fRedoModificationStamp = this.fRedoModificationStamp;
            this.add(c);
            this.reinitialize();
        }

        protected TextCommand createCurrent() {
            if (!DefaultUndoManager.this.fFoldingIntoCompoundChange) {
                return new TextCommand(DefaultUndoManager.this.fUndoContext);
            }
            this.reinitialize();
            return this;
        }

        protected void commit() {
            if (this.fStart > -1) {
                this.updateCommand();
            }
            DefaultUndoManager.this.fCurrent = this.createCurrent();
            DefaultUndoManager.this.resetProcessChangeSate();
        }

        protected boolean isValid() {
            if (DefaultUndoManager.this.isConnected()) {
                return this.fStart > -1 || this.fCommands.size() > 0;
            }
            return false;
        }

        protected long getUndoModificationStamp() {
            if (this.fStart > -1) {
                return super.getUndoModificationStamp();
            }
            if (this.fCommands.size() > 0) {
                return ((TextCommand)((Object)this.fCommands.get(0))).getUndoModificationStamp();
            }
            return this.fUndoModificationStamp;
        }

        protected long getRedoModificationStamp() {
            if (this.fStart > -1) {
                return super.getRedoModificationStamp();
            }
            if (this.fCommands.size() > 0) {
                return ((TextCommand)((Object)this.fCommands.get(this.fCommands.size() - 1))).getRedoModificationStamp();
            }
            return this.fRedoModificationStamp;
        }
    }

    class DocumentListener
    implements IDocumentListener {
        private String fReplacedText;

        DocumentListener() {
        }

        public void documentAboutToBeChanged(DocumentEvent event) {
            try {
                this.fReplacedText = event.getDocument().get(event.getOffset(), event.getLength());
                DefaultUndoManager.this.fPreservedUndoModificationStamp = event.getModificationStamp();
            }
            catch (BadLocationException badLocationException) {
                this.fReplacedText = null;
            }
        }

        public void documentChanged(DocumentEvent event) {
            DefaultUndoManager.this.fPreservedRedoModificationStamp = event.getModificationStamp();
            IUndoableOperation op = DefaultUndoManager.this.fHistory.getUndoOperation(DefaultUndoManager.this.fUndoContext);
            boolean wasValid = false;
            if (op != null) {
                wasValid = op.canUndo();
            }
            DefaultUndoManager.this.processChange(event.getOffset(), event.getOffset() + event.getLength(), event.getText(), this.fReplacedText, DefaultUndoManager.this.fPreservedUndoModificationStamp, DefaultUndoManager.this.fPreservedRedoModificationStamp);
            DefaultUndoManager.this.fCurrent.pretendCommit();
            if (op == DefaultUndoManager.this.fCurrent) {
                if (wasValid != DefaultUndoManager.this.fCurrent.isValid()) {
                    DefaultUndoManager.this.fHistory.operationChanged(op);
                }
            } else if (DefaultUndoManager.this.fCurrent != DefaultUndoManager.this.fLastAddedCommand && DefaultUndoManager.this.fCurrent.isValid()) {
                DefaultUndoManager.this.addToCommandStack(DefaultUndoManager.this.fCurrent);
            }
        }
    }

    class HistoryListener
    implements IOperationHistoryListener {
        private IUndoableOperation fOperation;

        HistoryListener() {
        }

        public void historyNotification(OperationHistoryEvent event) {
            int type = event.getEventType();
            switch (type) {
                case 2: 
                case 3: {
                    if (!event.getOperation().hasContext(DefaultUndoManager.this.fUndoContext)) break;
                    DefaultUndoManager.this.fTextViewer.getTextWidget().getDisplay().syncExec(new Runnable(this, event, type){
                        final /* synthetic */ HistoryListener this$1;
                        private final /* synthetic */ OperationHistoryEvent val$event;
                        private final /* synthetic */ int val$type;
                        {
                            this.this$1 = historyListener;
                            this.val$event = operationHistoryEvent;
                            this.val$type = n;
                        }

                        public void run() {
                            if (this.val$event.getOperation() instanceof TextCommand) {
                                if (DefaultUndoManager.access$0(HistoryListener.access$1(this.this$1)) instanceof TextViewer) {
                                    ((TextViewer)DefaultUndoManager.access$0(HistoryListener.access$1(this.this$1))).ignoreAutoEditStrategies(true);
                                }
                                DefaultUndoManager.access$16(HistoryListener.access$1(this.this$1), false);
                                if (this.val$type == 3 && DefaultUndoManager.access$8(HistoryListener.access$1(this.this$1))) {
                                    HistoryListener.access$1(this.this$1).endCompoundChange();
                                }
                            } else {
                                DefaultUndoManager.access$10(HistoryListener.access$1(this.this$1));
                                DefaultUndoManager.access$17(HistoryListener.access$1(this.this$1), null);
                            }
                        }
                    });
                    this.fOperation = event.getOperation();
                    break;
                }
                case 7: 
                case 9: 
                case 10: {
                    if (event.getOperation() != this.fOperation) break;
                    DefaultUndoManager.this.fTextViewer.getTextWidget().getDisplay().syncExec(new Runnable(this){
                        final /* synthetic */ HistoryListener this$1;
                        {
                            this.this$1 = historyListener;
                        }

                        public void run() {
                            DefaultUndoManager.access$16(HistoryListener.access$1(this.this$1), true);
                            HistoryListener.access$0(this.this$1, null);
                            if (DefaultUndoManager.access$0(HistoryListener.access$1(this.this$1)) instanceof TextViewer) {
                                ((TextViewer)DefaultUndoManager.access$0(HistoryListener.access$1(this.this$1))).ignoreAutoEditStrategies(false);
                            }
                        }
                    });
                }
            }
        }

        static /* synthetic */ void access$0(HistoryListener historyListener, IUndoableOperation iUndoableOperation) {
            historyListener.fOperation = iUndoableOperation;
        }

        static /* synthetic */ DefaultUndoManager access$1(HistoryListener historyListener) {
            return historyListener.DefaultUndoManager.this;
        }
    }

    class KeyAndMouseListener
    implements MouseListener,
    KeyListener {
        KeyAndMouseListener() {
        }

        public void mouseDoubleClick(MouseEvent e) {
        }

        public void mouseDown(MouseEvent e) {
            if (e.button == 1) {
                DefaultUndoManager.this.commit();
            }
        }

        public void mouseUp(MouseEvent e) {
        }

        public void keyReleased(KeyEvent e) {
        }

        public void keyPressed(KeyEvent e) {
            switch (e.keyCode) {
                case 0x1000001: 
                case 0x1000002: 
                case 0x1000003: 
                case 0x1000004: {
                    DefaultUndoManager.this.commit();
                }
            }
        }
    }

    class TextCommand
    extends AbstractOperation {
        protected int fStart = -1;
        protected int fEnd = -1;
        protected String fText;
        protected String fPreservedText;
        protected long fUndoModificationStamp = -1L;
        protected long fRedoModificationStamp = -1L;

        TextCommand(IUndoContext context) {
            super(JFaceTextMessages.getString("DefaultUndoManager.operationLabel"));
            this.addContext(context);
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
                IDocument document = DefaultUndoManager.this.fTextViewer.getDocument();
                if (document instanceof IDocumentExtension4) {
                    ((IDocumentExtension4)document).replace(this.fStart, this.fText.length(), this.fPreservedText, this.fUndoModificationStamp);
                } else {
                    document.replace(this.fStart, this.fText.length(), this.fPreservedText);
                }
            }
            catch (BadLocationException badLocationException) {}
        }

        public boolean canUndo() {
            if (DefaultUndoManager.this.isConnected() && this.isValid()) {
                IDocument doc = DefaultUndoManager.this.fTextViewer.getDocument();
                if (doc instanceof IDocumentExtension4) {
                    boolean canUndo;
                    long docStamp = ((IDocumentExtension4)doc).getModificationStamp();
                    boolean bl = canUndo = docStamp == -1L || docStamp == this.getRedoModificationStamp();
                    if (!canUndo && this == DefaultUndoManager.this.fHistory.getUndoOperation(DefaultUndoManager.this.fUndoContext) && this != DefaultUndoManager.this.fCurrent && !DefaultUndoManager.this.fCurrent.isValid() && ((DefaultUndoManager)DefaultUndoManager.this).fCurrent.fUndoModificationStamp != -1L) {
                        boolean bl2 = canUndo = ((DefaultUndoManager)DefaultUndoManager.this).fCurrent.fRedoModificationStamp == docStamp;
                    }
                    if (!canUndo && this == DefaultUndoManager.this.fHistory.getUndoOperation(DefaultUndoManager.this.fUndoContext) && this instanceof CompoundTextCommand && this == DefaultUndoManager.this.fCurrent && this.fStart == -1 && ((DefaultUndoManager)DefaultUndoManager.this).fCurrent.fRedoModificationStamp != -1L) {
                        canUndo = ((DefaultUndoManager)DefaultUndoManager.this).fCurrent.fRedoModificationStamp == docStamp;
                    }
                }
                return true;
            }
            return false;
        }

        public boolean canRedo() {
            if (DefaultUndoManager.this.isConnected() && this.isValid()) {
                IDocument doc = DefaultUndoManager.this.fTextViewer.getDocument();
                if (doc instanceof IDocumentExtension4) {
                    long docStamp = ((IDocumentExtension4)doc).getModificationStamp();
                    return docStamp == -1L || docStamp == this.getUndoModificationStamp();
                }
                return true;
            }
            return false;
        }

        public boolean canExecute() {
            return DefaultUndoManager.this.isConnected();
        }

        public IStatus execute(IProgressMonitor monitor, IAdaptable uiInfo) {
            return Status.OK_STATUS;
        }

        public IStatus undo(IProgressMonitor monitor, IAdaptable uiInfo) {
            if (this.isValid()) {
                this.undoTextChange();
                DefaultUndoManager.this.selectAndReveal(this.fStart, this.fPreservedText == null ? 0 : this.fPreservedText.length());
                DefaultUndoManager.this.resetProcessChangeSate();
                return Status.OK_STATUS;
            }
            return IOperationHistory.OPERATION_INVALID_STATUS;
        }

        protected void redoTextChange() {
            try {
                IDocument document = DefaultUndoManager.this.fTextViewer.getDocument();
                if (document instanceof IDocumentExtension4) {
                    ((IDocumentExtension4)document).replace(this.fStart, this.fEnd - this.fStart, this.fText, this.fRedoModificationStamp);
                } else {
                    DefaultUndoManager.this.fTextViewer.getDocument().replace(this.fStart, this.fEnd - this.fStart, this.fText);
                }
            }
            catch (BadLocationException badLocationException) {}
        }

        public IStatus redo(IProgressMonitor monitor, IAdaptable uiInfo) {
            if (this.isValid()) {
                this.redoTextChange();
                DefaultUndoManager.this.resetProcessChangeSate();
                DefaultUndoManager.this.selectAndReveal(this.fStart, this.fText == null ? 0 : this.fText.length());
                return Status.OK_STATUS;
            }
            return IOperationHistory.OPERATION_INVALID_STATUS;
        }

        protected void updateCommand() {
            this.fText = DefaultUndoManager.this.fTextBuffer.toString();
            DefaultUndoManager.this.fTextBuffer.setLength(0);
            this.fPreservedText = DefaultUndoManager.this.fPreservedTextBuffer.toString();
            DefaultUndoManager.this.fPreservedTextBuffer.setLength(0);
        }

        protected TextCommand createCurrent() {
            return DefaultUndoManager.this.fFoldingIntoCompoundChange ? new CompoundTextCommand(DefaultUndoManager.this.fUndoContext) : new TextCommand(DefaultUndoManager.this.fUndoContext);
        }

        protected void commit() {
            if (this.fStart < 0) {
                if (DefaultUndoManager.this.fFoldingIntoCompoundChange) {
                    DefaultUndoManager.this.fCurrent = this.createCurrent();
                } else {
                    this.reinitialize();
                }
            } else {
                this.updateCommand();
                DefaultUndoManager.this.fCurrent = this.createCurrent();
            }
            DefaultUndoManager.this.resetProcessChangeSate();
        }

        protected void pretendCommit() {
            if (this.fStart > -1) {
                this.fText = DefaultUndoManager.this.fTextBuffer.toString();
                this.fPreservedText = DefaultUndoManager.this.fPreservedTextBuffer.toString();
            }
        }

        protected boolean attemptCommit() {
            this.pretendCommit();
            if (this.isValid()) {
                DefaultUndoManager.this.commit();
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

    class TextInputListener
    implements ITextInputListener {
        TextInputListener() {
        }

        public void inputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
            if (oldInput != null && DefaultUndoManager.this.fDocumentListener != null) {
                oldInput.removeDocumentListener((IDocumentListener)DefaultUndoManager.this.fDocumentListener);
                DefaultUndoManager.this.commit();
            }
        }

        public void inputDocumentChanged(IDocument oldInput, IDocument newInput) {
            if (newInput != null) {
                if (DefaultUndoManager.this.fDocumentListener == null) {
                    DefaultUndoManager.this.fDocumentListener = new DocumentListener();
                }
                newInput.addDocumentListener((IDocumentListener)DefaultUndoManager.this.fDocumentListener);
            }
        }
    }
}

