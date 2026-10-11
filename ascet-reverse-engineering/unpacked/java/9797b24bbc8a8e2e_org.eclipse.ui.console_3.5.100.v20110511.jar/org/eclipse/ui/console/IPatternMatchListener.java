/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.console;

import org.eclipse.ui.console.IPatternMatchListenerDelegate;

public interface IPatternMatchListener
extends IPatternMatchListenerDelegate {
    public String getPattern();

    public int getCompilerFlags();

    public String getLineQualifier();
}

