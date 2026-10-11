/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.AbstractInformationControlManager
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DefaultInformationControl
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IInformationControl
 *  org.eclipse.jface.text.IInformationControlCreator
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.text.information.IInformationProvider
 *  org.eclipse.jface.text.information.IInformationProviderExtension
 *  org.eclipse.jface.text.information.IInformationProviderExtension2
 *  org.eclipse.jface.text.information.InformationPresenter
 *  org.eclipse.jface.text.source.IAnnotationHover
 *  org.eclipse.jface.text.source.IAnnotationHoverExtension
 *  org.eclipse.jface.text.source.ILineRange
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.jface.text.source.SourceViewerConfiguration
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.texteditor;

import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DefaultInformationControl;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.information.IInformationProvider;
import org.eclipse.jface.text.information.IInformationProviderExtension;
import org.eclipse.jface.text.information.IInformationProviderExtension2;
import org.eclipse.jface.text.information.InformationPresenter;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationHoverExtension;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.SourceViewerConfiguration;
import org.eclipse.swt.widgets.Shell;

public class FocusedInformationPresenter
extends InformationPresenter {
    private final ISourceViewer fSourceViewer;
    private final SourceViewerConfiguration fSourceViewerConfiguration;

    public FocusedInformationPresenter(ISourceViewer sourceViewer, SourceViewerConfiguration sourceViewerConfiguration) {
        super((IInformationControlCreator)new DefaultInformationControlCreator());
        this.fSourceViewer = sourceViewer;
        this.fSourceViewerConfiguration = sourceViewerConfiguration;
        this.setSizeConstraints(100, 12, true, true);
        this.install((ITextViewer)sourceViewer);
        this.setDocumentPartitioning(sourceViewerConfiguration.getConfiguredDocumentPartitioning(sourceViewer));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean openFocusedAnnotationHover(IAnnotationHover annotationHover, int line) {
        try {
            Object hoverInfo;
            if (annotationHover instanceof IAnnotationHoverExtension) {
                IAnnotationHoverExtension extension = (IAnnotationHoverExtension)annotationHover;
                ILineRange hoverLineRange = extension.getHoverLineRange(this.fSourceViewer, line);
                if (hoverLineRange == null) {
                    return false;
                }
                hoverInfo = extension.getHoverInfo(this.fSourceViewer, hoverLineRange, Integer.MAX_VALUE);
            } else {
                hoverInfo = annotationHover.getHoverInfo(this.fSourceViewer, line);
            }
            IDocument document = this.fSourceViewer.getDocument();
            int offset = document.getLineOffset(line);
            String contentType = TextUtilities.getContentType((IDocument)document, (String)this.fSourceViewerConfiguration.getConfiguredDocumentPartitioning(this.fSourceViewer), (int)offset, (boolean)true);
            IInformationControlCreator controlCreator = null;
            if (annotationHover instanceof IInformationProviderExtension2) {
                controlCreator = ((IInformationProviderExtension2)annotationHover).getInformationPresenterControlCreator();
            } else if (annotationHover instanceof IAnnotationHoverExtension) {
                controlCreator = ((IAnnotationHoverExtension)annotationHover).getHoverControlCreator();
            }
            InformationProvider informationProvider = new InformationProvider((IRegion)new Region(offset, 0), hoverInfo, controlCreator);
            this.setOffset(offset);
            this.setAnchor(AbstractInformationControlManager.ANCHOR_RIGHT);
            this.setMargins(4, 0);
            this.setInformationProvider(informationProvider, contentType);
            this.showInformation();
            return true;
        }
        catch (BadLocationException badLocationException) {
            return false;
        }
    }

    private static class DefaultInformationControlCreator
    implements IInformationControlCreator {
        private DefaultInformationControlCreator() {
        }

        public IInformationControl createInformationControl(Shell shell) {
            return new DefaultInformationControl(shell, true);
        }
    }

    public static final class InformationProvider
    implements IInformationProvider,
    IInformationProviderExtension,
    IInformationProviderExtension2 {
        private IRegion fHoverRegion;
        private Object fHoverInfo;
        private IInformationControlCreator fControlCreator;

        public InformationProvider(IRegion hoverRegion, Object hoverInfo, IInformationControlCreator controlCreator) {
            this.fHoverRegion = hoverRegion;
            this.fHoverInfo = hoverInfo;
            this.fControlCreator = controlCreator;
        }

        public IRegion getSubject(ITextViewer textViewer, int invocationOffset) {
            return this.fHoverRegion;
        }

        public String getInformation(ITextViewer textViewer, IRegion subject) {
            return this.fHoverInfo == null ? null : this.fHoverInfo.toString();
        }

        public Object getInformation2(ITextViewer textViewer, IRegion subject) {
            return this.fHoverInfo;
        }

        public IInformationControlCreator getInformationPresenterControlCreator() {
            return this.fControlCreator;
        }
    }
}

