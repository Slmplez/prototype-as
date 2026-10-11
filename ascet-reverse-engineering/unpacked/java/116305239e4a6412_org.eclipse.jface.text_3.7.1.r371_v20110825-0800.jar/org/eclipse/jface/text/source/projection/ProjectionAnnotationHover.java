/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.text.source.projection;

import java.util.Iterator;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.information.IInformationProviderExtension2;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationHoverExtension;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.ISourceViewerExtension2;
import org.eclipse.jface.text.source.LineRange;
import org.eclipse.jface.text.source.projection.IProjectionPosition;
import org.eclipse.jface.text.source.projection.ProjectionAnnotation;
import org.eclipse.jface.text.source.projection.ProjectionSupport;
import org.eclipse.jface.text.source.projection.SourceViewerInformationControl;
import org.eclipse.swt.widgets.Shell;

class ProjectionAnnotationHover
implements IAnnotationHover,
IAnnotationHoverExtension,
IInformationProviderExtension2 {
    private IInformationControlCreator fInformationControlCreator;
    private IInformationControlCreator fInformationPresenterControlCreator;

    ProjectionAnnotationHover() {
    }

    public void setHoverControlCreator(IInformationControlCreator creator) {
        this.fInformationControlCreator = creator;
    }

    public void setInformationPresenterControlCreator(IInformationControlCreator creator) {
        this.fInformationPresenterControlCreator = creator;
    }

    public String getHoverInfo(ISourceViewer sourceViewer, int lineNumber) {
        return null;
    }

    private boolean isCaptionLine(Position position, IDocument document, int line) {
        if (position.getOffset() > -1 && position.getLength() > -1) {
            try {
                int captionOffset = position instanceof IProjectionPosition ? ((IProjectionPosition)position).computeCaptionOffset(document) : 0;
                int startLine = document.getLineOfOffset(position.getOffset() + captionOffset);
                return line == startLine;
            }
            catch (BadLocationException badLocationException) {}
        }
        return false;
    }

    private String getProjectionTextAtLine(ISourceViewer viewer, int line, int numberOfLines) {
        ISourceViewerExtension2 viewerExtension;
        IAnnotationModel visual;
        IAnnotationModel model = null;
        if (viewer instanceof ISourceViewerExtension2 && (visual = (viewerExtension = (ISourceViewerExtension2)((Object)viewer)).getVisualAnnotationModel()) instanceof IAnnotationModelExtension) {
            IAnnotationModelExtension modelExtension = (IAnnotationModelExtension)visual;
            model = modelExtension.getAnnotationModel(ProjectionSupport.PROJECTION);
        }
        if (model != null) {
            try {
                IDocument document = viewer.getDocument();
                Iterator e = model.getAnnotationIterator();
                while (e.hasNext()) {
                    Position position;
                    ProjectionAnnotation annotation = (ProjectionAnnotation)e.next();
                    if (!annotation.isCollapsed() || (position = model.getPosition((Annotation)annotation)) == null || !this.isCaptionLine(position, document, line)) continue;
                    return this.getText(document, position.getOffset(), position.getLength(), numberOfLines);
                }
            }
            catch (BadLocationException badLocationException) {}
        }
        return null;
    }

    private String getText(IDocument document, int offset, int length, int numberOfLines) throws BadLocationException {
        int endOffset = offset + length;
        try {
            int endLine = document.getLineOfOffset(offset) + Math.max(0, numberOfLines - 1);
            IRegion lineInfo = document.getLineInformation(endLine);
            endOffset = Math.min(endOffset, lineInfo.getOffset() + lineInfo.getLength());
        }
        catch (BadLocationException badLocationException) {}
        return document.get(offset, endOffset - offset);
    }

    public Object getHoverInfo(ISourceViewer sourceViewer, ILineRange lineRange, int visibleLines) {
        return this.getProjectionTextAtLine(sourceViewer, lineRange.getStartLine(), visibleLines);
    }

    public ILineRange getHoverLineRange(ISourceViewer viewer, int lineNumber) {
        return new LineRange(lineNumber, 1);
    }

    public boolean canHandleMouseCursor() {
        return false;
    }

    public IInformationControlCreator getHoverControlCreator() {
        if (this.fInformationControlCreator == null) {
            this.fInformationControlCreator = new IInformationControlCreator(){

                public IInformationControl createInformationControl(Shell parent) {
                    return new SourceViewerInformationControl(parent, false, "org.eclipse.jface.textfont", null);
                }
            };
        }
        return this.fInformationControlCreator;
    }

    public IInformationControlCreator getInformationPresenterControlCreator() {
        if (this.fInformationPresenterControlCreator == null) {
            this.fInformationPresenterControlCreator = new IInformationControlCreator(){

                public IInformationControl createInformationControl(Shell parent) {
                    return new SourceViewerInformationControl(parent, true, "org.eclipse.jface.textfont", null);
                }
            };
        }
        return this.fInformationPresenterControlCreator;
    }
}

