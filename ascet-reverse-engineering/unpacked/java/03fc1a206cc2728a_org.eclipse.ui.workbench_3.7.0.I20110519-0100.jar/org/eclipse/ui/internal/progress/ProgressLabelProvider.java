/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.progress.JobTreeElement;

public class ProgressLabelProvider
extends LabelProvider {
    Image image;

    public Image getImage(Object element) {
        return ((JobTreeElement)element).getDisplayImage();
    }

    public String getText(Object element) {
        return ((JobTreeElement)element).getDisplayString();
    }
}

