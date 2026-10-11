/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.text.undo.DocumentUndoEvent
 *  org.eclipse.text.undo.DocumentUndoManagerRegistry
 *  org.eclipse.text.undo.IDocumentUndoListener
 *  org.eclipse.text.undo.IDocumentUndoManager
 */
package org.eclipse.jface.text;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.IUndoManager;
import org.eclipse.jface.text.IUndoManagerExtension;
import org.eclipse.jface.text.JFaceTextMessages;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextViewer;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.text.undo.DocumentUndoEvent;
import org.eclipse.text.undo.DocumentUndoManagerRegistry;
import org.eclipse.text.undo.IDocumentUndoListener;
import org.eclipse.text.undo.IDocumentUndoManager;

public class TextViewerUndoManager
implements IUndoManager,
IUndoManagerExtension {
    private KeyAndMouseListener fKeyAndMouseListener;
    private TextInputListener fTextInputListener;
    private ITextViewer fTextViewer;
    private int fUndoLevel;
    private IDocumentUndoManager fDocumentUndoManager;
    private IDocument fDocument;
    private IDocumentUndoListener fDocumentUndoListener;

    public TextViewerUndoManager(int undoLevel) {
        this.fUndoLevel = undoLevel;
    }

    private boolean isConnected() {
        return this.fTextViewer != null && this.fDocumentUndoManager != null;
    }

    public void beginCompoundChange() {
        if (this.isConnected()) {
            this.fDocumentUndoManager.beginCompoundChange();
        }
    }

    public void endCompoundChange() {
        if (this.isConnected()) {
            this.fDocumentUndoManager.endCompoundChange();
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
        }
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
            this.fDocumentUndoManager.setMaximalUndoLevel(this.fUndoLevel);
        }
    }

    public void connect(ITextViewer textViewer) {
        if (this.fTextViewer == null && textViewer != null) {
            this.fTextViewer = textViewer;
            this.addListeners();
        }
        IDocument doc = this.fTextViewer.getDocument();
        this.connectDocumentUndoManager(doc);
    }

    public void disconnect() {
        if (this.fTextViewer != null) {
            this.removeListeners();
            this.fTextViewer = null;
        }
        this.disconnectDocumentUndoManager();
    }

    public void reset() {
        if (this.isConnected()) {
            this.fDocumentUndoManager.reset();
        }
    }

    public boolean redoable() {
        if (this.isConnected()) {
            return this.fDocumentUndoManager.redoable();
        }
        return false;
    }

    public boolean undoable() {
        if (this.isConnected()) {
            return this.fDocumentUndoManager.undoable();
        }
        return false;
    }

    public void redo() {
        if (this.isConnected()) {
            try {
                this.fDocumentUndoManager.redo();
            }
            catch (ExecutionException ex) {
                this.openErrorDialog(JFaceTextMessages.getString("DefaultUndoManager.error.redoFailed.title"), (Exception)((Object)ex));
            }
        }
    }

    public void undo() {
        if (this.isConnected()) {
            try {
                this.fDocumentUndoManager.undo();
            }
            catch (ExecutionException ex) {
                this.openErrorDialog(JFaceTextMessages.getString("DefaultUndoManager.error.undoFailed.title"), (Exception)((Object)ex));
            }
        }
    }

    private void selectAndReveal(int offset, int length) {
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
        if (this.isConnected()) {
            return this.fDocumentUndoManager.getUndoContext();
        }
        return null;
    }

    private void connectDocumentUndoManager(IDocument document) {
        this.disconnectDocumentUndoManager();
        if (document != null) {
            this.fDocument = document;
            DocumentUndoManagerRegistry.connect((IDocument)this.fDocument);
            this.fDocumentUndoManager = DocumentUndoManagerRegistry.getDocumentUndoManager((IDocument)this.fDocument);
            this.fDocumentUndoManager.connect((Object)this);
            this.setMaximalUndoLevel(this.fUndoLevel);
            this.fDocumentUndoListener = new DocumentUndoListener();
            this.fDocumentUndoManager.addDocumentUndoListener(this.fDocumentUndoListener);
        }
    }

    private void disconnectDocumentUndoManager() {
        if (this.fDocumentUndoManager != null) {
            this.fDocumentUndoManager.disconnect((Object)this);
            DocumentUndoManagerRegistry.disconnect((IDocument)this.fDocument);
            this.fDocumentUndoManager.removeDocumentUndoListener(this.fDocumentUndoListener);
            this.fDocumentUndoListener = null;
            this.fDocumentUndoManager = null;
        }
    }

    private class DocumentUndoListener
    implements IDocumentUndoListener {
        private DocumentUndoListener() {
        }

        public void documentUndoNotification(DocumentUndoEvent event) {
            if (!TextViewerUndoManager.this.isConnected()) {
                return;
            }
            int eventType = event.getEventType();
            if ((eventType & 1) != 0 || (eventType & 2) != 0) {
                if (event.isCompound()) {
                    ITextViewerExtension extension = null;
                    if (TextViewerUndoManager.this.fTextViewer instanceof ITextViewerExtension) {
                        extension = (ITextViewerExtension)((Object)TextViewerUndoManager.this.fTextViewer);
                    }
                    if (extension != null) {
                        extension.setRedraw(false);
                    }
                }
                TextViewerUndoManager.this.fTextViewer.getTextWidget().getDisplay().syncExec(new Runnable(this){
                    final /* synthetic */ DocumentUndoListener this$1;
                    {
                        this.this$1 = documentUndoListener;
                    }

                    public void run() {
                        if (TextViewerUndoManager.access$4(DocumentUndoListener.access$1(this.this$1)) instanceof TextViewer) {
                            ((TextViewer)TextViewerUndoManager.access$4(DocumentUndoListener.access$1(this.this$1))).ignoreAutoEditStrategies(true);
                        }
                    }
                });
            } else if ((eventType & 4) != 0 || (eventType & 8) != 0) {
                StyledText widget;
                TextViewerUndoManager.this.fTextViewer.getTextWidget().getDisplay().syncExec(new Runnable(this){
                    final /* synthetic */ DocumentUndoListener this$1;
                    {
                        this.this$1 = documentUndoListener;
                    }

                    public void run() {
                        if (TextViewerUndoManager.access$4(DocumentUndoListener.access$1(this.this$1)) instanceof TextViewer) {
                            ((TextViewer)TextViewerUndoManager.access$4(DocumentUndoListener.access$1(this.this$1))).ignoreAutoEditStrategies(false);
                        }
                    }
                });
                if (event.isCompound()) {
                    ITextViewerExtension extension = null;
                    if (TextViewerUndoManager.this.fTextViewer instanceof ITextViewerExtension) {
                        extension = (ITextViewerExtension)((Object)TextViewerUndoManager.this.fTextViewer);
                    }
                    if (extension != null) {
                        extension.setRedraw(true);
                    }
                }
                if (TextViewerUndoManager.this.fTextViewer != null && (widget = TextViewerUndoManager.this.fTextViewer.getTextWidget()) != null && !widget.isDisposed() && widget.isFocusControl()) {
                    TextViewerUndoManager.this.selectAndReveal(event.getOffset(), event.getText() == null ? 0 : event.getText().length());
                }
            }
        }

        static /* synthetic */ TextViewerUndoManager access$1(DocumentUndoListener documentUndoListener) {
            return documentUndoListener.TextViewerUndoManager.this;
        }
    }

    private class KeyAndMouseListener
    implements MouseListener,
    KeyListener {
        private KeyAndMouseListener() {
        }

        public void mouseDoubleClick(MouseEvent e) {
        }

        public void mouseDown(MouseEvent e) {
            if (e.button == 1 && TextViewerUndoManager.this.isConnected()) {
                TextViewerUndoManager.this.fDocumentUndoManager.commit();
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
                    if (!TextViewerUndoManager.this.isConnected()) break;
                    TextViewerUndoManager.this.fDocumentUndoManager.commit();
                }
            }
        }
    }

    private class TextInputListener
    implements ITextInputListener {
        private TextInputListener() {
        }

        public void inputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
            TextViewerUndoManager.this.disconnectDocumentUndoManager();
        }

        public void inputDocumentChanged(IDocument oldInput, IDocument newInput) {
            TextViewerUndoManager.this.connectDocumentUndoManager(newInput);
        }
    }
}

