/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.progress.ProgressInfoItem;

public abstract class JobTreeElement
implements Comparable {
    public Object getParent() {
        return null;
    }

    abstract boolean hasChildren();

    abstract Object[] getChildren();

    abstract String getDisplayString();

    String getDisplayString(boolean showProgress) {
        return this.getDisplayString();
    }

    public Image getDisplayImage() {
        return JFaceResources.getImage((String)ProgressInfoItem.DEFAULT_JOB_KEY);
    }

    String getCondensedDisplayString() {
        return this.getDisplayString();
    }

    abstract boolean isJobInfo();

    public int compareTo(Object arg0) {
        if (arg0 instanceof JobTreeElement) {
            return this.getDisplayString().compareTo(((JobTreeElement)arg0).getDisplayString());
        }
        return 0;
    }

    abstract boolean isActive();

    public boolean isCancellable() {
        return false;
    }

    public void cancel() {
    }
}

