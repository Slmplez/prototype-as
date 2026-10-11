/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.jface.internal.text;

import org.eclipse.jface.internal.text.InformationControlReplacer;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.ITextViewerExtension8;
import org.eclipse.swt.graphics.Rectangle;

public abstract class InternalAccessor {
    public abstract IInformationControl getCurrentInformationControl();

    public abstract void setInformationControlReplacer(InformationControlReplacer var1);

    public abstract InformationControlReplacer getInformationControlReplacer();

    public abstract boolean canReplace(IInformationControl var1);

    public abstract boolean isReplaceInProgress();

    public abstract void cropToClosestMonitor(Rectangle var1);

    public abstract void setHoverEnrichMode(ITextViewerExtension8.EnrichMode var1);

    public abstract boolean getAllowMouseExit();

    public abstract void replaceInformationControl(boolean var1);
}

