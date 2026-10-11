/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.ui.IEditorInput
 */
package org.eclipse.ui.internal.texteditor.quickdiff;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.internal.texteditor.quickdiff.DocumentLineDiffer;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.ITextEditorExtension3;
import org.eclipse.ui.texteditor.IUpdate;
import org.eclipse.ui.texteditor.quickdiff.IQuickDiffReferenceProvider;
import org.eclipse.ui.texteditor.quickdiff.ReferenceProviderDescriptor;

public class ReferenceSelectionAction
extends Action
implements IUpdate {
    private ITextEditor fEditor = null;
    private final ReferenceProviderDescriptor fDescriptor;
    private IQuickDiffReferenceProvider fProvider;

    public ReferenceSelectionAction(ReferenceProviderDescriptor descriptor, ITextEditor editor) {
        super("", 8);
        this.setChecked(false);
        this.setEnabled(true);
        Assert.isLegal((descriptor != null ? 1 : 0) != 0);
        this.fDescriptor = descriptor;
        this.fEditor = editor;
        this.update();
    }

    private IQuickDiffReferenceProvider getProvider() {
        if (this.fProvider == null) {
            this.fProvider = this.fDescriptor.createProvider();
        }
        return this.fProvider;
    }

    public void run() {
        DocumentLineDiffer differ = this.getDiffer(true);
        if (differ == null) {
            return;
        }
        if (this.fEditor instanceof ITextEditorExtension3) {
            ITextEditorExtension3 extension = (ITextEditorExtension3)((Object)this.fEditor);
            IQuickDiffReferenceProvider provider = this.getProvider();
            if (provider != null) {
                provider.setActiveEditor(this.fEditor);
                if (provider.isEnabled()) {
                    differ.setReferenceProvider(provider);
                    extension.showChangeInformation(true);
                    this.setEnabled(true);
                } else {
                    this.setEnabled(false);
                }
            }
        }
    }

    public void update() {
        IQuickDiffReferenceProvider provider;
        this.setText(this.fDescriptor.getLabel());
        DocumentLineDiffer differ = this.getDiffer(false);
        this.setChecked(false);
        if (differ != null && (provider = differ.getReferenceProvider()) != null && provider.getId().equals(this.fDescriptor.getId())) {
            this.setChecked(true);
        }
        if (this.fDescriptor.isPluginLoaded()) {
            this.getProvider();
            if (this.fProvider == null) {
                this.setEnabled(false);
            } else {
                this.fProvider.setActiveEditor(this.fEditor);
                this.setEnabled(this.fProvider.isEnabled());
            }
        } else {
            this.setEnabled(true);
        }
    }

    private DocumentLineDiffer getDiffer(boolean createIfNeeded) {
        if (this.fEditor == null) {
            return null;
        }
        IDocumentProvider provider = this.fEditor.getDocumentProvider();
        IEditorInput editorInput = this.fEditor.getEditorInput();
        if (provider == null || editorInput == null) {
            return null;
        }
        IAnnotationModel m = provider.getAnnotationModel(editorInput);
        IAnnotationModelExtension model = null;
        if (!(m instanceof IAnnotationModelExtension)) {
            return null;
        }
        model = (IAnnotationModelExtension)m;
        DocumentLineDiffer differ = (DocumentLineDiffer)model.getAnnotationModel((Object)"diff");
        if (differ == null && createIfNeeded) {
            differ = new DocumentLineDiffer();
            model.addAnnotationModel((Object)"diff", (IAnnotationModel)differ);
        }
        return differ;
    }
}

