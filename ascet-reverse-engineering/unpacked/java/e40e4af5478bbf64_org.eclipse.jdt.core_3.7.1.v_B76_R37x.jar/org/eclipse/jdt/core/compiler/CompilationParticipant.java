/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.compiler;

import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.compiler.BuildContext;
import org.eclipse.jdt.core.compiler.ReconcileContext;

public abstract class CompilationParticipant {
    public static final int READY_FOR_BUILD = 1;
    public static final int NEEDS_FULL_BUILD = 2;

    public int aboutToBuild(IJavaProject project) {
        return 1;
    }

    public void buildFinished(IJavaProject project) {
    }

    public void buildStarting(BuildContext[] files, boolean isBatch) {
    }

    public void cleanStarting(IJavaProject project) {
    }

    public boolean isActive(IJavaProject project) {
        return false;
    }

    public boolean isAnnotationProcessor() {
        return false;
    }

    public void processAnnotations(BuildContext[] files) {
    }

    public void reconcile(ReconcileContext context) {
    }
}

