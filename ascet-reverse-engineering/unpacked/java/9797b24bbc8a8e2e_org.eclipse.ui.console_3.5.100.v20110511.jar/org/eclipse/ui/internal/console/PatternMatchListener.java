/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.ui.internal.console;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.ui.console.IPatternMatchListener;
import org.eclipse.ui.console.IPatternMatchListenerDelegate;
import org.eclipse.ui.console.PatternMatchEvent;
import org.eclipse.ui.console.TextConsole;
import org.eclipse.ui.internal.console.PatternMatchListenerExtension;

public class PatternMatchListener
implements IPatternMatchListener {
    private PatternMatchListenerExtension fExtension;
    private IPatternMatchListenerDelegate fDelegate;

    public PatternMatchListener(PatternMatchListenerExtension extension) throws CoreException {
        this.fExtension = extension;
        this.fDelegate = this.fExtension.createDelegate();
    }

    public String getPattern() {
        return this.fExtension.getPattern();
    }

    public int getCompilerFlags() {
        return this.fExtension.getCompilerFlags();
    }

    public void matchFound(PatternMatchEvent event) {
        this.fDelegate.matchFound(event);
    }

    public void connect(TextConsole console) {
        this.fDelegate.connect(console);
    }

    public void disconnect() {
        this.fDelegate.disconnect();
    }

    public String getLineQualifier() {
        return this.fExtension.getQuickPattern();
    }
}

