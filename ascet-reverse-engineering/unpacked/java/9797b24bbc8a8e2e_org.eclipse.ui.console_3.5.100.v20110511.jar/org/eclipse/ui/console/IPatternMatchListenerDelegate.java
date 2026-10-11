/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.console;

import org.eclipse.ui.console.PatternMatchEvent;
import org.eclipse.ui.console.TextConsole;

public interface IPatternMatchListenerDelegate {
    public void connect(TextConsole var1);

    public void disconnect();

    public void matchFound(PatternMatchEvent var1);
}

