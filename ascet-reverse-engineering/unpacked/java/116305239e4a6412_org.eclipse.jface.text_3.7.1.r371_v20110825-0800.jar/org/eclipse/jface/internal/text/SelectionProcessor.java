/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.text.edits.DeleteEdit
 *  org.eclipse.text.edits.InsertEdit
 *  org.eclipse.text.edits.MalformedTreeException
 *  org.eclipse.text.edits.MultiTextEdit
 *  org.eclipse.text.edits.ReplaceEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jface.internal.text;

import java.util.Arrays;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BlockTextSelection;
import org.eclipse.jface.text.IBlockTextSelection;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextSelection;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

public final class SelectionProcessor {
    private final Implementation NULL_IMPLEMENTATION = new Implementation();
    private final Implementation RANGE_IMPLEMENTATION = new Implementation(){

        TextEdit replace(ISelection selection, String replacement) {
            ITextSelection ts = (ITextSelection)selection;
            return new ReplaceEdit(ts.getOffset(), ts.getLength(), replacement);
        }

        String getText(ISelection selection) {
            ITextSelection ts = (ITextSelection)selection;
            return ts.getText();
        }

        boolean isEmpty(ISelection selection) {
            ITextSelection ts = (ITextSelection)selection;
            return ts.getLength() <= 0;
        }

        boolean isMultiline(ISelection selection) throws BadLocationException {
            ITextSelection ts = (ITextSelection)selection;
            return SelectionProcessor.this.fDocument.getLineOfOffset(ts.getOffset()) < SelectionProcessor.this.fDocument.getLineOfOffset(ts.getOffset() + ts.getLength());
        }

        TextEdit delete(ISelection selection) {
            ITextSelection ts = (ITextSelection)selection;
            if (this.isEmpty(selection)) {
                return new DeleteEdit(ts.getOffset(), 1);
            }
            return new DeleteEdit(ts.getOffset(), ts.getLength());
        }

        TextEdit backspace(ISelection selection) throws BadLocationException {
            ITextSelection ts = (ITextSelection)selection;
            if (this.isEmpty(selection)) {
                return new DeleteEdit(ts.getOffset() - 1, 1);
            }
            return new DeleteEdit(ts.getOffset(), ts.getLength());
        }

        ISelection makeEmpty(ISelection selection, boolean beginning) {
            ITextSelection ts = (ITextSelection)selection;
            return beginning ? new TextSelection(SelectionProcessor.this.fDocument, ts.getOffset(), 0) : new TextSelection(SelectionProcessor.this.fDocument, ts.getOffset() + ts.getLength(), 0);
        }

        IRegion[] getRanges(ISelection selection) {
            ITextSelection ts = (ITextSelection)selection;
            return new IRegion[]{new Region(ts.getOffset(), ts.getLength())};
        }

        int getCoveredLines(ISelection selection) throws BadLocationException {
            ITextSelection ts = (ITextSelection)selection;
            return ts.getEndLine() - ts.getStartLine() + 1;
        }

        ISelection makeReplaceSelection(ISelection selection, String replacement) {
            ITextSelection ts = (ITextSelection)selection;
            return new TextSelection(SelectionProcessor.this.fDocument, ts.getOffset() + replacement.length(), 0);
        }
    };
    private final Implementation COLUMN_IMPLEMENTATION = new Implementation(){

        TextEdit replace(ISelection selection, String replacement) throws BadLocationException {
            try {
                IBlockTextSelection cts = (IBlockTextSelection)selection;
                int startLine = cts.getStartLine();
                int endLine = cts.getEndLine();
                int startColumn = cts.getStartColumn();
                int endColumn = cts.getEndColumn();
                int visualStartColumn = this.computeVisualColumn(startLine, startColumn);
                int visualEndColumn = this.computeVisualColumn(endLine, endColumn);
                MultiTextEdit root = new MultiTextEdit();
                String[] delimiters = SelectionProcessor.this.fDocument.getLegalLineDelimiters();
                int lastDelim = 0;
                int line = startLine;
                while (line <= endLine) {
                    String string;
                    if (lastDelim == -1) {
                        string = "";
                    } else {
                        int[] index = TextUtilities.indexOf((String[])delimiters, (String)replacement, (int)lastDelim);
                        if (index[0] == -1) {
                            string = replacement.substring(lastDelim);
                            lastDelim = -1;
                        } else {
                            string = replacement.substring(lastDelim, index[0]);
                            lastDelim = index[0] + delimiters[index[1]].length();
                        }
                    }
                    TextEdit replace = this.createReplaceEdit(line, visualStartColumn, visualEndColumn, string);
                    root.addChild(replace);
                    ++line;
                }
                while (lastDelim != -1) {
                    TextEdit edit;
                    String string;
                    int[] index = TextUtilities.indexOf((String[])delimiters, (String)replacement, (int)lastDelim);
                    if (index[0] == -1) {
                        string = replacement.substring(lastDelim);
                        lastDelim = -1;
                    } else {
                        string = replacement.substring(lastDelim, index[0]);
                        lastDelim = index[0] + delimiters[index[1]].length();
                    }
                    if (++endLine < SelectionProcessor.this.fDocument.getNumberOfLines()) {
                        edit = this.createReplaceEdit(endLine, visualStartColumn, visualEndColumn, string);
                    } else {
                        int insertLocation = root.getExclusiveEnd();
                        int spaces = visualStartColumn;
                        char[] array = new char[spaces];
                        Arrays.fill(array, ' ');
                        string = String.valueOf(SelectionProcessor.this.fDocument.getLegalLineDelimiters()[0]) + String.valueOf(array) + string;
                        edit = new InsertEdit(insertLocation, string);
                        insertLocation += string.length();
                    }
                    root.addChild(edit);
                }
                return root;
            }
            catch (MalformedTreeException malformedTreeException) {
                Assert.isTrue((boolean)false);
                return null;
            }
        }

        String getText(ISelection selection) throws BadLocationException {
            IBlockTextSelection cts = (IBlockTextSelection)selection;
            StringBuffer buf = new StringBuffer(cts.getLength());
            int startLine = cts.getStartLine();
            int endLine = cts.getEndLine();
            int startColumn = cts.getStartColumn();
            int endColumn = cts.getEndColumn();
            int visualStartColumn = this.computeVisualColumn(startLine, startColumn);
            int visualEndColumn = this.computeVisualColumn(endLine, endColumn);
            int line = startLine;
            while (line <= endLine) {
                this.appendColumnRange(buf, line, visualStartColumn, visualEndColumn);
                if (line != endLine) {
                    buf.append(SelectionProcessor.this.fDocument.getLineDelimiter(line));
                }
                ++line;
            }
            return buf.toString();
        }

        boolean isEmpty(ISelection selection) throws BadLocationException {
            IBlockTextSelection cts = (IBlockTextSelection)selection;
            int startLine = cts.getStartLine();
            int endLine = cts.getEndLine();
            int startColumn = cts.getStartColumn();
            int endColumn = cts.getEndColumn();
            int visualStartColumn = this.computeVisualColumn(startLine, startColumn);
            int visualEndColumn = this.computeVisualColumn(endLine, endColumn);
            return visualEndColumn == visualStartColumn;
        }

        boolean isMultiline(ISelection selection) {
            ITextSelection ts = (ITextSelection)selection;
            return ts.getEndLine() > ts.getStartLine();
        }

        TextEdit delete(ISelection selection) throws BadLocationException {
            if (this.isEmpty(selection)) {
                IBlockTextSelection cts = (IBlockTextSelection)selection;
                selection = new BlockTextSelection(SelectionProcessor.this.fDocument, cts.getStartLine(), cts.getStartColumn(), cts.getEndLine(), cts.getEndColumn() + 1, SelectionProcessor.this.fTabWidth);
            }
            return this.replace(selection, "");
        }

        TextEdit backspace(ISelection selection) throws BadLocationException {
            IBlockTextSelection cts = (IBlockTextSelection)selection;
            if (this.isEmpty(selection) && cts.getStartColumn() > 0) {
                selection = new BlockTextSelection(SelectionProcessor.this.fDocument, cts.getStartLine(), cts.getStartColumn() - 1, cts.getEndLine(), cts.getEndColumn(), SelectionProcessor.this.fTabWidth);
            }
            return this.replace(selection, "");
        }

        ISelection makeEmpty(ISelection selection, boolean beginning) throws BadLocationException {
            int endColumn;
            int endLine;
            int startColumn;
            int startLine;
            IBlockTextSelection cts = (IBlockTextSelection)selection;
            if (beginning) {
                startLine = cts.getStartLine();
                startColumn = cts.getStartColumn();
                endLine = cts.getEndLine();
                endColumn = this.computeCharacterColumn(endLine, this.computeVisualColumn(startLine, startColumn));
            } else {
                endLine = cts.getEndLine();
                endColumn = cts.getEndColumn();
                startLine = cts.getStartLine();
                startColumn = this.computeCharacterColumn(startLine, this.computeVisualColumn(endLine, endColumn));
            }
            return new BlockTextSelection(SelectionProcessor.this.fDocument, startLine, startColumn, endLine, endColumn, SelectionProcessor.this.fTabWidth);
        }

        ISelection makeReplaceSelection(ISelection selection, String replacement) throws BadLocationException {
            IBlockTextSelection bts = (IBlockTextSelection)selection;
            String[] delimiters = SelectionProcessor.this.fDocument.getLegalLineDelimiters();
            int[] index = TextUtilities.indexOf((String[])delimiters, (String)replacement, (int)0);
            int length = index[0] == -1 ? replacement.length() : index[0];
            int startLine = bts.getStartLine();
            int column = bts.getStartColumn() + length;
            int endLine = bts.getEndLine();
            int endColumn = this.computeCharacterColumn(endLine, this.computeVisualColumn(startLine, column));
            return new BlockTextSelection(SelectionProcessor.this.fDocument, startLine, column, endLine, endColumn, SelectionProcessor.this.fTabWidth);
        }

        IRegion[] getRanges(ISelection selection) throws BadLocationException {
            IBlockTextSelection cts = (IBlockTextSelection)selection;
            int startLine = cts.getStartLine();
            int endLine = cts.getEndLine();
            int visualStartColumn = this.computeVisualColumn(startLine, cts.getStartColumn());
            int visualEndColumn = this.computeVisualColumn(endLine, cts.getEndColumn());
            IRegion[] ranges = new IRegion[endLine - startLine + 1];
            int line = startLine;
            while (line <= endLine) {
                int startColumn = this.computeCharacterColumn(line, visualStartColumn);
                int endColumn = this.computeCharacterColumn(line, visualEndColumn);
                IRegion lineInfo = SelectionProcessor.this.fDocument.getLineInformation(line);
                int lineEnd = lineInfo.getLength();
                startColumn = Math.min(startColumn, lineEnd);
                endColumn = Math.min(endColumn, lineEnd);
                ranges[line - startLine] = new Region(lineInfo.getOffset() + startColumn, endColumn - startColumn);
                ++line;
            }
            return ranges;
        }

        int getCoveredLines(ISelection selection) throws BadLocationException {
            ITextSelection ts = (ITextSelection)selection;
            return ts.getEndLine() - ts.getStartLine() + 1;
        }

        private TextEdit createReplaceEdit(int line, int visualStartColumn, int visualEndColumn, String replacement) throws BadLocationException {
            IRegion info = SelectionProcessor.this.fDocument.getLineInformation(line);
            int lineLength = info.getLength();
            String content = SelectionProcessor.this.fDocument.get(info.getOffset(), lineLength);
            int startColumn = -1;
            int endColumn = -1;
            int visual = 0;
            int offset = 0;
            while (offset < lineLength) {
                if (startColumn == -1 && visual >= visualStartColumn) {
                    startColumn = offset;
                }
                if (visual >= visualEndColumn) {
                    endColumn = offset;
                    break;
                }
                visual += this.visualSizeIncrement(content.charAt(offset), visual);
                ++offset;
            }
            if (startColumn == -1) {
                boolean materializeVirtualSpace;
                boolean bl = materializeVirtualSpace = replacement.length() != 0;
                if (materializeVirtualSpace) {
                    int spaces = Math.max(0, visualStartColumn - visual);
                    char[] array = new char[spaces];
                    Arrays.fill(array, ' ');
                    return new InsertEdit(info.getOffset() + lineLength, String.valueOf(String.valueOf(array)) + replacement);
                }
                return new MultiTextEdit();
            }
            if (endColumn == -1) {
                endColumn = lineLength;
            }
            if (replacement.length() == 0) {
                return new DeleteEdit(info.getOffset() + startColumn, endColumn - startColumn);
            }
            return new ReplaceEdit(info.getOffset() + startColumn, endColumn - startColumn, replacement);
        }

        private void appendColumnRange(StringBuffer buf, int line, int visualStartColumn, int visualEndColumn) throws BadLocationException {
            IRegion info = SelectionProcessor.this.fDocument.getLineInformation(line);
            int lineLength = info.getLength();
            String content = SelectionProcessor.this.fDocument.get(info.getOffset(), lineLength);
            int startColumn = -1;
            int endColumn = -1;
            int visual = 0;
            int offset = 0;
            while (offset < lineLength) {
                if (startColumn == -1 && visual >= visualStartColumn) {
                    startColumn = offset;
                }
                if (visual >= visualEndColumn) {
                    endColumn = offset;
                    break;
                }
                visual += this.visualSizeIncrement(content.charAt(offset), visual);
                ++offset;
            }
            if (startColumn != -1) {
                buf.append(content.substring(startColumn, endColumn == -1 ? lineLength : endColumn));
            }
            if (endColumn == -1) {
                int spaces = Math.max(0, visualEndColumn - Math.max(visual, visualStartColumn));
                int i = 0;
                while (i < spaces) {
                    buf.append(' ');
                    ++i;
                }
            }
        }

        private int computeVisualColumn(int line, int column) throws BadLocationException {
            IRegion info = SelectionProcessor.this.fDocument.getLineInformation(line);
            int lineLength = info.getLength();
            int to = Math.min(lineLength, column);
            String content = SelectionProcessor.this.fDocument.get(info.getOffset(), lineLength);
            int visual = 0;
            int offset = 0;
            while (offset < to) {
                visual += this.visualSizeIncrement(content.charAt(offset), visual);
                ++offset;
            }
            if (column > lineLength) {
                visual += column - lineLength;
            }
            return visual;
        }

        private int computeCharacterColumn(int line, int visualColumn) throws BadLocationException {
            IRegion info = SelectionProcessor.this.fDocument.getLineInformation(line);
            int lineLength = info.getLength();
            String content = SelectionProcessor.this.fDocument.get(info.getOffset(), lineLength);
            int visual = 0;
            int offset = 0;
            while (offset < lineLength) {
                if (visual >= visualColumn) {
                    return offset;
                }
                visual += this.visualSizeIncrement(content.charAt(offset), visual);
                ++offset;
            }
            return lineLength + Math.max(0, visualColumn - visual);
        }

        private int visualSizeIncrement(char character, int visual) {
            if (character != '\t') {
                return 1;
            }
            if (SelectionProcessor.this.fTabWidth <= 0) {
                return 0;
            }
            return SelectionProcessor.this.fTabWidth - visual % SelectionProcessor.this.fTabWidth;
        }
    };
    private final IDocument fDocument;
    private final int fTabWidth;
    private IRewriteTarget fRewriteTarget;
    private ISelectionProvider fSelectionProvider;

