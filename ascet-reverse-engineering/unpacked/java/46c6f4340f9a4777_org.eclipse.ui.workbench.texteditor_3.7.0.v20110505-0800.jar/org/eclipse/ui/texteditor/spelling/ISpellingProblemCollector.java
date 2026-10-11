/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.texteditor.spelling;

import org.eclipse.ui.texteditor.spelling.SpellingProblem;

public interface ISpellingProblemCollector {
    public void accept(SpellingProblem var1);

    public void beginCollecting();

    public void endCollecting();
}

