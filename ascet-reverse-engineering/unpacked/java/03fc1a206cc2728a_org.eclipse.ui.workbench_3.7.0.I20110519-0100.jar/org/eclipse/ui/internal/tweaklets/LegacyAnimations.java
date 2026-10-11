/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.LegacyAnimationFeedback;
import org.eclipse.ui.internal.RectangleAnimationFeedbackBase;
import org.eclipse.ui.internal.tweaklets.Animations;

public class LegacyAnimations
extends Animations {
    public RectangleAnimationFeedbackBase createFeedback(Shell shell) {
        return new LegacyAnimationFeedback(shell, null, null);
    }
}

