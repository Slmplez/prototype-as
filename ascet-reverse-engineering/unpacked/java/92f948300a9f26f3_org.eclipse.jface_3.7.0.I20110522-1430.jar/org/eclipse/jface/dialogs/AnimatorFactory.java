/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.dialogs.ControlAnimator;
import org.eclipse.swt.widgets.Control;

public class AnimatorFactory {
    public ControlAnimator createAnimator(Control control) {
        return new ControlAnimator(control);
    }
}

