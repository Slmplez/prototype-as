/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.texteditor;

import org.eclipse.ui.texteditor.IWorkbenchActionDefinitionIds;

public interface ITextEditorActionDefinitionIds
extends IWorkbenchActionDefinitionIds {
    public static final String DELETE_LINE = "org.eclipse.ui.edit.text.delete.line";
    public static final String JOIN_LINES = "org.eclipse.ui.edit.text.join.lines";
    public static final String CUT_LINE = "org.eclipse.ui.edit.text.cut.line";
    public static final String DELETE_LINE_TO_BEGINNING = "org.eclipse.ui.edit.text.delete.line.to.beginning";
    public static final String CUT_LINE_TO_BEGINNING = "org.eclipse.ui.edit.text.cut.line.to.beginning";
    public static final String DELETE_LINE_TO_END = "org.eclipse.ui.edit.text.delete.line.to.end";
    public static final String CUT_LINE_TO_END = "org.eclipse.ui.edit.text.cut.line.to.end";
    public static final String SET_MARK = "org.eclipse.ui.edit.text.set.mark";
    public static final String CLEAR_MARK = "org.eclipse.ui.edit.text.clear.mark";
    public static final String SWAP_MARK = "org.eclipse.ui.edit.text.swap.mark";
    public static final String SMART_ENTER = "org.eclipse.ui.edit.text.smartEnter";
    public static final String SMART_ENTER_INVERSE = "org.eclipse.ui.edit.text.smartEnterInverse";
    public static final String MOVE_LINES_UP = "org.eclipse.ui.edit.text.moveLineUp";
    public static final String MOVE_LINES_DOWN = "org.eclipse.ui.edit.text.moveLineDown";
    public static final String COPY_LINES_UP = "org.eclipse.ui.edit.text.copyLineUp";
    public static final String COPY_LINES_DOWN = "org.eclipse.ui.edit.text.copyLineDown";
    public static final String UPPER_CASE = "org.eclipse.ui.edit.text.upperCase";
    public static final String LOWER_CASE = "org.eclipse.ui.edit.text.lowerCase";
    public static final String LINE_UP = "org.eclipse.ui.edit.text.goto.lineUp";
    public static final String LINE_DOWN = "org.eclipse.ui.edit.text.goto.lineDown";
    public static final String LINE_START = "org.eclipse.ui.edit.text.goto.lineStart";
    public static final String LINE_END = "org.eclipse.ui.edit.text.goto.lineEnd";
    public static final String LINE_GOTO = "org.eclipse.ui.edit.text.goto.line";
    public static final String COLUMN_PREVIOUS = "org.eclipse.ui.edit.text.goto.columnPrevious";
    public static final String COLUMN_NEXT = "org.eclipse.ui.edit.text.goto.columnNext";
    public static final String PAGE_UP = "org.eclipse.ui.edit.text.goto.pageUp";
    public static final String PAGE_DOWN = "org.eclipse.ui.edit.text.goto.pageDown";
    public static final String WORD_PREVIOUS = "org.eclipse.ui.edit.text.goto.wordPrevious";
    public static final String WORD_NEXT = "org.eclipse.ui.edit.text.goto.wordNext";
    public static final String TEXT_START = "org.eclipse.ui.edit.text.goto.textStart";
    public static final String TEXT_END = "org.eclipse.ui.edit.text.goto.textEnd";
    public static final String WINDOW_START = "org.eclipse.ui.edit.text.goto.windowStart";
    public static final String WINDOW_END = "org.eclipse.ui.edit.text.goto.windowEnd";
    public static final String SCROLL_LINE_UP = "org.eclipse.ui.edit.text.scroll.lineUp";
    public static final String SCROLL_LINE_DOWN = "org.eclipse.ui.edit.text.scroll.lineDown";
    public static final String SELECT_LINE_UP = "org.eclipse.ui.edit.text.select.lineUp";
    public static final String SELECT_LINE_DOWN = "org.eclipse.ui.edit.text.select.lineDown";
    public static final String SELECT_LINE_START = "org.eclipse.ui.edit.text.select.lineStart";
    public static final String SELECT_LINE_END = "org.eclipse.ui.edit.text.select.lineEnd";
    public static final String SELECT_COLUMN_PREVIOUS = "org.eclipse.ui.edit.text.select.columnPrevious";
    public static final String SELECT_COLUMN_NEXT = "org.eclipse.ui.edit.text.select.columnNext";
    public static final String SELECT_PAGE_UP = "org.eclipse.ui.edit.text.select.pageUp";
    public static final String SELECT_PAGE_DOWN = "org.eclipse.ui.edit.text.select.pageDown";
    public static final String SELECT_WORD_PREVIOUS = "org.eclipse.ui.edit.text.select.wordPrevious";
    public static final String SELECT_WORD_NEXT = "org.eclipse.ui.edit.text.select.wordNext";
    public static final String SELECT_TEXT_START = "org.eclipse.ui.edit.text.select.textStart";
    public static final String SELECT_TEXT_END = "org.eclipse.ui.edit.text.select.textEnd";
    public static final String SELECT_WINDOW_START = "org.eclipse.ui.edit.text.select.windowStart";
    public static final String SELECT_WINDOW_END = "org.eclipse.ui.edit.text.select.windowEnd";
    public static final String DELETE_PREVIOUS = "org.eclipse.ui.edit.text.deletePrevious";
    public static final String DELETE_NEXT = "org.eclipse.ui.edit.text.deleteNext";
    public static final String DELETE_PREVIOUS_WORD = "org.eclipse.ui.edit.text.deletePreviousWord";
    public static final String DELETE_NEXT_WORD = "org.eclipse.ui.edit.text.deleteNextWord";
    public static final String SHIFT_RIGHT = "org.eclipse.ui.edit.text.shiftRight";
    public static final String SHIFT_LEFT = "org.eclipse.ui.edit.text.shiftLeft";
    public static final String CONVERT_LINE_DELIMITERS_TO_WINDOWS = "org.eclipse.ui.edit.text.convert.lineDelimiters.toWindows";
    public static final String CONVERT_LINE_DELIMITERS_TO_UNIX = "org.eclipse.ui.edit.text.convert.lineDelimiters.toUNIX";
    public static final String CONVERT_LINE_DELIMITERS_TO_MAC = "org.eclipse.ui.edit.text.convert.lineDelimiters.toMac";
    public static final String TOGGLE_OVERWRITE = "org.eclipse.ui.edit.text.toggleOverwrite";
    public static final String TOGGLE_SHOW_SELECTED_ELEMENT_ONLY = "org.eclipse.ui.edit.text.toggleShowSelectedElementOnly";
    public static final String SHOW_RULER_CONTEXT_MENU = "org.eclipse.ui.edit.text.showRulerContextMenu";
    public static final String GOTO_LAST_EDIT_POSITION = "org.eclipse.ui.edit.text.gotoLastEditPosition";
    public static final String GOTO_NEXT_ANNOTATION = "org.eclipse.ui.edit.text.gotoNextAnnotation";
    public static final String GOTO_PREVIOUS_ANNOTATION = "org.eclipse.ui.edit.text.gotoPreviousAnnotation";
    public static final String CONTENT_ASSIST_PROPOSALS = "org.eclipse.ui.edit.text.contentAssist.proposals";
    public static final String CONTENT_ASSIST_CONTEXT_INFORMATION = "org.eclipse.ui.edit.text.contentAssist.contextInformation";
    public static final String QUICK_ASSIST = "org.eclipse.jdt.ui.edit.text.java.correction.assist.proposals";
    public static final String TOGGLE_INSERT_MODE = "org.eclipse.ui.edit.text.toggleInsertMode";
    public static final String CHANGE_ENCODING = "org.eclipse.ui.edit.text.changeEncoding";
    public static final String QUICKDIFF_REVERTLINE = "org.eclipse.ui.editors.quickdiff.revertLine";
    public static final String QUICKDIFF_REVERT = "org.eclipse.ui.editors.quickdiff.revert";
    public static final String QUICKDIFF_TOGGLE = "org.eclipse.quickdiff.toggle";
    public static final String LINENUMBER_TOGGLE = "org.eclipse.ui.editors.lineNumberToggle";
    public static final String HIPPIE_COMPLETION = "org.eclipse.ui.edit.text.hippieCompletion";
    public static final String REVISION_RENDERING_CYCLE = "org.eclipse.ui.editors.revisions.rendering.cycle";
    public static final String REVISION_AUTHOR_TOGGLE = "org.eclipse.ui.editors.revisions.author.toggle";
    public static final String REVISION_ID_TOGGLE = "org.eclipse.ui.editors.revisions.id.toggle";
    public static final String RECENTER = "org.eclipse.ui.edit.text.recenter";
    public static final String SHOW_WHITESPACE_CHARACTERS = "org.eclipse.ui.edit.text.toggleShowWhitespaceCharacters";
    public static final String SHOW_INFORMATION = "org.eclipse.ui.edit.text.showInformation";
    public static final String BLOCK_SELECTION_MODE = "org.eclipse.ui.edit.text.toggleBlockSelectionMode";
    public static final String SHOW_CHANGE_RULER_INFORMATION_ID = "org.eclipse.ui.edit.text.showChangeRulerInformation";
    public static final String SHOW_RULER_ANNOTATION_INFORMATION_ID = "org.eclipse.ui.edit.text.showRulerAnnotationInformation";
    public static final String OPEN_HYPERLINK = "org.eclipse.ui.edit.text.open.hyperlink";
}

