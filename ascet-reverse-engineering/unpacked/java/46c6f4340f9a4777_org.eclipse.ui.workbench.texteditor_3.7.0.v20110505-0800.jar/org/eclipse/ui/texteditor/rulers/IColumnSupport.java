/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.texteditor.rulers;

import org.eclipse.ui.texteditor.rulers.RulerColumnDescriptor;

public interface IColumnSupport {
    public boolean isColumnVisible(RulerColumnDescriptor var1);

    public void setColumnVisible(RulerColumnDescriptor var1, boolean var2);

    public boolean isColumnSupported(RulerColumnDescriptor var1);

    public void dispose();
}

