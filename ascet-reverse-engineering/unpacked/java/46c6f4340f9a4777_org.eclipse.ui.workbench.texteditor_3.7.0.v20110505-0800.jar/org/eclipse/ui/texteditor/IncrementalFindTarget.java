/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.IExecutionListener
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.text.IFindReplaceTarget
 *  org.eclipse.jface.text.IFindReplaceTargetExtension
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITextListener
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.ITextViewerExtension
 *  org.eclipse.jface.text.ITextViewerExtension5
 *  org.eclipse.jface.text.TextEvent
 *  org.eclipse.jface.util.Util
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.ui.IWorkbench
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.commands.ICommandService
 */
package org.eclipse.ui.texteditor;

import java.util.Stack;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IExecutionListener;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.text.IFindReplaceTarget;
import org.eclipse.jface.text.IFindReplaceTargetExtension;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.IStatusField;
import org.eclipse.ui.texteditor.IStatusFieldExtension;

class IncrementalFindTarget
implements IFindReplaceTarget,
IFindReplaceTargetExtension,
VerifyKeyListener,
MouseListener,
FocusListener,
ISelectionChangedListener,
ITextListener,
IExecutionListener {
    private static final String TAB = EditorMessages.Editor_FindIncremental_render_tab;
    private static final String FIELD_NAME = EditorMessages.Editor_FindIncremental_name;
    private static final String REVERSE_FIELD_NAME = EditorMessages.Editor_FindIncremental_reverse_name;
    private static final String REVERSE = EditorMessages.Editor_FindIncremental_reverse;
    private static final String WRAPPED = EditorMessages.Editor_FindIncremental_wrapped;
    private final ITextViewer fTextViewer;
    private final IStatusLineManager fStatusLine;
    private final IFindReplaceTarget fTarget;
    private StringBuffer fFindString = new StringBuffer();
    private int fCasePosition;
    private int fWrapPosition;
    private int fCurrentIndex;
    private boolean fFound;
    private boolean fForward = true;
    private boolean fInstalled;
    private boolean fSearching;
    private Stack fSessionStack;
    private String fPrevFindString = "";
    private int fPrevCasePosition = -1;
    private IStatusField fStatusField;
    private boolean fIsStatusFieldExtension;
    static /* synthetic */ Class class$0;

    private void saveState() {
        this.fSessionStack.push(new SearchResult());
    }

    private void restoreState() {
        StyledText text = this.fTextViewer.getTextWidget();
        if (text == null || text.isDisposed()) {
            return;
        }
        SearchResult searchResult = null;
        if (!this.fSessionStack.empty()) {
            searchResult = (SearchResult)this.fSessionStack.pop();
        }
        if (searchResult == null) {
            text.getDisplay().beep();
            return;
        }
        text.setSelectionRange(searchResult.selection, searchResult.length);
        text.showSelection();
        this.fFindString.setLength(searchResult.findLength);
        this.fCurrentIndex = searchResult.index;
        this.fFound = searchResult.found;
        this.fForward = searchResult.forward;
        if (this.fFindString.length() <= this.fCasePosition) {
            this.fCasePosition = -1;
        }
        if (this.fSessionStack.size() < this.fWrapPosition) {
            this.fWrapPosition = -1;
        }
    }

    public void setDirection(boolean forward) {
        this.fForward = forward;
    }

    public IncrementalFindTarget(ITextViewer viewer, IStatusLineManager manager) {
        Assert.isNotNull((Object)viewer);
        Assert.isNotNull((Object)manager);
        this.fTextViewer = viewer;
        this.fStatusLine = manager;
        this.fTarget = viewer.getFindReplaceTarget();
    }

    public boolean canPerformFind() {
        return this.fTarget.canPerformFind();
    }

    public int findAndSelect(int offset, String findString, boolean searchForward, boolean caseSensitive, boolean wholeWord) {
        return this.fTarget.findAndSelect(offset, findString, searchForward, caseSensitive, wholeWord);
    }

    public Point getSelection() {
        return this.fTarget.getSelection();
    }

    public String getSelectionText() {
        return this.fTarget.getSelectionText();
    }

    public boolean isEditable() {
        return false;
    }

    public void replaceSelection(String text) {
    }

    public void beginSession() {
        this.fSearching = true;
        if (this.fInstalled) {
            this.saveState();
            this.repeatSearch(this.fForward);
            this.updateStatus();
            this.fSearching = false;
            return;
        }
        this.fFindString.setLength(0);
        this.fSessionStack = new Stack();
        this.fCasePosition = -1;
        this.fWrapPosition = -1;
        this.fFound = true;
        StyledText text = this.fTextViewer.getTextWidget();
        if (text != null && !text.isDisposed()) {
            this.fCurrentIndex = text.getCaretOffset();
            text.setSelection(this.fCurrentIndex);
        } else {
            this.fCurrentIndex = 0;
        }
        this.install();
        if (this.fTextViewer instanceof ITextViewerExtension) {
            int modelOffset = this.fTextViewer instanceof ITextViewerExtension5 ? (this.fCurrentIndex == -1 ? -1 : ((ITextViewerExtension5)this.fTextViewer).widgetOffset2ModelOffset(this.fCurrentIndex)) : this.fCurrentIndex;
            ((ITextViewerExtension)this.fTextViewer).setMark(modelOffset);
        }
        this.updateStatus();
        if (this.fTarget instanceof IFindReplaceTargetExtension) {
            ((IFindReplaceTargetExtension)this.fTarget).beginSession();
        }
        this.fSearching = false;
    }

    public void endSession() {
        if (this.fTarget instanceof IFindReplaceTargetExtension) {
            ((IFindReplaceTargetExtension)this.fTarget).endSession();
        }
    }

    public IRegion getScope() {
        return null;
    }

    public void setScope(IRegion scope) {
    }

    public void setReplaceAllMode(boolean replaceAll) {
    }

    private void install() {
        ICommandService commandService;
        if (this.fInstalled) {
            return;
        }
        StyledText text = this.fTextViewer.getTextWidget();
        if (text == null) {
            return;
        }
        text.addMouseListener((MouseListener)this);
        text.addFocusListener((FocusListener)this);
        this.fTextViewer.addTextListener((ITextListener)this);
        ISelectionProvider selectionProvider = this.fTextViewer.getSelectionProvider();
        if (selectionProvider != null) {
            selectionProvider.addSelectionChangedListener((ISelectionChangedListener)this);
        }
        if (this.fTextViewer instanceof ITextViewerExtension) {
            ((ITextViewerExtension)this.fTextViewer).prependVerifyKeyListener((VerifyKeyListener)this);
        } else {
            text.addVerifyKeyListener((VerifyKeyListener)this);
        }
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((commandService = (ICommandService)iWorkbench.getAdapter((Class)clazz)) != null) {
            commandService.addExecutionListener((IExecutionListener)this);
        }
        this.fInstalled = true;
    }

    private void uninstall() {
        ICommandService commandService;
        StyledText text;
        this.fTextViewer.removeTextListener((ITextListener)this);
        ISelectionProvider selectionProvider = this.fTextViewer.getSelectionProvider();
        if (selectionProvider != null) {
            selectionProvider.removeSelectionChangedListener((ISelectionChangedListener)this);
        }
        if ((text = this.fTextViewer.getTextWidget()) != null) {
            text.removeMouseListener((MouseListener)this);
            text.removeFocusListener((FocusListener)this);
        }
        if (this.fTextViewer instanceof ITextViewerExtension) {
            ((ITextViewerExtension)this.fTextViewer).removeVerifyKeyListener((VerifyKeyListener)this);
        } else if (text != null) {
            text.removeVerifyKeyListener((VerifyKeyListener)this);
        }
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((commandService = (ICommandService)iWorkbench.getAdapter((Class)clazz)) != null) {
            commandService.removeExecutionListener((IExecutionListener)this);
        }
        this.fInstalled = false;
    }

    private void updateStatus() {
        String reversePrefix;
        if (!this.fInstalled) {
            return;
        }
        String string = this.fFindString.toString();
        String wrapPrefix = this.fWrapPosition == -1 ? "" : WRAPPED;
        String string2 = reversePrefix = this.fForward ? "" : REVERSE;
        if (!this.fFound) {
            String pattern = EditorMessages.Editor_FindIncremental_not_found_pattern;
            this.statusError(NLSUtility.format(pattern, new Object[]{reversePrefix, wrapPrefix, string}));
        } else if (string.length() == 0) {
            if (this.fForward) {
                this.statusMessage(FIELD_NAME);
            } else {
                this.statusMessage(REVERSE_FIELD_NAME);
            }
        } else if (!this.fForward || this.fWrapPosition > -1) {
            String pattern = EditorMessages.Editor_FindIncremental_found_pattern;
            this.statusMessage(NLSUtility.format(pattern, new Object[]{reversePrefix, wrapPrefix, string}));
        } else {
            this.statusMessage(string);
        }
    }

    public void verifyKey(VerifyEvent event) {
        if (!event.doit) {
            return;
        }
        this.fSearching = true;
        if (event.character == '\u0000') {
            switch (event.keyCode) {
                case 0x1000003: 
                case 0x1000004: 
                case 0x1000005: 
                case 0x1000006: 
                case 0x1000007: 
                case 0x1000008: {
                    this.leave();
                    break;
                }
                case 0x1000002: {
                    this.saveState();
                    this.setDirection(true);
                    this.repeatSearch(this.fForward);
                    event.doit = false;
                    break;
                }
                case 0x1000001: {
                    this.saveState();
                    this.setDirection(false);
                    this.repeatSearch(this.fForward);
                    event.doit = false;
                }
            }
        } else {
            switch (event.character) {
                case '\r': 
                case '\u001b': {
                    this.leave();
                    event.doit = false;
                    break;
                }
                case '\b': 
                case '\u007f': {
                    this.restoreState();
                    event.doit = false;
                    break;
                }
                default: {
                    int stateMask = event.stateMask;
                    if (stateMask != 0 && stateMask != 131072 && (Util.isMac() || stateMask != 327680) && (!Util.isMac() || stateMask != 196608 && stateMask != 65536)) break;
                    this.saveState();
                    this.addCharSearch(event.character);
                    event.doit = false;
                }
            }
        }
        this.updateStatus();
        this.fSearching = false;
    }

    private boolean repeatSearch(boolean forward) {
        boolean found;
        String string;
        if (this.fFindString.length() == 0) {
            this.fFindString = new StringBuffer(this.fPrevFindString);
            this.fCasePosition = this.fPrevCasePosition;
        }
        if ((string = this.fFindString.toString()).length() == 0) {
            this.fFound = true;
            return true;
        }
        StyledText text = this.fTextViewer.getTextWidget();
        int startIndex = text.getCaretOffset();
        if (!forward) {
            --startIndex;
        }
        if (!this.fFound && this.fForward == forward) {
            startIndex = -1;
            if (this.fWrapPosition == -1) {
                this.fWrapPosition = this.fSessionStack.size();
            }
        }
        this.fForward = forward;
        text.setRedraw(false);
        int index = this.fTarget.findAndSelect(startIndex, string, this.fForward, this.fCasePosition != -1, false);
        if (!forward) {
            Point p = this.fTarget.getSelection();
            text.setSelectionRange(p.x + p.y, -p.y);
            p = null;
        }
        text.setRedraw(true);
        boolean bl = found = index != -1;
        if (!found && this.fFound && (text = this.fTextViewer.getTextWidget()) != null && !text.isDisposed()) {
            text.getDisplay().beep();
        }
        if (found) {
            this.fCurrentIndex = startIndex;
        }
        this.fFound = found;
        return found;
    }

    private boolean addCharSearch(char c) {
        boolean found;
        if (this.fCasePosition == -1 && Character.isUpperCase(c) && Character.toLowerCase(c) != c) {
            this.fCasePosition = this.fFindString.length();
        }
        this.fFindString.append(c);
        String string = this.fFindString.toString();
        StyledText text = this.fTextViewer.getTextWidget();
        text.setRedraw(false);
        int index = this.fTarget.findAndSelect(this.fCurrentIndex, string, this.fForward, this.fCasePosition != -1, false);
        if (!this.fForward) {
            Point p = this.fTarget.getSelection();
            text.setSelectionRange(p.x + p.y, -p.y);
        }
        text.setRedraw(true);
        boolean bl = found = index != -1;
        if (!found && this.fFound && (text = this.fTextViewer.getTextWidget()) != null && !text.isDisposed()) {
            text.getDisplay().beep();
        }
        this.fFound = found;
        return found;
    }

    private void leave() {
        if (this.fFindString.length() != 0) {
            this.fPrevFindString = this.fFindString.toString();
            this.fPrevCasePosition = this.fCasePosition;
        }
        this.statusClear();
        this.uninstall();
        this.fSessionStack = null;
    }

    public void textChanged(TextEvent event) {
        if (event.getDocumentEvent() != null) {
            this.leave();
        }
    }

    public void mouseDoubleClick(MouseEvent e) {
        this.leave();
    }

    public void mouseDown(MouseEvent e) {
        this.leave();
    }

    public void mouseUp(MouseEvent e) {
        this.leave();
    }

    public void focusGained(FocusEvent e) {
        this.leave();
    }

    public void focusLost(FocusEvent e) {
        this.leave();
    }

    private void statusMessage(String string) {
        if (this.fStatusField != null) {
            if (this.fIsStatusFieldExtension) {
                ((IStatusFieldExtension)((Object)this.fStatusField)).setErrorText(null);
                this.fStatusField.setText(this.escapeTabs(string));
                ((IStatusFieldExtension)((Object)this.fStatusField)).setVisible(true);
                this.fStatusLine.update(true);
            } else {
                this.fStatusLine.setErrorMessage(null);
                this.fStatusField.setText(this.escapeTabs(string));
            }
        } else {
            this.fStatusLine.setErrorMessage(null);
            this.fStatusLine.setMessage(this.escapeTabs(string));
        }
    }

    private void statusError(String string) {
        if (this.fStatusField != null) {
            if (this.fIsStatusFieldExtension) {
                ((IStatusFieldExtension)((Object)this.fStatusField)).setErrorText(this.escapeTabs(string));
                this.fStatusField.setText("");
                ((IStatusFieldExtension)((Object)this.fStatusField)).setVisible(true);
                this.fStatusLine.update(true);
            } else {
                this.fStatusLine.setErrorMessage(this.escapeTabs(string));
                this.fStatusField.setText("");
            }
        } else {
            this.fStatusLine.setErrorMessage(this.escapeTabs(string));
            this.fStatusLine.setMessage(null);
        }
    }

    private void statusClear() {
        if (this.fStatusField != null) {
            if (this.fIsStatusFieldExtension) {
                this.fStatusField.setText("");
                ((IStatusFieldExtension)((Object)this.fStatusField)).setErrorText(null);
                ((IStatusFieldExtension)((Object)this.fStatusField)).setVisible(false);
                this.fStatusLine.update(true);
            } else {
                this.fStatusField.setText("");
                this.fStatusLine.setErrorMessage(null);
            }
        } else {
            this.fStatusLine.setErrorMessage(null);
            this.fStatusLine.setMessage(null);
        }
    }

    private String escapeTabs(String string) {
        StringBuffer buffer = new StringBuffer();
        int begin = 0;
        int end = string.indexOf(9, begin);
        while (end >= 0) {
            buffer.append(string.substring(begin, end));
            buffer.append(TAB);
            begin = end + 1;
            end = string.indexOf(9, begin);
        }
        buffer.append(string.substring(begin));
        return buffer.toString();
    }

    public Point getLineSelection() {
        if (this.fTarget instanceof IFindReplaceTargetExtension) {
            return ((IFindReplaceTargetExtension)this.fTarget).getLineSelection();
        }
        return null;
    }

    public void setSelection(int offset, int length) {
        if (this.fTarget instanceof IFindReplaceTargetExtension) {
            ((IFindReplaceTargetExtension)this.fTarget).setSelection(offset, length);
        }
    }

    public void setScopeHighlightColor(Color color) {
    }

    public void selectionChanged(SelectionChangedEvent e) {
        boolean ignore = false;
        ISelection selection = e.getSelection();
        if (selection instanceof ITextSelection) {
            ITextSelection textSelection = (ITextSelection)selection;
            Point range = this.getSelection();
            boolean bl = ignore = textSelection.getOffset() + textSelection.getLength() == range.x + range.y;
        }
        if (!this.fSearching && !ignore) {
            this.leave();
        }
    }

    void setStatusField(IStatusField statusField) {
        this.fStatusField = statusField;
        this.fIsStatusFieldExtension = this.fStatusField instanceof IStatusFieldExtension;
    }

    public void notHandled(String commandId, NotHandledException exception) {
    }

    public void postExecuteFailure(String commandId, ExecutionException exception) {
    }

    public void postExecuteSuccess(String commandId, Object returnValue) {
    }

    public void preExecute(String commandId, ExecutionEvent event) {
        if ("org.eclipse.ui.edit.findIncremental".equals(commandId) || "org.eclipse.ui.edit.findIncrementalReverse".equals(commandId)) {
            return;
        }
        this.leave();
    }

    private class SearchResult {
        int selection;
        int length;
        int index;
        int findLength;
        boolean found;
        boolean forward;

        public SearchResult() {
            Point p = IncrementalFindTarget.this.fTarget.getSelection();
            this.selection = p.x;
            this.length = p.y;
            this.index = IncrementalFindTarget.this.fCurrentIndex;
            this.findLength = IncrementalFindTarget.this.fFindString.length();
            this.found = IncrementalFindTarget.this.fFound;
            this.forward = IncrementalFindTarget.this.fForward;
        }
    }
}

