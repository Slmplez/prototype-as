/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IFile;
import org.eclipse.jdt.core.compiler.BuildContext;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.core.builder.SourceFile;

public class CompilationParticipantResult
extends BuildContext {
    protected SourceFile sourceFile;
    protected boolean hasAnnotations;
    protected IFile[] addedFiles;
    protected IFile[] deletedFiles;
    protected CategorizedProblem[] problems;
    protected String[] dependencies;

    protected CompilationParticipantResult(SourceFile sourceFile) {
        this.sourceFile = sourceFile;
        this.hasAnnotations = false;
        this.addedFiles = null;
        this.deletedFiles = null;
        this.problems = null;
        this.dependencies = null;
    }

    public char[] getContents() {
        return this.sourceFile.getContents();
    }

    public IFile getFile() {
        return this.sourceFile.resource;
    }

    public boolean hasAnnotations() {
        return this.hasAnnotations;
    }

    public void recordAddedGeneratedFiles(IFile[] addedGeneratedFiles) {
        int length2 = addedGeneratedFiles.length;
        if (length2 == 0) {
            return;
        }
        int length1 = this.addedFiles == null ? 0 : this.addedFiles.length;
        IFile[] merged = new IFile[length1 + length2];
        if (length1 > 0) {
            System.arraycopy(this.addedFiles, 0, merged, 0, length1);
        }
        System.arraycopy(addedGeneratedFiles, 0, merged, length1, length2);
        this.addedFiles = merged;
    }

    public void recordDeletedGeneratedFiles(IFile[] deletedGeneratedFiles) {
        int length2 = deletedGeneratedFiles.length;
        if (length2 == 0) {
            return;
        }
        int length1 = this.deletedFiles == null ? 0 : this.deletedFiles.length;
        IFile[] merged = new IFile[length1 + length2];
        if (length1 > 0) {
            System.arraycopy(this.deletedFiles, 0, merged, 0, length1);
        }
        System.arraycopy(deletedGeneratedFiles, 0, merged, length1, length2);
        this.deletedFiles = merged;
    }

    public void recordDependencies(String[] typeNameDependencies) {
        int length2 = typeNameDependencies.length;
        if (length2 == 0) {
            return;
        }
        int length1 = this.dependencies == null ? 0 : this.dependencies.length;
        String[] merged = new String[length1 + length2];
        if (length1 > 0) {
            System.arraycopy(this.dependencies, 0, merged, 0, length1);
        }
        System.arraycopy(typeNameDependencies, 0, merged, length1, length2);
        this.dependencies = merged;
    }

    public void recordNewProblems(CategorizedProblem[] newProblems) {
        int length2 = newProblems.length;
        if (length2 == 0) {
            return;
        }
        int length1 = this.problems == null ? 0 : this.problems.length;
        CategorizedProblem[] merged = new CategorizedProblem[length1 + length2];
        if (length1 > 0) {
            System.arraycopy(this.problems, 0, merged, 0, length1);
        }
        System.arraycopy(newProblems, 0, merged, length1, length2);
        this.problems = merged;
    }

    void reset(boolean detectedAnnotations) {
        this.hasAnnotations = detectedAnnotations;
        this.addedFiles = null;
        this.deletedFiles = null;
        this.problems = null;
        this.dependencies = null;
    }

    public String toString() {
        return this.sourceFile.toString();
    }
}

