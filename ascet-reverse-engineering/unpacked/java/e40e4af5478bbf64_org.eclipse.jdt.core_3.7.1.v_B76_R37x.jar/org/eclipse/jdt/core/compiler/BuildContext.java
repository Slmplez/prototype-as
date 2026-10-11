/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.jdt.core.compiler;

import org.eclipse.core.resources.IFile;
import org.eclipse.jdt.core.compiler.CategorizedProblem;

public class BuildContext {
    public char[] getContents() {
        return null;
    }

    public IFile getFile() {
        return null;
    }

    public boolean hasAnnotations() {
        return false;
    }

    public void recordAddedGeneratedFiles(IFile[] addedGeneratedFiles) {
    }

    public void recordDeletedGeneratedFiles(IFile[] deletedGeneratedFiles) {
    }

    public void recordDependencies(String[] typeNameDependencies) {
    }

    public void recordNewProblems(CategorizedProblem[] newProblems) {
    }
}

