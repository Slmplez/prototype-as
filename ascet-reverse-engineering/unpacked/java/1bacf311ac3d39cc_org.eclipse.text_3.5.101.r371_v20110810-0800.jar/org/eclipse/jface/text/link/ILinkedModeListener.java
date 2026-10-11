/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.link;

import org.eclipse.jface.text.link.LinkedModeModel;

public interface ILinkedModeListener {
    public static final int NONE = 0;
    public static final int EXIT_ALL = 1;
    public static final int UPDATE_CARET = 2;
    public static final int SELECT = 4;
    public static final int EXTERNAL_MODIFICATION = 8;

    public void left(LinkedModeModel var1, int var2);

    public void suspend(LinkedModeModel var1);

    public void resume(LinkedModeModel var1, int var2);
}