    public SelectionProcessor(ITextViewer viewer) {
        this(viewer.getDocument(), viewer.getTextWidget().getTabs());
        if (viewer instanceof ITextViewerExtension) {
            ITextViewerExtension ext = (ITextViewerExtension)((Object)viewer);
            this.fRewriteTarget = ext.getRewriteTarget();
        }
        this.fSelectionProvider = viewer.getSelectionProvider();
    }

    public SelectionProcessor(IDocument document, int tabWidth) {
        Assert.isNotNull((Object)document);
        Assert.isTrue((tabWidth >= 0 ? 1 : 0) != 0);
        this.fDocument = document;
        this.fTabWidth = tabWidth;
    }

    public TextEdit delete(ISelection selection) throws BadLocationException {
        return this.getImplementation(selection).delete(selection);
    }

    public TextEdit backspace(ISelection selection) throws BadLocationException {
        return this.getImplementation(selection).backspace(selection);
    }

    public TextEdit replace(ISelection selection, String replacement) throws BadLocationException {
        return this.getImplementation(selection).replace(selection, replacement);
    }

    public String getText(ISelection selection) throws BadLocationException {
        return this.getImplementation(selection).getText(selection);
    }

    public boolean isEmpty(ISelection selection) throws BadLocationException {
        return this.getImplementation(selection).isEmpty(selection);
    }

