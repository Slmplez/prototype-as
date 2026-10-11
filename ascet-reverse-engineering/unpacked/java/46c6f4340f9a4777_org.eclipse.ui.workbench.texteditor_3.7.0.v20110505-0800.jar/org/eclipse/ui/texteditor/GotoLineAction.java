/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.IInputValidator
 *  org.eclipse.jface.dialogs.InputDialog
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchPart
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.IInputValidator;
import org.eclipse.jface.dialogs.InputDialog;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class GotoLineAction
extends TextEditorAction {
    private int fLastLine;
    private ResourceBundle fBundle;
    private String fPrefix;
    static /* synthetic */ Class class$0;

    public GotoLineAction(ResourceBundle bundle, String prefix, ITextEditor editor) {
        super(bundle, prefix, editor);
        this.fBundle = bundle;
        this.fPrefix = prefix;
    }

    public GotoLineAction(ITextEditor editor) {
        super(EditorMessages.getBundleForConstructedKeys(), "Editor.GotoLine.", editor);
        this.fBundle = EditorMessages.getBundleForConstructedKeys();
        this.fPrefix = "Editor.GotoLine.";
    }

    private void gotoLine(int line) {
        ITextEditor editor = this.getTextEditor();
        IDocumentProvider provider = editor.getDocumentProvider();
        IDocument document = provider.getDocument(editor.getEditorInput());
        try {
            int start = document.getLineOffset(line);
            editor.selectAndReveal(start, 0);
            IWorkbenchPage page = editor.getSite().getPage();
            page.activate((IWorkbenchPart)editor);
        }
        catch (BadLocationException badLocationException) {}
    }

    public void run() {
        GotoLineDialog d;
        ITextEditor editor = this.getTextEditor();
        if (editor == null) {
            return;
        }
        IDocumentProvider docProvider = editor.getDocumentProvider();
        if (docProvider == null) {
            return;
        }
        IDocument document = docProvider.getDocument(editor.getEditorInput());
        if (document == null) {
            return;
        }
        try {
            this.fLastLine = document.getLineOfOffset(document.getLength()) + 1;
        }
        catch (BadLocationException ex) {
            Status status = new Status(4, "org.eclipse.ui.workbench.texteditor", 0, "Go to Line failed", (Throwable)ex);
            TextEditorPlugin.getDefault().getLog().log((IStatus)status);
            return;
        }
        String title = this.fBundle.getString(String.valueOf(this.fPrefix) + "dialog.title");
        String message = NLSUtility.format(this.fBundle.getString(String.valueOf(this.fPrefix) + "dialog.message"), new Integer(this.fLastLine));
        String currentLineStr = "";
        ISelection selection = editor.getSelectionProvider().getSelection();
        if (selection instanceof ITextSelection) {
            int currentLine;
            ITextSelection textSelection = (ITextSelection)selection;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.swt.widgets.Control");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Control textWidget = (Control)editor.getAdapter(clazz);
            boolean caretAtStartOfSelection = false;
            if (textWidget instanceof StyledText) {
                boolean bl = caretAtStartOfSelection = ((StyledText)textWidget).getSelection().x == ((StyledText)textWidget).getCaretOffset();
            }
            if (caretAtStartOfSelection) {
                currentLine = textSelection.getStartLine();
            } else {
                int endOffset = textSelection.getOffset() + textSelection.getLength();
                try {
                    currentLine = document.getLineOfOffset(endOffset);
                }
                catch (BadLocationException badLocationException) {
                    currentLine = -1;
                }
            }
            if (currentLine > -1) {
                currentLineStr = Integer.toString(currentLine + 1);
            }
        }
        if ((d = new GotoLineDialog(editor.getSite().getShell(), title, message, currentLineStr, new NumberValidator())).open() == 0) {
            try {
                int line = Integer.parseInt(d.getValue());
                this.gotoLine(line - 1);
            }
            catch (NumberFormatException numberFormatException) {}
        }
    }

    static class GotoLineDialog
    extends InputDialog {
        public GotoLineDialog(Shell parent, String title, String message, String initialValue, IInputValidator validator) {
            super(parent, title, message, initialValue, validator);
        }

        protected IDialogSettings getDialogBoundsSettings() {
            String sectionName = String.valueOf(((Object)((Object)this)).getClass().getName()) + "_dialogBounds";
            IDialogSettings settings = TextEditorPlugin.getDefault().getDialogSettings();
            IDialogSettings section = settings.getSection(sectionName);
            if (section == null) {
                section = settings.addNewSection(sectionName);
            }
            return section;
        }

        protected int getDialogBoundsStrategy() {
            return 1;
        }
    }

    class NumberValidator
    implements IInputValidator {
        NumberValidator() {
        }

        public String isValid(String input) {
            if (input == null || input.length() == 0) {
                return " ";
            }
            try {
                int i = Integer.parseInt(input);
                if (i <= 0 || GotoLineAction.this.fLastLine < i) {
                    return GotoLineAction.this.fBundle.getString(String.valueOf(GotoLineAction.this.fPrefix) + "dialog.invalid_range");
                }
            }
            catch (NumberFormatException numberFormatException) {
                return GotoLineAction.this.fBundle.getString(String.valueOf(GotoLineAction.this.fPrefix) + "dialog.invalid_input");
            }
            return null;
        }
    }
}

