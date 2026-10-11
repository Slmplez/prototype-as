/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.compiler;

import java.util.HashMap;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.ReconcileWorkingCopyOperation;

public class ReconcileContext {
    private ReconcileWorkingCopyOperation operation;
    private org.eclipse.jdt.internal.core.CompilationUnit workingCopy;

    public ReconcileContext(ReconcileWorkingCopyOperation operation, org.eclipse.jdt.internal.core.CompilationUnit workingCopy) {
        this.operation = operation;
        this.workingCopy = workingCopy;
    }

    public CompilationUnit getAST3() throws JavaModelException {
        if (this.operation.astLevel != 3 || !this.operation.resolveBindings) {
            ASTParser parser = ASTParser.newParser(3);
            parser.setCompilerOptions(this.workingCopy.getJavaProject().getOptions(true));
            if (JavaProject.hasJavaNature(this.workingCopy.getJavaProject().getProject())) {
                parser.setResolveBindings(true);
            }
            parser.setStatementsRecovery((this.operation.reconcileFlags & 2) != 0);
            parser.setBindingsRecovery((this.operation.reconcileFlags & 4) != 0);
            parser.setSource(this.workingCopy);
            parser.setIgnoreMethodBodies((this.operation.reconcileFlags & 8) != 0);
            return (CompilationUnit)parser.createAST(this.operation.progressMonitor);
        }
        return this.operation.makeConsistent(this.workingCopy);
    }

    public CompilationUnit getAST4() throws JavaModelException {
        if (this.operation.astLevel != 4 || !this.operation.resolveBindings) {
            ASTParser parser = ASTParser.newParser(4);
            parser.setCompilerOptions(this.workingCopy.getJavaProject().getOptions(true));
            if (JavaProject.hasJavaNature(this.workingCopy.getJavaProject().getProject())) {
                parser.setResolveBindings(true);
            }
            parser.setStatementsRecovery((this.operation.reconcileFlags & 2) != 0);
            parser.setBindingsRecovery((this.operation.reconcileFlags & 4) != 0);
            parser.setSource(this.workingCopy);
            parser.setIgnoreMethodBodies((this.operation.reconcileFlags & 8) != 0);
            return (CompilationUnit)parser.createAST(this.operation.progressMonitor);
        }
        return this.operation.makeConsistent(this.workingCopy);
    }

    public int getASTLevel() {
        return this.operation.astLevel;
    }

    public boolean isResolvingBindings() {
        return this.operation.resolveBindings;
    }

    public int getReconcileFlags() {
        return this.operation.reconcileFlags;
    }

    public IJavaElementDelta getDelta() {
        return this.operation.deltaBuilder.delta;
    }

    public CategorizedProblem[] getProblems(String markerType) {
        if (this.operation.problems == null) {
            return null;
        }
        return (CategorizedProblem[])this.operation.problems.get(markerType);
    }

    public ICompilationUnit getWorkingCopy() {
        return this.workingCopy;
    }

    public void resetAST() {
        this.operation.ast = null;
        this.putProblems("org.eclipse.jdt.core.problem", null);
        this.putProblems("org.eclipse.jdt.core.task", null);
    }

    public void putProblems(String markerType, CategorizedProblem[] problems) {
        if (this.operation.problems == null) {
            this.operation.problems = new HashMap();
        }
        this.operation.problems.put(markerType, problems);
    }
}

