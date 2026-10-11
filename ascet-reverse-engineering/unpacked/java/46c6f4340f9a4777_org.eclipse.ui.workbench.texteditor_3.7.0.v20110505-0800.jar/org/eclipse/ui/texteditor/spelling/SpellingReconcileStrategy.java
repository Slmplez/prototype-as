/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ISynchronizable
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.reconciler.DirtyRegion
 *  org.eclipse.jface.text.reconciler.IReconcilingStrategy
 *  org.eclipse.jface.text.reconciler.IReconcilingStrategyExtension
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.jface.text.source.ISourceViewer
 */
package org.eclipse.ui.texteditor.spelling;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ISynchronizable;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.reconciler.DirtyRegion;
import org.eclipse.jface.text.reconciler.IReconcilingStrategy;
import org.eclipse.jface.text.reconciler.IReconcilingStrategyExtension;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.ui.texteditor.spelling.ISpellingProblemCollector;
import org.eclipse.ui.texteditor.spelling.SpellingAnnotation;
import org.eclipse.ui.texteditor.spelling.SpellingContext;
import org.eclipse.ui.texteditor.spelling.SpellingProblem;
import org.eclipse.ui.texteditor.spelling.SpellingService;

public class SpellingReconcileStrategy
implements IReconcilingStrategy,
IReconcilingStrategyExtension {
    private static final IContentType TEXT_CONTENT_TYPE = Platform.getContentTypeManager().getContentType("org.eclipse.core.runtime.text");
    private ISourceViewer fViewer;
    private IDocument fDocument;
    private IProgressMonitor fProgressMonitor;
    private SpellingService fSpellingService;
    private ISpellingProblemCollector fSpellingProblemCollector;
    private SpellingContext fSpellingContext;
    private IRegion[] fRegions = new IRegion[1];

    public SpellingReconcileStrategy(ISourceViewer viewer, SpellingService spellingService) {
        Assert.isNotNull((Object)viewer);
        Assert.isNotNull((Object)spellingService);
        this.fViewer = viewer;
        this.fSpellingService = spellingService;
        this.fSpellingContext = new SpellingContext();
        this.fSpellingContext.setContentType(this.getContentType());
    }

    public void initialReconcile() {
        this.reconcile((IRegion)new Region(0, this.fDocument.getLength()));
    }

    public void reconcile(DirtyRegion dirtyRegion, IRegion subRegion) {
        try {
            IRegion startLineInfo = this.fDocument.getLineInformationOfOffset(subRegion.getOffset());
            IRegion endLineInfo = this.fDocument.getLineInformationOfOffset(subRegion.getOffset() + Math.max(0, subRegion.getLength() - 1));
            subRegion = startLineInfo.getOffset() == endLineInfo.getOffset() ? startLineInfo : new Region(startLineInfo.getOffset(), endLineInfo.getOffset() + Math.max(0, endLineInfo.getLength() - 1) - startLineInfo.getOffset());
        }
        catch (BadLocationException badLocationException) {
            subRegion = new Region(0, this.fDocument.getLength());
        }
        this.reconcile((IRegion)subRegion);
    }

    public void reconcile(IRegion region) {
        if (this.getAnnotationModel() == null || this.fSpellingProblemCollector == null) {
            return;
        }
        this.fRegions[0] = region;
        this.fSpellingService.check(this.fDocument, this.fRegions, this.fSpellingContext, this.fSpellingProblemCollector, this.fProgressMonitor);
    }

    protected IContentType getContentType() {
        return TEXT_CONTENT_TYPE;
    }

    protected final IDocument getDocument() {
        return this.fDocument;
    }

    public void setDocument(IDocument document) {
        this.fDocument = document;
        this.fSpellingProblemCollector = this.createSpellingProblemCollector();
    }

    protected ISpellingProblemCollector createSpellingProblemCollector() {
        IAnnotationModel model = this.getAnnotationModel();
        if (model == null) {
            return null;
        }
        return new SpellingProblemCollector(model);
    }

    public final void setProgressMonitor(IProgressMonitor monitor) {
        this.fProgressMonitor = monitor;
    }

    protected IAnnotationModel getAnnotationModel() {
        return this.fViewer.getAnnotationModel();
    }

    private class SpellingProblemCollector
    implements ISpellingProblemCollector {
        private IAnnotationModel fAnnotationModel;
        private Map fAddAnnotations;
        private Object fLockObject;

        public SpellingProblemCollector(IAnnotationModel annotationModel) {
            Assert.isLegal((annotationModel != null ? 1 : 0) != 0);
            this.fAnnotationModel = annotationModel;
            this.fLockObject = this.fAnnotationModel instanceof ISynchronizable ? ((ISynchronizable)this.fAnnotationModel).getLockObject() : this.fAnnotationModel;
        }

        public void accept(SpellingProblem problem) {
            this.fAddAnnotations.put(new SpellingAnnotation(problem), new Position(problem.getOffset(), problem.getLength()));
        }

        public void beginCollecting() {
            this.fAddAnnotations = new HashMap();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void endCollecting() {
            ArrayList<Annotation> toRemove = new ArrayList<Annotation>();
            Object object = this.fLockObject;
            synchronized (object) {
                Iterator iter = this.fAnnotationModel.getAnnotationIterator();
                while (iter.hasNext()) {
                    Annotation annotation = (Annotation)iter.next();
                    if (!"org.eclipse.ui.workbench.texteditor.spelling".equals(annotation.getType())) continue;
                    toRemove.add(annotation);
                }
                Annotation[] annotationsToRemove = toRemove.toArray(new Annotation[toRemove.size()]);
                if (this.fAnnotationModel instanceof IAnnotationModelExtension) {
                    ((IAnnotationModelExtension)this.fAnnotationModel).replaceAnnotations(annotationsToRemove, this.fAddAnnotations);
                } else {
                    int i = 0;
                    while (i < annotationsToRemove.length) {
                        this.fAnnotationModel.removeAnnotation(annotationsToRemove[i]);
                        ++i;
                    }
                    iter = this.fAddAnnotations.keySet().iterator();
                    while (iter.hasNext()) {
                        Annotation annotation = (Annotation)iter.next();
                        this.fAnnotationModel.addAnnotation(annotation, (Position)this.fAddAnnotations.get(annotation));
                    }
                }
            }
            this.fAddAnnotations = null;
        }
    }
}

