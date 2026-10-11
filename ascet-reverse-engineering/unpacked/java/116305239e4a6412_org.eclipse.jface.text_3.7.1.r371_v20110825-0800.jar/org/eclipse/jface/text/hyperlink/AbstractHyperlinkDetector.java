/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.jface.text.hyperlink;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetector;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetectorExtension;

public abstract class AbstractHyperlinkDetector
implements IHyperlinkDetector,
IHyperlinkDetectorExtension {
    private IAdaptable fContext;

    public final void setContext(IAdaptable context) throws IllegalStateException, IllegalArgumentException {
        Assert.isLegal((context != null ? 1 : 0) != 0);
        if (this.fContext != null) {
            throw new IllegalStateException();
        }
        this.fContext = context;
    }

    public void dispose() {
        this.fContext = null;
    }

    protected final Object getAdapter(Class adapterClass) {
        Assert.isLegal((adapterClass != null ? 1 : 0) != 0);
        if (this.fContext != null) {
            return this.fContext.getAdapter(adapterClass);
        }
        return null;
    }
}

