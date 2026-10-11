/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.ISourceViewer;

public interface IAnnotationHoverExtension {
    public IInformationControlCreator getHoverControlCreator();

    public boolean canHandleMouseCursor();

    public Object getHoverInfo(ISourceViewer var1, ILineRange var2, int var3);

    public ILineRange getHoverLineRange(ISourceViewer var1, int var2);
}

