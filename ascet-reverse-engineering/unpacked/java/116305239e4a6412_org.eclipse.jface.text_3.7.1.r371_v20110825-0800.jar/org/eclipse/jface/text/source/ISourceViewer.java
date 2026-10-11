/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.SourceViewerConfiguration;

public interface ISourceViewer
extends ITextViewer {
    public static final int CONTENTASSIST_PROPOSALS = 13;
    public static final int CONTENTASSIST_CONTEXT_INFORMATION = 14;
    public static final int FORMAT = 15;
    public static final int INFORMATION = 16;
    public static final int QUICK_ASSIST = 22;

    public void configure(SourceViewerConfiguration var1);

    public void setAnnotationHover(IAnnotationHover var1);

    public void setDocument(IDocument var1, IAnnotationModel var2);

    public void setDocument(IDocument var1, IAnnotationModel var2, int var3, int var4);

    public IAnnotationModel getAnnotationModel();

    public void setRangeIndicator(Annotation var1);

    public void setRangeIndication(int var1, int var2, boolean var3);

    public IRegion getRangeIndication();

    public void removeRangeIndication();

    public void showAnnotations(boolean var1);
}

