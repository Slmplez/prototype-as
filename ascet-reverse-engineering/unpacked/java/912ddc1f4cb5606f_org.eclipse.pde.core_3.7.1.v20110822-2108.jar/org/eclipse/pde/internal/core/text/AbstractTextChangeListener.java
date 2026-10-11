/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.TextUtilities
 */
package org.eclipse.pde.internal.core.text;

import java.util.HashMap;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.pde.internal.core.text.IModelTextChangeListener;

public abstract class AbstractTextChangeListener
implements IModelTextChangeListener {
    protected HashMap fOperationTable = new HashMap();
    protected IDocument fDocument;
    protected String fSep;

    public AbstractTextChangeListener(IDocument document) {
        this.fDocument = document;
        this.fSep = TextUtilities.getDefaultLineDelimiter((IDocument)this.fDocument);
    }
}

