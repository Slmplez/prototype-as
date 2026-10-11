/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.intro;

import org.eclipse.ui.internal.intro.IIntroDescriptor;

public interface IIntroRegistry {
    public int getIntroCount();

    public IIntroDescriptor[] getIntros();

    public IIntroDescriptor getIntroForProduct(String var1);

    public IIntroDescriptor getIntro(String var1);
}

