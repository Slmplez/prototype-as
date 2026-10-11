/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.action;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.SubContributionManager;
import org.eclipse.swt.graphics.Image;

public class SubStatusLineManager
extends SubContributionManager
implements IStatusLineManager {
    private String message;
    private String errorMessage;
    private Image messageImage;
    private Image errorImage;

    public SubStatusLineManager(IStatusLineManager mgr) {
        super(mgr);
    }

    protected final IStatusLineManager getParentStatusLineManager() {
        return (IStatusLineManager)this.getParent();
    }

    public IProgressMonitor getProgressMonitor() {
        return this.getParentStatusLineManager().getProgressMonitor();
    }

    public boolean isCancelEnabled() {
        return this.getParentStatusLineManager().isCancelEnabled();
    }

    public void setCancelEnabled(boolean enabled) {
        this.getParentStatusLineManager().setCancelEnabled(enabled);
    }

    public void setErrorMessage(String message) {
        this.errorImage = null;
        this.errorMessage = message;
        if (this.isVisible()) {
            this.getParentStatusLineManager().setErrorMessage(this.errorMessage);
        }
    }

    public void setErrorMessage(Image image, String message) {
        this.errorImage = image;
        this.errorMessage = message;
        if (this.isVisible()) {
            this.getParentStatusLineManager().setErrorMessage(this.errorImage, this.errorMessage);
        }
    }

    public void setMessage(String message) {
        this.messageImage = null;
        this.message = message;
        if (this.isVisible()) {
            this.getParentStatusLineManager().setMessage(message);
        }
    }

    public void setMessage(Image image, String message) {
        this.messageImage = image;
        this.message = message;
        if (this.isVisible()) {
            this.getParentStatusLineManager().setMessage(this.messageImage, message);
        }
    }

    public void setVisible(boolean visible) {
        super.setVisible(visible);
        if (visible) {
            this.getParentStatusLineManager().setErrorMessage(this.errorImage, this.errorMessage);
            this.getParentStatusLineManager().setMessage(this.messageImage, this.message);
        } else {
            this.getParentStatusLineManager().setMessage(null, null);
            this.getParentStatusLineManager().setErrorMessage(null, null);
        }
    }

    public void update(boolean force) {
        this.getParentStatusLineManager().update(force);
    }
}