    public boolean isMultiline(ISelection selection) throws BadLocationException {
        return this.getImplementation(selection).isMultiline(selection);
    }

    public ISelection makeEmpty(ISelection selection, boolean beginning) throws BadLocationException {
        return this.getImplementation(selection).makeEmpty(selection, beginning);
    }

    private ISelection makeReplaceSelection(ISelection selection, String replacement) throws BadLocationException {
        return this.getImplementation(selection).makeReplaceSelection(selection, replacement);
    }

    public void doDelete(ISelection selection) throws BadLocationException {
        TextEdit edit = this.delete(selection);
        boolean complex = edit.hasChildren();
        if (complex && this.fRewriteTarget != null) {
            this.fRewriteTarget.beginCompoundChange();
        }
        try {
            edit.apply(this.fDocument, 2);
            if (this.fSelectionProvider != null) {
                ISelection empty = this.makeEmpty(selection, true);
                this.fSelectionProvider.setSelection(empty);
            }
        }
        finally {
            if (complex && this.fRewriteTarget != null) {
                this.fRewriteTarget.endCompoundChange();
            }
        }
    }

    public void doReplace(ISelection selection, String replacement) throws BadLocationException {
        TextEdit edit = this.replace(selection, replacement);
        boolean complex = edit.hasChildren();
        if (complex && this.fRewriteTarget != null) {
            this.fRewriteTarget.beginCompoundChange();
        }
        try {
            edit.apply(this.fDocument, 2);
            if (this.fSelectionProvider != null) {
                ISelection empty = this.makeReplaceSelection(selection, replacement);
                this.fSelectionProvider.setSelection(empty);
            }
        }
        finally {
            if (complex && this.fRewriteTarget != null) {
                this.fRewriteTarget.endCompoundChange();
            }
        }
    }

