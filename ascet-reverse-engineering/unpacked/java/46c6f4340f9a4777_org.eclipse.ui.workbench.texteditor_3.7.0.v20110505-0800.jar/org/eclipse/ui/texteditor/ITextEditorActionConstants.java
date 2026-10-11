/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ui.IWorkbenchActionConstants
 *  org.eclipse.ui.actions.ActionFactory
 */
package org.eclipse.ui.texteditor;

import org.eclipse.ui.IWorkbenchActionConstants;
import org.eclipse.ui.actions.ActionFactory;

public interface ITextEditorActionConstants
extends IWorkbenchActionConstants {
    public static final String GROUP_UNDO = "group.undo";
    public static final String GROUP_COPY = "group.copy";
    public static final String GROUP_EDIT = "group.edit";
    public static final String GROUP_PRINT = "group.print";
    public static final String GROUP_FIND = "group.find";
    public static final String GROUP_SAVE = "group.save";
    public static final String GROUP_REST = "group.rest";
    public static final String GROUP_OPEN = "group.open";
    public static final String GROUP_GENERATE = "group.generate";
    public static final String SHIFT_RIGHT = "ShiftRight";
    public static final String SHIFT_RIGHT_TAB = "ShiftRightTab";
    public static final String SHIFT_LEFT = "ShiftLeft";
    public static final String DELETE_LINE = "DeleteLine";
    public static final String JOIN_LINES = "JoinLines";
    public static final String CUT_LINE = "CutLine";
    public static final String DELETE_LINE_TO_BEGINNING = "DeleteLineToBeginning";
    public static final String CUT_LINE_TO_BEGINNING = "CutLineToBeginning";
    public static final String DELETE_LINE_TO_END = "DeleteLineToEnd";
    public static final String CUT_LINE_TO_END = "CutLineToEnd";
    public static final String SET_MARK = "SetMark";
    public static final String CLEAR_MARK = "ClearMark";
    public static final String SWAP_MARK = "SwapMark";
    public static final String GOTO_LINE = "GotoLine";
    public static final String SMART_ENTER = "SmartEnter";
    public static final String SMART_ENTER_INVERSE = "SmartEnterInverse";
    public static final String MOVE_LINE_UP = "MoveLineUp";
    public static final String MOVE_LINE_DOWN = "MoveLineDown";
    public static final String COPY_LINE_UP = "CopyLineUp";
    public static final String COPY_LINE_DOWN = "CopyLineDown";
    public static final String UPPER_CASE = "UpperCase";
    public static final String LOWER_CASE = "LowerCase";
    public static final String FIND_NEXT = "FindNext";
    public static final String FIND_PREVIOUS = "FindPrevious";
    public static final String FIND_INCREMENTAL = "FindIncremental";
    public static final String FIND_INCREMENTAL_REVERSE = "FindIncrementalReverse";
    public static final String CONVERT_LINE_DELIMITERS_TO_WINDOWS = "ConvertLineDelimitersToWindows";
    public static final String CONVERT_LINE_DELIMITERS_TO_UNIX = "ConvertLineDelimitersToUNIX";
    public static final String CONVERT_LINE_DELIMITERS_TO_MAC = "ConvertLineDelimitersToMAC";
    public static final String CHANGE_ENCODING = "ChangeEncoding";
    public static final String RULER_DOUBLE_CLICK = "RulerDoubleClick";
    public static final String RULER_CLICK = "RulerClick";
    public static final String RULER_MANAGE_TASKS = "ManageTasks";
    public static final String RULER_MANAGE_BOOKMARKS = "ManageBookmarks";
    public static final String STATUS_CATEGORY_INPUT_POSITION = "InputPosition";
    public static final String STATUS_CATEGORY_INPUT_MODE = "InputMode";
    public static final String STATUS_CATEGORY_ELEMENT_STATE = "ElementState";
    public static final String STATUS_CATEGORY_FIND_FIELD = "findField";
    public static final String COPY = ActionFactory.COPY.getId();
    public static final String CUT = ActionFactory.CUT.getId();
    public static final String DELETE = ActionFactory.DELETE.getId();
    public static final String FIND = ActionFactory.FIND.getId();
    public static final String PASTE = ActionFactory.PASTE.getId();
    public static final String PRINT = ActionFactory.PRINT.getId();
    public static final String PROPERTIES = ActionFactory.PROPERTIES.getId();
    public static final String REDO = ActionFactory.REDO.getId();
    public static final String UNDO = ActionFactory.UNDO.getId();
    public static final String SAVE = ActionFactory.SAVE.getId();
    public static final String SELECT_ALL = ActionFactory.SELECT_ALL.getId();
    public static final String REVERT = ActionFactory.REVERT.getId();
    public static final String NEXT = ActionFactory.NEXT.getId();
    public static final String PREVIOUS = ActionFactory.PREVIOUS.getId();
    public static final String REFRESH = ActionFactory.REFRESH.getId();
    public static final String REVERT_TO_SAVED = REVERT;
    public static final String TOGGLE_INSERT_MODE = "TOGGLE_INSERT_MODE";
    public static final String GROUP_SETTINGS = "settings";
    public static final String GROUP_RULERS = "rulers";
    public static final String GROUP_RESTORE = "restore";
    public static final String GROUP_INFORMATION = "group.information";
    public static final String GROUP_ASSIST = "group.assist";
    public static final String CONTEXT_PREFERENCES = "Preferences.ContextAction";
    public static final String RULER_PREFERENCES = "Preferences.RulerAction";
    public static final String LINENUMBERS_TOGGLE = "Linenumbers.Toggle";
    public static final String QUICKDIFF_REVERTDELETION = "QuickDiff.RevertDeletion";
    public static final String QUICKDIFF_REVERTLINE = "QuickDiff.RevertLine";
    public static final String QUICKDIFF_REVERT = "QuickDiff.Revert";
    public static final String QUICKDIFF_REVERTBLOCK = "QuickDiff.RevertBlock";
    public static final String QUICKDIFF_REVERTSELECTION = "QuickDiff.RevertSelection";
    public static final String QUICKDIFF_TOGGLE = "QuickDiff.Toggle";
    public static final String HIPPIE_COMPLETION = "HIPPIE_COMPLETION";
    public static final String REVISION_HIDE_INFO = "Revision.HideInfo";
    public static final String CONTENT_ASSIST = "ContentAssistProposal";
    public static final String CONTENT_ASSIST_CONTEXT_INFORMATION = "ContentAssistContextInformation";
    public static final String QUICK_ASSIST = "QuickAssist";
    public static final String REVISION_RENDERING_CYCLE = "Revision.Rendering.Cycle";
    public static final String REVISION_SHOW_AUTHOR_TOGGLE = "Revision.ShowAuthor.Toggle";
    public static final String REVISION_SHOW_ID_TOGGLE = "Revision.ShowId.Toggle";
    public static final String RECENTER = "Recenter";
    public static final String SHOW_WHITESPACE_CHARACTERS = "ShowWhitespaceCharacters";
    public static final String SHOW_INFORMATION = "ShowInformation";
    public static final String BLOCK_SELECTION_MODE = "BlockSelectionMode";
    public static final String SHOW_CHANGE_RULER_INFORMATION = "ShowChangeRulerInformation";
    public static final String SHOW_RULER_ANNOTATION_INFORMATION = "ShowRulerAnnotationInformation";
    public static final String OPEN_HYPERLINK = "OpenHyperlink";
}

