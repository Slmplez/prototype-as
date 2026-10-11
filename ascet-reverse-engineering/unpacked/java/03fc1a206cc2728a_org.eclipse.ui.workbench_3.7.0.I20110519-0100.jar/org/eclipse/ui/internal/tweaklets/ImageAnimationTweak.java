/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.RectangleAnimationFeedbackBase;
import org.eclipse.ui.internal.RectangleAnimationImageFeedback;
import org.eclipse.ui.internal.tweaklets.Animations;

public class ImageAnimationTweak
extends Animations {
    public RectangleAnimationFeedbackBase createFeedback(Shell shell) {
        return new RectangleAnimationImageFeedback(shell, null, null);
    }
}

