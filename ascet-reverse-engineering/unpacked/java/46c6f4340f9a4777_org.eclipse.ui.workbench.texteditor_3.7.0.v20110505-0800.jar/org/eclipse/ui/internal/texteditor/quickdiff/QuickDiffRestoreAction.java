/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRewriteTarget
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.jface.text.source.ILineDiffer
 *  org.eclipse.jface.text.source.IVerticalRulerInfo
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.ui.IEditorInput
 */
package org.eclipse.ui.internal.texteditor.quickdiff;

import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.ILineDiffer;
import org.eclipse.jface.text.source.IVerticalRulerInfo;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffMessages;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.IEditorStatusLine;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public abstract class QuickDiffRestoreAction
extends TextEditorAction
implements ISelectionChangedListener {
    private int fLastLine = -1;
    private final boolean fIsRulerAction;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    QuickDiffRestoreAction(String prefix, ITextEditor editor, boolean isRulerAction) {
        super(QuickDiffMessages.getBundleForConstructedKeys(), prefix, editor);
        this.fIsRulerAction = isRulerAction;
        ISelectionProvider selectionProvider = editor.getSelectionProvider();
        if (selectionProvider instanceof IPostSelectionProvider) {
            ((IPostSelectionProvider)selectionProvider).addPostSelectionChangedListener((ISelectionChangedListener)this);
        }
    }

    protected abstract void runCompoundChange();

    public void run() {
        IRewriteTarget target;
        ITextEditor editor = this.getTextEditor();
        if (editor == null || !this.validateEditorInputState()) {
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
            target.beginCompoundChange();
        }
        this.runCompoundChange();
        if (target != null) {
            target.endCompoundChange();
        }
    }

    public void update() {
        super.update();
        this.setEnabled(this.computeEnablement());
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.update();
    }

    protected boolean computeEnablement() {
        if (!super.isEnabled()) {
            return false;
        }
        if (!this.canModifyEditor()) {
            return false;
        }
        this.fLastLine = this.computeLine(this.fIsRulerAction);
        return true;
    }

    protected ITextSelection getSelection() {
        if (this.getTextEditor() == null) {
            return null;
        }
        ISelectionProvider sp = this.getTextEditor().getSelectionProvider();
        if (sp == null) {
            return null;
        }
        ISelection s = sp.getSelection();
        if (s instanceof ITextSelection) {
            return (ITextSelection)s;
        }
        return null;
    }

    protected int getLastLine() {
        return this.fLastLine;
    }

    private int computeLine(boolean useRulerInfo) {
        ITextSelection selection;
        IVerticalRulerInfo ruler;
        int lastLine = useRulerInfo ? ((ruler = this.getRuler()) == null ? -1 : ruler.getLineOfLastMouseButtonActivity()) : ((selection = this.getSelection()) == null ? -1 : selection.getEndLine());
        return lastLine;
    }

    private IAnnotationModelExtension getModel() {
        IEditorInput editorInput;
        if (this.getTextEditor() == null) {
            return null;
        }
        IDocumentProvider provider = this.getTextEditor().getDocumentProvider();
        IAnnotationModel m = provider.getAnnotationModel(editorInput = this.getTextEditor().getEditorInput());
        if (m instanceof IAnnotationModelExtension) {
            return (IAnnotationModelExtension)m;
        }
        return null;
    }

    protected ILineDiffer getDiffer() {
        IAnnotationModelExtension extension = this.getModel();
        if (extension != null) {
            return (ILineDiffer)extension.getAnnotationModel((Object)"diff");
        }
        return null;
    }

    protected IVerticalRulerInfo getRuler() {
        if (this.getTextEditor() != null) {
            ITextEditor iTextEditor = this.getTextEditor();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.jface.text.source.IVerticalRulerInfo");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return (IVerticalRulerInfo)iTextEditor.getAdapter(clazz);
        }
        return null;
    }

    protected void setStatus(String string) {
        if (this.getTextEditor() != null) {
            IEditorStatusLine statusLine;
            ITextEditor iTextEditor = this.getTextEditor();
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.ui.texteditor.IEditorStatusLine");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((statusLine = (IEditorStatusLine)iTextEditor.getAdapter(clazz)) != null) {
                statusLine.setMessage(true, string, null);
            }
        }
    }
}

