/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;

public class PreferenceLabelProvider
extends LabelProvider {
    public String getText(Object element) {
        return ((IPreferenceNode)element).getLabelText();
    }

    public Image getImage(Object element) {
        return ((IPreferenceNode)element).getLabelImage();
    }
}

