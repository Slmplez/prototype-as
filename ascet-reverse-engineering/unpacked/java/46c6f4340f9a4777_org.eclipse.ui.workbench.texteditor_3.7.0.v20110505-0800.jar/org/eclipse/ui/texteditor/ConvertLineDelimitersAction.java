/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.jface.dialogs.ProgressMonitorDialog
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.IRewriteTarget
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.texteditor;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jface.dialogs.ProgressMonitorDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class ConvertLineDelimitersAction
extends TextEditorAction {
    private final String fLineDelimiter;
    static /* synthetic */ Class class$0;

    public ConvertLineDelimitersAction(ITextEditor editor, String lineDelimiter) {
        this(EditorMessages.getBundleForConstructedKeys(), "dummy", editor, lineDelimiter);
    }

    public ConvertLineDelimitersAction(ResourceBundle bundle, String prefix, ITextEditor editor, String lineDelimiter) {
        super(bundle, prefix, editor);
        this.fLineDelimiter = lineDelimiter;
        String platformLineDelimiter = System.getProperty("line.separator");
        this.setText(ConvertLineDelimitersAction.getString(ConvertLineDelimitersAction.getLabelKey(this.fLineDelimiter, platformLineDelimiter)));
        this.update();
    }

    public void run() {
        try {
            IRewriteTarget target;
            IDocument document;
            Object adapter;
            ITextEditor editor = this.getTextEditor();
            if (editor == null) {
                return;
            }
            if (!this.validateEditorInputState()) {
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
            if ((adapter = editor.getAdapter(clazz)) instanceof IRewriteTarget && (document = (target = (IRewriteTarget)adapter).getDocument()) != null) {
                Shell shell = this.getTextEditor().getSite().getShell();
                ConvertRunnable runnable = new ConvertRunnable(target, this.fLineDelimiter);
                if (document.getNumberOfLines() < 40) {
                    BusyIndicator.showWhile((Display)shell.getDisplay(), (Runnable)runnable);
                } else {
                    ProgressMonitorDialog dialog = new ProgressMonitorDialog(shell);
                    dialog.run(false, true, (IRunnableWithProgress)runnable);
                }
            }
        }
        catch (InterruptedException interruptedException) {
        }
        catch (InvocationTargetException invocationTargetException) {}
    }

    private static String getLabelKey(String lineDelimiter, String platformLineDelimiter) {
        if (lineDelimiter.equals(platformLineDelimiter)) {
            if (lineDelimiter.equals("\r\n")) {
                return "Editor.ConvertLineDelimiter.toWindows.default.label";
            }
            if (lineDelimiter.equals("\n")) {
                return "Editor.ConvertLineDelimiter.toUNIX.default.label";
            }
            if (lineDelimiter.equals("\r")) {
                return "Editor.ConvertLineDelimiter.toMac.default.label";
            }
        } else {
            if (lineDelimiter.equals("\r\n")) {
                return "Editor.ConvertLineDelimiter.toWindows.label";
            }
            if (lineDelimiter.equals("\n")) {
                return "Editor.ConvertLineDelimiter.toUNIX.label";
            }
            if (lineDelimiter.equals("\r")) {
                return "Editor.ConvertLineDelimiter.toMac.label";
            }
        }
        return null;
    }

    private static String getString(String key) {
        try {
            return EditorMessages.getBundleForConstructedKeys().getString(key);
        }
        catch (MissingResourceException missingResourceException) {
            return "!" + key + "!";
        }
    }

    public void update() {
        super.update();
        this.setEnabled(this.canModifyEditor());
    }

    private static class ConvertRunnable
    implements IRunnableWithProgress,
    Runnable {
        private final IRewriteTarget fRewriteTarget;
        private final String fLineDelimiter;

        public ConvertRunnable(IRewriteTarget rewriteTarget, String lineDelimiter) {
            this.fRewriteTarget = rewriteTarget;
            this.fLineDelimiter = lineDelimiter;
        }

        public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
            boolean isLargeUpdate;
            IDocument document = this.fRewriteTarget.getDocument();
            int lineCount = document.getNumberOfLines();
            monitor.beginTask(EditorMessages.Editor_ConvertLineDelimiter_title, lineCount);
            boolean bl = isLargeUpdate = lineCount > 50;
            if (isLargeUpdate) {
                this.fRewriteTarget.setRedraw(false);
            }
            this.fRewriteTarget.beginCompoundChange();
            Map partitioners = TextUtilities.removeDocumentPartitioners((IDocument)document);
            try {
                try {
                    int i = 0;
                    while (i < lineCount) {
                        if (monitor.isCanceled()) {
                            throw new InterruptedException();
                        }
                        String delimiter = document.getLineDelimiter(i);
                        if (delimiter != null && delimiter.length() > 0 && !delimiter.equals(this.fLineDelimiter)) {
                            IRegion region = document.getLineInformation(i);
                            document.replace(region.getOffset() + region.getLength(), delimiter.length(), this.fLineDelimiter);
                        }
                        monitor.worked(1);
                        ++i;
                    }
                }
                catch (BadLocationException e) {
                    throw new InvocationTargetException(e);
                }
            }
            finally {
                if (partitioners != null) {
                    TextUtilities.addDocumentPartitioners((IDocument)document, (Map)partitioners);
                }
                this.fRewriteTarget.endCompoundChange();
                if (isLargeUpdate) {
                    this.fRewriteTarget.setRedraw(true);
                }
                monitor.done();
            }
        }

        public void run() {
            try {
                this.run((IProgressMonitor)new NullProgressMonitor());
            }
            catch (InterruptedException interruptedException) {
            }
            catch (InvocationTargetException invocationTargetException) {}
        }
    }
}

