/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbenchPartReference;

public interface IViewReference
extends IWorkbenchPartReference {
    public String getSecondaryId();

    public IViewPart getView(boolean var1);

    public boolean isFastView();
}

