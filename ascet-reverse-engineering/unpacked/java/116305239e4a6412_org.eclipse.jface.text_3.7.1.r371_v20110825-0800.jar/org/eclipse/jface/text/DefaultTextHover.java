/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.jface.text;

import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextHover;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.ISourceViewerExtension2;

public class DefaultTextHover
implements ITextHover {
    private ISourceViewer fSourceViewer;

    public DefaultTextHover(ISourceViewer sourceViewer) {
        Assert.isNotNull((Object)sourceViewer);
        this.fSourceViewer = sourceViewer;
    }

    public String getHoverInfo(ITextViewer textViewer, IRegion hoverRegion) {
        IAnnotationModel model = this.getAnnotationModel(this.fSourceViewer);
        if (model == null) {
            return null;
        }
        Iterator e = model.getAnnotationIterator();
        while (e.hasNext()) {
            String msg;
            Position p;
            Annotation a = (Annotation)e.next();
            if (!this.isIncluded(a) || (p = model.getPosition(a)) == null || !p.overlapsWith(hoverRegion.getOffset(), hoverRegion.getLength()) || (msg = a.getText()) == null || msg.trim().length() <= 0) continue;
            return msg;
        }
        return null;
    }

    public IRegion getHoverRegion(ITextViewer textViewer, int offset) {
        return this.findWord(textViewer.getDocument(), offset);
    }

    protected boolean isIncluded(Annotation annotation) {
        return true;
    }

    private IAnnotationModel getAnnotationModel(ISourceViewer viewer) {
        if (viewer instanceof ISourceViewerExtension2) {
            ISourceViewerExtension2 extension = (ISourceViewerExtension2)((Object)viewer);
            return extension.getVisualAnnotationModel();
        }
        return viewer.getAnnotationModel();
    }

    private IRegion findWord(IDocument document, int offset) {
        int start = -2;
        int end = -1;
        try {
            char c;
            int pos = offset;
            while (pos >= 0) {
                c = document.getChar(pos);
                if (!Character.isUnicodeIdentifierPart(c)) break;
                --pos;
            }
            start = pos;
            pos = offset;
            int length = document.getLength();
            while (pos < length) {
                c = document.getChar(pos);
                if (!Character.isUnicodeIdentifierPart(c)) break;
                ++pos;
            }
            end = pos;
        }
        catch (BadLocationException badLocationException) {}
        if (start >= -1 && end > -1) {
            if (start == offset && end == offset) {
                return new Region(offset, 0);
            }
            if (start == offset) {
                return new Region(start, end - start);
            }
            return new Region(start + 1, end - start - 1);
        }
        return null;
    }
}

