/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.debug.eval;

import java.io.File;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.eval.IAstEvaluationEngine;
import org.eclipse.jdt.debug.eval.IClassFileEvaluationEngine;
import org.eclipse.jdt.internal.debug.eval.LocalEvaluationEngine;
import org.eclipse.jdt.internal.debug.eval.ast.engine.ASTEvaluationEngine;

public class EvaluationManager {
    private EvaluationManager() {
    }

    public static IClassFileEvaluationEngine newClassFileEvaluationEngine(IJavaProject project, IJavaDebugTarget target, File directory) {
        return new LocalEvaluationEngine(project, target, directory);
    }

    public static IAstEvaluationEngine newAstEvaluationEngine(IJavaProject project, IJavaDebugTarget target) {
        return new ASTEvaluationEngine(project, target);
    }
}

