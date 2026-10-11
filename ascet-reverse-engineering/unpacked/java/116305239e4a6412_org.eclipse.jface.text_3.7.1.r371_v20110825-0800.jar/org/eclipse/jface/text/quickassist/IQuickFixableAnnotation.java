/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.AssertionFailedException
 */
package org.eclipse.jface.text.quickassist;

import org.eclipse.core.runtime.AssertionFailedException;

public interface IQuickFixableAnnotation {
    public void setQuickFixable(boolean var1);

    public boolean isQuickFixableStateSet();

    public boolean isQuickFixable() throws AssertionFailedException;
}

