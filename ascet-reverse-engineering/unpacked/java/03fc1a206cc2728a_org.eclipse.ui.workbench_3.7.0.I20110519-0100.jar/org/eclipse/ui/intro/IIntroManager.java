/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.intro;

import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.intro.IIntroPart;

public interface IIntroManager {
    public boolean closeIntro(IIntroPart var1);

    public IIntroPart getIntro();

    public boolean hasIntro();

    public boolean isIntroStandby(IIntroPart var1);

    public void setIntroStandby(IIntroPart var1, boolean var2);

    public IIntroPart showIntro(IWorkbenchWindow var1, boolean var2);

    public boolean isNewContentAvailable();
}

