/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.console;

import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleListener;
import org.eclipse.ui.console.IPatternMatchListener;

public interface IConsoleManager {
    public void addConsoleListener(IConsoleListener var1);

    public void removeConsoleListener(IConsoleListener var1);

    public void addConsoles(IConsole[] var1);

    public void removeConsoles(IConsole[] var1);

    public IConsole[] getConsoles();

    public void showConsoleView(IConsole var1);

    public void warnOfContentChange(IConsole var1);

    public IPatternMatchListener[] createPatternMatchListeners(IConsole var1);

    public void refresh(IConsole var1);
}

