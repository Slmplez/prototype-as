/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;

public class ProgressViewerLabelProvider
extends LabelProvider {
    private Control control;

    public String getText(Object element) {
        JobTreeElement info = (JobTreeElement)element;
        return ProgressManagerUtil.shortenText(info.getCondensedDisplayString(), this.control);
    }

    public ProgressViewerLabelProvider(Control progressControl) {
        this.control = progressControl;
    }
}

