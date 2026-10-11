/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.action;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.swt.graphics.Image;

public interface IStatusLineManager
extends IContributionManager {
    public IProgressMonitor getProgressMonitor();

    public boolean isCancelEnabled();

    public void setCancelEnabled(boolean var1);

    public void setErrorMessage(String var1);

    public void setErrorMessage(Image var1, String var2);

    public void setMessage(String var1);

    public void setMessage(Image var1, String var2);
}

