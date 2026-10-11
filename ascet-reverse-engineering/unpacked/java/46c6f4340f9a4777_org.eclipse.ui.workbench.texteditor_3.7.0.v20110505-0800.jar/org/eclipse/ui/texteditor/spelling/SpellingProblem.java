/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.contentassist.ICompletionProposal
 *  org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.ui.IEditorInput
 */
package org.eclipse.ui.texteditor.spelling;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.quickassist.IQuickAssistInvocationContext;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.ITextEditor;

public abstract class SpellingProblem {
    public static void removeAllInActiveEditor(ITextEditor editor, String word) {
        if (editor == null) {
            return;
        }
        IDocumentProvider documentProvider = editor.getDocumentProvider();
        if (documentProvider == null) {
            return;
        }
        IEditorInput editorInput = editor.getEditorInput();
        if (editorInput == null) {
            return;
        }
        IAnnotationModel model = documentProvider.getAnnotationModel(editorInput);
        if (model == null) {
            return;
        }
        IDocument document = documentProvider.getDocument(editorInput);
        if (document == null) {
            return;
        }
        boolean supportsBatchReplace = model instanceof IAnnotationModelExtension;
        ArrayList<Annotation> toBeRemovedAnnotations = new ArrayList<Annotation>();
        Iterator iter = model.getAnnotationIterator();
        while (iter.hasNext()) {
            boolean doRemove;
            Annotation annotation = (Annotation)iter.next();
            if (!"org.eclipse.ui.workbench.texteditor.spelling".equals(annotation.getType())) continue;
            boolean bl = doRemove = word == null;
            if (word == null) {
                doRemove = true;
            } else {
                String annotationWord = null;
                Position pos = model.getPosition(annotation);
                try {
                    annotationWord = document.get(pos.getOffset(), pos.getLength());
                }
                catch (BadLocationException badLocationException) {
                    continue;
                }
                doRemove = word.equals(annotationWord);
            }
            if (!doRemove) continue;
            if (supportsBatchReplace) {
                toBeRemovedAnnotations.add(annotation);
                continue;
            }
            model.removeAnnotation(annotation);
        }
        if (supportsBatchReplace && !toBeRemovedAnnotations.isEmpty()) {
            Annotation[] annotationArray = toBeRemovedAnnotations.toArray(new Annotation[toBeRemovedAnnotations.size()]);
            ((IAnnotationModelExtension)model).replaceAnnotations(annotationArray, null);
        }
    }

    public static void removeAll(ISourceViewer sourceViewer, String word) {
        Assert.isNotNull((Object)sourceViewer);
        IAnnotationModel model = sourceViewer.getAnnotationModel();
        if (model == null) {
            return;
        }
        IDocument document = sourceViewer.getDocument();
        if (document == null) {
            return;
        }
        boolean supportsBatchReplace = model instanceof IAnnotationModelExtension;
        ArrayList<Annotation> toBeRemovedAnnotations = new ArrayList<Annotation>();
        Iterator iter = model.getAnnotationIterator();
        while (iter.hasNext()) {
            boolean doRemove;
            Annotation annotation = (Annotation)iter.next();
            if (!"org.eclipse.ui.workbench.texteditor.spelling".equals(annotation.getType())) continue;
            boolean bl = doRemove = word == null;
            if (word == null) {
                doRemove = true;
            } else {
                String annotationWord = null;
                Position pos = model.getPosition(annotation);
                try {
                    annotationWord = document.get(pos.getOffset(), pos.getLength());
                }
                catch (BadLocationException badLocationException) {
                    continue;
                }
                doRemove = word.equals(annotationWord);
            }
            if (!doRemove) continue;
            if (supportsBatchReplace) {
                toBeRemovedAnnotations.add(annotation);
                continue;
            }
            model.removeAnnotation(annotation);
        }
        if (supportsBatchReplace && !toBeRemovedAnnotations.isEmpty()) {
            Annotation[] annotationArray = toBeRemovedAnnotations.toArray(new Annotation[toBeRemovedAnnotations.size()]);
            ((IAnnotationModelExtension)model).replaceAnnotations(annotationArray, null);
        }
    }

    public abstract int getOffset();

    public abstract int getLength();

    public abstract String getMessage();

    public abstract ICompletionProposal[] getProposals();

    public ICompletionProposal[] getProposals(IQuickAssistInvocationContext context) {
        return this.getProposals();
    }
}

