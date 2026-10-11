/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ui.IViewPart
 */
package org.eclipse.ui.console;

import org.eclipse.ui.IViewPart;
import org.eclipse.ui.console.IConsole;

public interface IConsoleView
extends IViewPart {
    public void display(IConsole var1);

    public void setPinned(boolean var1);

    public void pin(IConsole var1);

    public boolean isPinned();

    public IConsole getConsole();

    public void warnOfContentChange(IConsole var1);

    public void setScrollLock(boolean var1);

    public boolean getScrollLock();
}

