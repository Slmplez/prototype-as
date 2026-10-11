/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.IRewriteTarget
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.ITextViewerExtension5
 *  org.eclipse.jface.text.TextSelection
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.TextSelection;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.internal.texteditor.CompoundEditExitStrategy;
import org.eclipse.ui.internal.texteditor.ICompoundEditListener;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.IEditorStatusLine;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class MoveLinesAction
extends TextEditorAction {
    private final boolean fUpwards;
    private final boolean fCopy;
    private ITextViewer fTextViewer;
    private final CompoundEditExitStrategy fStrategy;
    private boolean fAddDelimiter;
    private boolean fEditInProgress = false;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public MoveLinesAction(ResourceBundle bundle, String prefix, ITextEditor editor, ITextViewer textViewer, boolean upwards, boolean copy) {
        super(bundle, prefix, editor);
        String[] stringArray;
        this.fTextViewer = textViewer;
        this.fUpwards = upwards;
        this.fCopy = copy;
        if (copy) {
            String[] stringArray2 = new String[2];
            stringArray2[0] = "org.eclipse.ui.edit.text.copyLineUp";
            stringArray = stringArray2;
            stringArray2[1] = "org.eclipse.ui.edit.text.copyLineDown";
        } else {
            String[] stringArray3 = new String[2];
            stringArray3[0] = "org.eclipse.ui.edit.text.moveLineUp";
            stringArray = stringArray3;
            stringArray3[1] = "org.eclipse.ui.edit.text.moveLineDown";
        }
        String[] commandIds = stringArray;
        this.fStrategy = new CompoundEditExitStrategy(commandIds);
        this.fStrategy.addCompoundListener(new ICompoundEditListener(){

            public void endCompoundEdit() {
                MoveLinesAction.this.endCompoundEdit();
            }
        });
        this.update();
    }

    public MoveLinesAction(ResourceBundle bundle, String prefix, AbstractTextEditor editor, boolean upwards, boolean copy) {
        this(bundle, prefix, editor, (ITextViewer)(editor != null ? editor.getSourceViewer() : null), upwards, copy);
    }

    private void beginCompoundEdit() {
        IRewriteTarget target;
        ITextEditor editor = this.getTextEditor();
        if (this.fEditInProgress || this.fTextViewer == null || editor == null) {
            return;
        }
        this.fEditInProgress = true;
        this.fStrategy.arm(this.fTextViewer);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.text.IRewriteTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((target = (IRewriteTarget)editor.getAdapter(clazz)) != null) {
            target.beginCompoundChange();
        }
    }

    private boolean containedByVisibleRegion(ITextSelection selection, ITextViewer viewer) {
        block7: {
            int visEnd;
            IDocument document;
            int max;
            block8: {
                int visOffset;
                IRegion visible;
                block5: {
                    int min;
                    block6: {
                        min = selection.getOffset();
                        max = min + selection.getLength();
                        document = viewer.getDocument();
                        visible = viewer instanceof ITextViewerExtension5 ? ((ITextViewerExtension5)viewer).getModelCoverage() : viewer.getVisibleRegion();
                        visOffset = visible.getOffset();
                        try {
                            if (visOffset <= min) break block5;
                            if (document.getLineOfOffset(visOffset) == selection.getStartLine()) break block6;
                            return false;
                        }
                        catch (BadLocationException badLocationException) {
                            return false;
                        }
                    }
                    if (this.isWhitespace(document.get(min, visOffset - min))) break block5;
                    this.showStatus();
                    return false;
                }
                visEnd = visOffset + visible.getLength();
                if (visEnd >= max) break block7;
                if (document.getLineOfOffset(visEnd) == selection.getEndLine()) break block8;
                return false;
            }
            if (this.isWhitespace(document.get(visEnd, max - visEnd))) break block7;
            this.showStatus();
            return false;
        }
        return true;
    }

    private void endCompoundEdit() {
        IRewriteTarget target;
        ITextEditor editor = this.getTextEditor();
        if (!this.fEditInProgress || editor == null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.text.IRewriteTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((target = (IRewriteTarget)editor.getAdapter(clazz)) != null) {
            target.endCompoundChange();
        }
        this.fEditInProgress = false;
    }

    private ITextSelection getMovingSelection(IDocument document, ITextSelection selection, ITextViewer viewer) throws BadLocationException {
        int low = document.getLineOffset(selection.getStartLine());
        int endLine = selection.getEndLine();
        int high = document.getLineOffset(endLine) + document.getLineLength(endLine);
        String delim = document.getLineDelimiter(endLine);
        if (delim != null) {
            high -= delim.length();
        }
        this.fAddDelimiter = delim != null && document.getLineLength(endLine) == delim.length();
        return new TextSelection(document, low, high - low);
    }

    private ITextSelection getSkippedLine(IDocument document, ITextSelection selection) {
        int skippedLineN;
        int n = skippedLineN = this.fUpwards ? selection.getStartLine() - 1 : selection.getEndLine() + 1;
        if (skippedLineN > document.getNumberOfLines() || !this.fCopy && (skippedLineN < 0 || skippedLineN == document.getNumberOfLines())) {
            return null;
        }
        try {
            if (this.fCopy && skippedLineN == -1) {
                skippedLineN = 0;
            }
            IRegion line = document.getLineInformation(skippedLineN);
            return new TextSelection(document, line.getOffset(), line.getLength());
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    private boolean isWhitespace(String string) {
        return string == null ? true : string.trim().length() == 0;
    }

    public void runWithEvent(Event event) {
        if (this.fTextViewer == null) {
            return;
        }
        if (!this.validateEditorInputState()) {
            return;
        }
        IDocument document = this.fTextViewer.getDocument();
        if (document == null) {
            return;
        }
        StyledText widget = this.fTextViewer.getTextWidget();
        if (widget == null) {
            return;
        }
        ITextSelection sel = (ITextSelection)this.fTextViewer.getSelectionProvider().getSelection();
        if (sel.isEmpty()) {
            return;
        }
        ITextSelection skippedLine = this.getSkippedLine(document, sel);
        if (skippedLine == null) {
            return;
        }
        try {
            int deviation;
            int offset;
            String insertion;
            String delim;
            ITextSelection movingArea = this.getMovingSelection(document, sel, this.fTextViewer);
            if (!this.containedByVisibleRegion(movingArea, this.fTextViewer) || !this.containedByVisibleRegion(skippedLine, this.fTextViewer)) {
                return;
            }
            String moving = movingArea.getText();
            String skipped = skippedLine.getText();
            if (moving == null || skipped == null || document.getLength() == 0) {
                return;
            }
            if (this.fUpwards) {
                delim = document.getLineDelimiter(skippedLine.getEndLine());
                if (this.fCopy) {
                    delim = TextUtilities.getDefaultLineDelimiter((IDocument)document);
                    insertion = String.valueOf(moving) + delim;
                    offset = movingArea.getOffset();
                    deviation = 0;
                } else {
                    Assert.isNotNull((Object)delim);
                    insertion = String.valueOf(moving) + delim + skipped;
                    offset = skippedLine.getOffset();
                    deviation = -skippedLine.getLength() - delim.length();
                }
            } else {
                delim = document.getLineDelimiter(movingArea.getEndLine());
                if (this.fCopy) {
                    if (delim == null) {
                        delim = TextUtilities.getDefaultLineDelimiter((IDocument)document);
                        insertion = String.valueOf(delim) + moving;
                    } else {
                        insertion = String.valueOf(moving) + delim;
                    }
                    offset = skippedLine.getOffset();
                    deviation = movingArea.getLength() + delim.length();
                } else {
                    Assert.isNotNull((Object)delim);
                    insertion = String.valueOf(skipped) + delim + moving;
                    offset = movingArea.getOffset();
                    deviation = skipped.length() + delim.length();
                }
            }
            this.beginCompoundEdit();
            if (this.fCopy) {
                document.replace(offset, 0, insertion);
            } else {
                document.replace(offset, insertion.length(), insertion);
            }
            int selOffset = movingArea.getOffset() + deviation;
            int selLength = movingArea.getLength() + (this.fAddDelimiter ? delim.length() : 0);
            if (!(this.fTextViewer instanceof ITextViewerExtension5)) {
                selLength = Math.min(selLength, this.fTextViewer.getVisibleRegion().getOffset() + this.fTextViewer.getVisibleRegion().getLength() - selOffset);
            }
            this.selectAndReveal(this.fTextViewer, selOffset, selLength);
        }
        catch (BadLocationException badLocationException) {
            return;
        }
    }

    private void selectAndReveal(ITextViewer viewer, int offset, int length) {
        viewer.setSelectedRange(offset + length, -length);
        StyledText st = viewer.getTextWidget();
        if (st != null) {
            st.showSelection();
        }
    }

    private void showStatus() {
        IEditorStatusLine status;
        ITextEditor editor = this.getTextEditor();
        if (editor == null) {
            return;
        }
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.texteditor.IEditorStatusLine");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((status = (IEditorStatusLine)editor.getAdapter(clazz)) == null) {
            return;
        }
        status.setMessage(false, EditorMessages.Editor_MoveLines_IllegalMove_status, null);
    }

    public void setEditor(ITextEditor editor) {
        ITextEditor currentEditor = this.getTextEditor();
        if (currentEditor != editor && currentEditor != null && editor != null) {
            this.fTextViewer = editor instanceof AbstractTextEditor ? ((AbstractTextEditor)editor).getSourceViewer() : null;
        }
        super.setEditor(editor);
    }

    public void update() {
        super.update();
        if (this.isEnabled()) {
            this.setEnabled(this.canModifyEditor() && this.fTextViewer != null);
        }
    }
}

