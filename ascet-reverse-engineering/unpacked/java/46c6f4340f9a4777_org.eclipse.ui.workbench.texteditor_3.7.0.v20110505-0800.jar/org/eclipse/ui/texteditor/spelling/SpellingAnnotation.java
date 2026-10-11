/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.quickassist.IQuickFixableAnnotation
 *  org.eclipse.jface.text.source.Annotation
 */
package org.eclipse.ui.texteditor.spelling;

import org.eclipse.jface.text.quickassist.IQuickFixableAnnotation;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.ui.texteditor.spelling.SpellingProblem;

public class SpellingAnnotation
extends Annotation
implements IQuickFixableAnnotation {
    public static final String TYPE = "org.eclipse.ui.workbench.texteditor.spelling";
    private SpellingProblem fSpellingProblem;

    public SpellingAnnotation(SpellingProblem problem) {
        super(TYPE, false, problem.getMessage());
        this.fSpellingProblem = problem;
    }

    public boolean isQuickFixable() {
        return true;
    }

    public boolean isQuickFixableStateSet() {
        return true;
    }

    public void setQuickFixable(boolean state) {
    }

    public SpellingProblem getSpellingProblem() {
        return this.fSpellingProblem;
    }
}

