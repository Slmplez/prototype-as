/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITextListener
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.ITextViewerExtension5
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextEvent
 *  org.eclipse.jface.text.TextSelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.SWTError
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 */
package org.eclipse.ui.texteditor;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.TextSelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.IDeleteLineTarget;

public class TextViewerDeleteLineTarget
implements IDeleteLineTarget {
    private final DeleteLineClipboard fClipboard;

    public TextViewerDeleteLineTarget(ITextViewer viewer) {
        this.fClipboard = new DeleteLineClipboard(viewer);
    }

    private IRegion getDeleteRegion(IDocument document, ITextSelection selection, int type) throws BadLocationException {
        int offset = selection.getOffset();
        int line = selection.getStartLine();
        int resultOffset = 0;
        int resultLength = 0;
        switch (type) {
            case 0: {
                resultOffset = document.getLineOffset(line);
                int endLine = selection.getEndLine();
                resultLength = document.getLineOffset(endLine) + document.getLineLength(endLine) - resultOffset;
                break;
            }
            case 1: {
                resultOffset = document.getLineOffset(line);
                resultLength = offset - resultOffset;
                break;
            }
            case 2: {
                resultOffset = offset;
                IRegion lineRegion = document.getLineInformation(line);
                int end = lineRegion.getOffset() + lineRegion.getLength();
                if (offset == end) {
                    String lineDelimiter = document.getLineDelimiter(line);
                    resultLength = lineDelimiter == null ? 0 : lineDelimiter.length();
                    break;
                }
                resultLength = end - resultOffset;
                break;
            }
            default: {
                throw new IllegalArgumentException();
            }
        }
        return this.clipToVisibleRegion(resultOffset, resultOffset + resultLength);
    }

    private IRegion clipToVisibleRegion(int startOffset, int endOffset) {
        ITextViewer viewer = this.fClipboard.getViewer();
        IRegion visibleRegion = viewer instanceof ITextViewerExtension5 ? ((ITextViewerExtension5)viewer).getModelCoverage() : viewer.getVisibleRegion();
        int visibleStart = visibleRegion.getOffset();
        int visibleLength = visibleRegion.getLength();
        startOffset = Math.max(startOffset, visibleStart);
        endOffset = Math.min(endOffset, visibleStart + visibleLength);
        return new Region(startOffset, endOffset - startOffset);
    }

    public void deleteLine(IDocument document, int offset, int length, int type, boolean copyToClipboard) throws BadLocationException {
        this.deleteLine(document, (ITextSelection)new TextSelection(offset, length), type, copyToClipboard);
    }

    public void deleteLine(IDocument document, ITextSelection selection, int type, boolean copyToClipboard) throws BadLocationException {
        IRegion deleteRegion = this.getDeleteRegion(document, selection, type);
        int deleteOffset = deleteRegion.getOffset();
        int deleteLength = deleteRegion.getLength();
        if (deleteLength == 0) {
            return;
        }
        if (copyToClipboard) {
            this.fClipboard.checkState();
            try {
                this.fClipboard.append(document.get(deleteOffset, deleteLength));
            }
            catch (SWTError e) {
                if (e.code != 2002) {
                    throw e;
                }
                Status status = new Status(4, "org.eclipse.ui.workbench.texteditor", e.code, EditorMessages.Editor_error_clipboard_copy_failed_message, (Throwable)e);
                TextEditorPlugin.getDefault().getLog().log((IStatus)status);
                this.fClipboard.uninstall();
                return;
            }
            this.fClipboard.setDeleting(true);
            document.replace(deleteOffset, deleteLength, "");
            this.fClipboard.setDeleting(false);
            this.fClipboard.saveState();
        } else {
            document.replace(deleteOffset, deleteLength, "");
        }
    }

    private static class DeleteLineClipboard
    implements MouseListener,
    ModifyListener,
    ISelectionChangedListener,
    ITextListener,
    FocusListener {
        private final ITextViewer fViewer;
        private int fIndex = -1;
        private Clipboard fClipboard;
        private final StringBuffer fBuffer = new StringBuffer();
        private boolean fDeleting;

        public DeleteLineClipboard(ITextViewer viewer) {
            Assert.isNotNull((Object)viewer);
            this.fViewer = viewer;
        }

        public ITextViewer getViewer() {
            return this.fViewer;
        }

        private void saveState() {
            this.fIndex = this.fViewer.getTextWidget().getCaretOffset();
        }

        private boolean hasSameState() {
            return this.fIndex == this.fViewer.getTextWidget().getCaretOffset();
        }

        public void checkState() {
            if (this.fClipboard == null) {
                StyledText text = this.fViewer.getTextWidget();
                if (text == null) {
                    return;
                }
                this.fViewer.getSelectionProvider().addSelectionChangedListener((ISelectionChangedListener)this);
                text.addFocusListener((FocusListener)this);
                text.addMouseListener((MouseListener)this);
                text.addModifyListener((ModifyListener)this);
                this.fClipboard = new Clipboard(text.getDisplay());
                this.fBuffer.setLength(0);
            } else if (!this.hasSameState()) {
                this.fBuffer.setLength(0);
            }
        }

        public void append(String deltaString) {
            this.fBuffer.append(deltaString);
            String string = this.fBuffer.toString();
            Transfer[] dataTypes = new Transfer[]{TextTransfer.getInstance()};
            Object[] data = new Object[]{string};
            this.fClipboard.setContents(data, dataTypes);
        }

        private void uninstall() {
            if (this.fClipboard == null) {
                return;
            }
            StyledText text = this.fViewer.getTextWidget();
            if (text == null) {
                return;
            }
            this.fViewer.getSelectionProvider().removeSelectionChangedListener((ISelectionChangedListener)this);
            text.removeFocusListener((FocusListener)this);
            text.removeMouseListener((MouseListener)this);
            text.removeModifyListener((ModifyListener)this);
            this.fClipboard.dispose();
            this.fClipboard = null;
        }

        public void setDeleting(boolean deleting) {
            this.fDeleting = deleting;
        }

        public void mouseDoubleClick(MouseEvent e) {
            this.uninstall();
        }

        public void mouseDown(MouseEvent e) {
            this.uninstall();
        }

        public void mouseUp(MouseEvent e) {
            this.uninstall();
        }

        public void selectionChanged(SelectionChangedEvent event) {
            this.uninstall();
        }

        public void focusGained(FocusEvent e) {
            this.uninstall();
        }

        public void focusLost(FocusEvent e) {
            this.uninstall();
        }

        public void textChanged(TextEvent event) {
            this.uninstall();
        }

        public void modifyText(ModifyEvent e) {
            if (!this.fDeleting) {
                this.uninstall();
            }
        }
    }
}

