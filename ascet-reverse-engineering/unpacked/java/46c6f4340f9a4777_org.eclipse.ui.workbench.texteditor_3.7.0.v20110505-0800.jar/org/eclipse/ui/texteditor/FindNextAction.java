/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.text.FindReplaceDocumentAdapter
 *  org.eclipse.jface.text.IFindReplaceTarget
 *  org.eclipse.jface.text.IFindReplaceTargetExtension3
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchWindow
 */
package org.eclipse.ui.texteditor;

import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;
import java.util.regex.PatternSyntaxException;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.text.FindReplaceDocumentAdapter;
import org.eclipse.jface.text.IFindReplaceTarget;
import org.eclipse.jface.text.IFindReplaceTargetExtension3;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.IUpdate;
import org.eclipse.ui.texteditor.ResourceAction;

public class FindNextAction
extends ResourceAction
implements IUpdate {
    private IFindReplaceTarget fTarget;
    private IWorkbenchPart fWorkbenchPart;
    private IWorkbenchWindow fWorkbenchWindow;
    private IDialogSettings fDialogSettings;
    private List fFindHistory = new ArrayList();
    private String fFindString;
    private boolean fForward;
    private boolean fWrapInit;
    private boolean fCaseInit;
    private boolean fWholeWordInit;
    private boolean fRegExSearch;
    private String fSelection;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public FindNextAction(ResourceBundle bundle, String prefix, IWorkbenchPart workbenchPart, boolean forward) {
        super(bundle, prefix);
        this.fWorkbenchPart = workbenchPart;
        this.fForward = forward;
        this.update();
    }

    public FindNextAction(ResourceBundle bundle, String prefix, IWorkbenchWindow workbenchWindow, boolean forward) {
        super(bundle, prefix);
        this.fWorkbenchWindow = workbenchWindow;
        this.fForward = forward;
        this.update();
    }

    private String getFindString() {
        String fullSelection = this.fTarget.getSelectionText();
        String firstLine = this.getFirstLine(fullSelection);
        if ((firstLine.length() == 0 || this.fRegExSearch && fullSelection.equals(this.fSelection)) && !this.fFindHistory.isEmpty()) {
            return (String)this.fFindHistory.get(0);
        }
        if (this.fRegExSearch && fullSelection.length() > 0) {
            return FindReplaceDocumentAdapter.escapeForRegExPattern((String)fullSelection);
        }
        return firstLine;
    }

    private IStatusLineManager getStatusLineManager() {
        IEditorPart editor = this.fWorkbenchPart.getSite().getPage().getActiveEditor();
        if (editor == null) {
            return null;
        }
        return editor.getEditorSite().getActionBars().getStatusLineManager();
    }

    private void statusNotFound() {
        this.fWorkbenchPart.getSite().getShell().getDisplay().beep();
        IStatusLineManager manager = this.getStatusLineManager();
        if (manager == null) {
            return;
        }
        manager.setMessage(EditorMessages.FindNext_Status_noMatch_label);
    }

    private void statusClear() {
        IStatusLineManager manager = this.getStatusLineManager();
        if (manager == null) {
            return;
        }
        manager.setErrorMessage("");
        manager.setMessage("");
    }

    public void run() {
        if (this.fTarget != null) {
            this.readConfiguration();
            this.fFindString = this.getFindString();
            if (this.fFindString == null) {
                this.statusNotFound();
                return;
            }
            boolean wholeWord = this.fWholeWordInit && !this.fRegExSearch && this.isWord(this.fFindString);
            this.statusClear();
            if (!this.findNext(this.fFindString, this.fForward, this.fCaseInit, this.fWrapInit, wholeWord, this.fRegExSearch)) {
                this.statusNotFound();
            }
            this.writeConfiguration();
        }
    }

    private boolean isWord(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int i = 0;
        while (i < str.length()) {
            if (!Character.isJavaIdentifierPart(str.charAt(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void update() {
        if (this.fWorkbenchPart == null && this.fWorkbenchWindow != null) {
            this.fWorkbenchPart = this.fWorkbenchWindow.getPartService().getActivePart();
        }
        if (this.fWorkbenchPart != null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.text.IFindReplaceTarget");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.fTarget = (IFindReplaceTarget)this.fWorkbenchPart.getAdapter((Class)clazz);
        } else {
            this.fTarget = null;
        }
        this.setEnabled(this.fTarget != null && this.fTarget.canPerformFind());
    }

    private int findIndex(String findString, int startPosition, boolean forwardSearch, boolean caseSensitive, boolean wrapSearch, boolean wholeWord, boolean regExSearch) {
        if (forwardSearch) {
            if (wrapSearch) {
                int index = this.findAndSelect(startPosition, findString, true, caseSensitive, wholeWord, regExSearch);
                if (index == -1) {
                    this.beep();
                    index = this.findAndSelect(-1, findString, true, caseSensitive, wholeWord, regExSearch);
                }
                return index;
            }
            return this.findAndSelect(startPosition, findString, true, caseSensitive, wholeWord, regExSearch);
        }
        if (wrapSearch) {
            int index = this.findAndSelect(startPosition - 1, findString, false, caseSensitive, wholeWord, regExSearch);
            if (index == -1) {
                this.beep();
                index = this.findAndSelect(-1, findString, false, caseSensitive, wholeWord, regExSearch);
            }
            return index;
        }
        return this.findAndSelect(startPosition - 1, findString, false, caseSensitive, wholeWord, regExSearch);
    }

    private boolean findNext(String findString, boolean forwardSearch, boolean caseSensitive, boolean wrapSearch, boolean wholeWord, boolean regExSearch) {
        int index;
        Point r = this.fTarget.getSelection();
        int findReplacePosition = r.x;
        if (forwardSearch) {
            findReplacePosition += r.y;
        }
        return (index = this.findIndex(findString, findReplacePosition, forwardSearch, caseSensitive, wrapSearch, wholeWord, regExSearch)) != -1;
    }

    private void beep() {
        Shell shell = null;
        if (this.fWorkbenchPart != null) {
            shell = this.fWorkbenchPart.getSite().getShell();
        } else if (this.fWorkbenchWindow != null) {
            shell = this.fWorkbenchWindow.getShell();
        }
        if (shell != null && !shell.isDisposed()) {
            shell.getDisplay().beep();
        }
    }

    private int findAndSelect(int offset, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord, boolean regExSearch) {
        if (this.fTarget instanceof IFindReplaceTargetExtension3) {
            try {
                return ((IFindReplaceTargetExtension3)this.fTarget).findAndSelect(offset, findString, forwardSearch, caseSensitive, wholeWord, regExSearch);
            }
            catch (PatternSyntaxException patternSyntaxException) {
                return -1;
            }
        }
        return this.fTarget.findAndSelect(offset, findString, forwardSearch, caseSensitive, wholeWord);
    }

    private IDialogSettings getDialogSettings() {
        IDialogSettings settings = TextEditorPlugin.getDefault().getDialogSettings();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.texteditor.FindReplaceDialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.fDialogSettings = settings.getSection(clazz.getName());
        if (this.fDialogSettings == null) {
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("org.eclipse.ui.texteditor.FindReplaceDialog");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.fDialogSettings = settings.addNewSection(clazz2.getName());
        }
        return this.fDialogSettings;
    }

    private void readConfiguration() {
        IDialogSettings s = this.getDialogSettings();
        this.fWrapInit = s.get("wrap") == null || s.getBoolean("wrap");
        this.fCaseInit = s.getBoolean("casesensitive");
        this.fWholeWordInit = s.getBoolean("wholeword");
        this.fRegExSearch = s.getBoolean("isRegEx");
        this.fSelection = s.get("selection");
        String[] findHistory = s.getArray("findhistory");
        if (findHistory != null) {
            this.fFindHistory.clear();
            int i = 0;
            while (i < findHistory.length) {
                this.fFindHistory.add(findHistory[i]);
                ++i;
            }
        }
    }

    private void writeConfiguration() {
        if (this.fFindString == null) {
            return;
        }
        IDialogSettings s = this.getDialogSettings();
        s.put("selection", this.fTarget.getSelectionText());
        if (!this.fFindHistory.isEmpty() && this.fFindString.equals(this.fFindHistory.get(0))) {
            return;
        }
        int index = this.fFindHistory.indexOf(this.fFindString);
        if (index != -1) {
            this.fFindHistory.remove(index);
        }
        this.fFindHistory.add(0, this.fFindString);
        while (this.fFindHistory.size() > 8) {
            this.fFindHistory.remove(8);
        }
        String[] names = new String[this.fFindHistory.size()];
        this.fFindHistory.toArray(names);
        s.put("findhistory", names);
    }

    private String getFirstLine(String selection) {
        if (selection.length() > 0) {
            int[] info = TextUtilities.indexOf((String[])TextUtilities.DELIMITERS, (String)selection, (int)0);
            if (info[0] > 0) {
                return selection.substring(0, info[0]);
            }
            if (info[0] == -1) {
                return selection;
            }
        }
        return selection;
    }
}

