/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.jface.dialogs.IInputValidator
 *  org.eclipse.jface.dialogs.InputDialog
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.console.actions;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.jface.dialogs.IInputValidator;
import org.eclipse.jface.dialogs.InputDialog;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.actions.TextViewerAction;
import org.eclipse.ui.internal.console.ConsoleMessages;

public class TextViewerGotoLineAction
extends TextViewerAction {
    protected int fLastLine;
    protected ITextViewer fTextViewer;

    public TextViewerGotoLineAction(ITextViewer viewer) {
        super(viewer, -1);
        this.fTextViewer = viewer;
        this.setText(ConsoleMessages.TextViewerGotoLineAction_Go_to__Line____Ctrl_L_4);
        this.setToolTipText(ConsoleMessages.TextViewerGotoLineAction_Go_To_Line_1);
        this.setDescription(ConsoleMessages.TextViewerGotoLineAction_Go_To_Line_1);
    }

    public void update() {
    }

    protected void gotoLine(int line) {
        IDocument document = this.fTextViewer.getDocument();
        try {
            int start = document.getLineOffset(line);
            int length = document.getLineLength(line);
            this.fTextViewer.getTextWidget().setSelection(start, start + length);
            this.fTextViewer.revealRange(start, length);
        }
        catch (BadLocationException x) {
            ConsolePlugin.errorDialog(this.fTextViewer.getTextWidget().getShell(), ConsoleMessages.TextViewerGotoLineAction_Go_To_Line_1, ConsoleMessages.TextViewerGotoLineAction_Exceptions_occurred_attempt_to_go_to_line_2, x);
        }
    }

    public void run() {
        try {
            Point selection = this.fTextViewer.getTextWidget().getSelection();
            IDocument document = this.fTextViewer.getDocument();
            this.fLastLine = document.getLineOfOffset(document.getLength()) + 1;
            int startLine = selection == null ? 1 : this.fTextViewer.getTextWidget().getLineAtOffset(selection.x) + 1;
            String title = ConsoleMessages.TextViewerGotoLineAction_Go_To_Line_1;
            String message = MessageFormat.format((String)ConsoleMessages.TextViewerGotoLineAction_Enter_line_number__8, (Object[])new Object[]{new Integer(this.fLastLine)});
            String value = Integer.toString(startLine);
            Shell activeShell = this.fTextViewer.getTextWidget().getShell();
            InputDialog d = new InputDialog(activeShell, title, message, value, (IInputValidator)new NumberValidator());
            if (d.open() == 0) {
                try {
                    int line = Integer.parseInt(d.getValue());
                    this.gotoLine(line - 1);
                }
                catch (NumberFormatException x) {
                    ConsolePlugin.errorDialog(activeShell, ConsoleMessages.TextViewerGotoLineAction_Go_To_Line_1, ConsoleMessages.TextViewerGotoLineAction_Exceptions_occurred_attempt_to_go_to_line_2, x);
                }
            }
        }
        catch (BadLocationException x) {
            ConsolePlugin.errorDialog(this.fTextViewer.getTextWidget().getShell(), ConsoleMessages.TextViewerGotoLineAction_Go_To_Line_1, ConsoleMessages.TextViewerGotoLineAction_Exceptions_occurred_attempt_to_go_to_line_2, x);
            return;
        }
    }

    class NumberValidator
    implements IInputValidator {
        NumberValidator() {
        }

        public String isValid(String input) {
            try {
                int i = Integer.parseInt(input);
                if (i <= 0 || TextViewerGotoLineAction.this.fLastLine < i) {
                    return ConsoleMessages.TextViewerGotoLineAction_Line_number_out_of_range_1;
                }
            }
            catch (NumberFormatException numberFormatException) {
                return ConsoleMessages.TextViewerGotoLineAction_Not_a_number_2;
            }
            return null;
        }
    }
}