    public IRegion[] getRanges(ISelection selection) throws BadLocationException {
        return this.getImplementation(selection).getRanges(selection);
    }

    public int getCoveredLines(ISelection selection) throws BadLocationException {
        return this.getImplementation(selection).getCoveredLines(selection);
    }

    private Implementation getImplementation(ISelection selection) {
        if (selection instanceof IBlockTextSelection) {
            return this.COLUMN_IMPLEMENTATION;
        }
        if (selection instanceof ITextSelection) {
            return this.RANGE_IMPLEMENTATION;
        }
        return this.NULL_IMPLEMENTATION;
    }

    private static class Implementation {
        private Implementation() {
        }

        TextEdit replace(ISelection selection, String replacement) throws BadLocationException {
            return new MultiTextEdit();
        }

        String getText(ISelection selection) throws BadLocationException {
            return "";
        }

        boolean isEmpty(ISelection selection) throws BadLocationException {
            return selection.isEmpty();
        }

        boolean isMultiline(ISelection selection) throws BadLocationException {
            if (selection == null) {
                throw new NullPointerException();
            }
            return false;
        }

        TextEdit delete(ISelection selection) throws BadLocationException {
            return this.replace(selection, "");
        }

        TextEdit backspace(ISelection selection) throws BadLocationException {
            return this.replace(selection, "");
        }

        ISelection makeEmpty(ISelection selection, boolean beginning) throws BadLocationException {
            return selection;
        }

        IRegion[] getRanges(ISelection selection) throws BadLocationException {
            return new IRegion[0];
        }

        int getCoveredLines(ISelection selection) throws BadLocationException {
            return 0;
        }

        ISelection makeReplaceSelection(ISelection selection, String replacement) throws BadLocationException {
            return this.makeEmpty(selection, false);
        }

        /* synthetic */ Implementation(Implementation implementation, Implementation implementation2) {
            this();
        }
    }
}

