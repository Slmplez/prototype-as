/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CompilationParticipant;
import org.eclipse.jdt.core.compiler.ReconcileContext;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.CompilationUnitProblemFinder;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaElementDeltaBuilder;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class ReconcileWorkingCopyOperation
extends JavaModelOperation {
    public static boolean PERF = false;
    public int astLevel;
    public boolean resolveBindings;
    public HashMap problems;
    public int reconcileFlags;
    WorkingCopyOwner workingCopyOwner;
    public org.eclipse.jdt.core.dom.CompilationUnit ast;
    public JavaElementDeltaBuilder deltaBuilder;
    public boolean requestorIsActive;

    public ReconcileWorkingCopyOperation(IJavaElement workingCopy, int astLevel, int reconcileFlags, WorkingCopyOwner workingCopyOwner) {
        super(new IJavaElement[]{workingCopy});
        this.astLevel = astLevel;
        this.reconcileFlags = reconcileFlags;
        this.workingCopyOwner = workingCopyOwner;
    }

    protected void executeOperation() throws JavaModelException {
        this.checkCanceled();
        try {
            JavaElementDelta delta;
            this.beginTask(Messages.element_reconciling, 2);
            CompilationUnit workingCopy = this.getWorkingCopy();
            boolean wasConsistent = workingCopy.isConsistent();
            IProblemRequestor problemRequestor = workingCopy.getPerWorkingCopyInfo();
            if (problemRequestor != null) {
                problemRequestor = problemRequestor.getProblemRequestor();
            }
            boolean defaultRequestorIsActive = problemRequestor != null && problemRequestor.isActive();
            IProblemRequestor ownerProblemRequestor = this.workingCopyOwner.getProblemRequestor(workingCopy);
            boolean ownerRequestorIsActive = ownerProblemRequestor != null && ownerProblemRequestor != problemRequestor && ownerProblemRequestor.isActive();
            this.requestorIsActive = defaultRequestorIsActive || ownerRequestorIsActive;
            this.deltaBuilder = new JavaElementDeltaBuilder(workingCopy);
            this.makeConsistent(workingCopy);
            if (!wasConsistent || (this.reconcileFlags & 1) != 0) {
                this.notifyParticipants(workingCopy);
                if (this.ast == null) {
                    this.makeConsistent(workingCopy);
                }
            }
            if (!(this.problems == null || (this.reconcileFlags & 1) == 0 && wasConsistent)) {
                if (defaultRequestorIsActive) {
                    this.reportProblems(workingCopy, problemRequestor);
                }
                if (ownerRequestorIsActive) {
                    this.reportProblems(workingCopy, ownerProblemRequestor);
                }
            }
            if ((delta = this.deltaBuilder.delta) != null) {
                this.addReconcileDelta(workingCopy, delta);
            }
        }
        finally {
            this.done();
        }
    }

    private void reportProblems(CompilationUnit workingCopy, IProblemRequestor problemRequestor) {
        try {
            problemRequestor.beginReporting();
            Iterator iteraror = this.problems.values().iterator();
            block3: while (iteraror.hasNext()) {
                CategorizedProblem[] categorizedProblems = (CategorizedProblem[])iteraror.next();
                if (categorizedProblems == null) continue;
                int i = 0;
                int length = categorizedProblems.length;
                while (i < length) {
                    CategorizedProblem problem = categorizedProblems[i];
                    if (JavaModelManager.VERBOSE) {
                        System.out.println("PROBLEM FOUND while reconciling : " + problem.getMessage());
                    }
                    if (this.progressMonitor != null && this.progressMonitor.isCanceled()) continue block3;
                    problemRequestor.acceptProblem(problem);
                    ++i;
                }
            }
        }
        finally {
            problemRequestor.endReporting();
        }
    }

    protected CompilationUnit getWorkingCopy() {
        return (CompilationUnit)this.getElementToProcess();
    }

    public boolean isReadOnly() {
        return true;
    }

    public org.eclipse.jdt.core.dom.CompilationUnit makeConsistent(CompilationUnit workingCopy) throws JavaModelException {
        if (!workingCopy.isConsistent()) {
            if (this.problems == null) {
                this.problems = new HashMap();
            }
            this.resolveBindings = this.requestorIsActive;
            this.ast = workingCopy.makeConsistent(this.astLevel, this.resolveBindings, this.reconcileFlags, this.problems, this.progressMonitor);
            this.deltaBuilder.buildDeltas();
            if (this.ast != null && this.deltaBuilder.delta != null) {
                this.deltaBuilder.delta.changedAST(this.ast);
            }
            return this.ast;
        }
        if (this.ast != null) {
            return this.ast;
        }
        CompilationUnitDeclaration unit = null;
        try {
            try {
                JavaModelManager.getJavaModelManager().abortOnMissingSource.set(Boolean.TRUE);
                CompilationUnit source = workingCopy.cloneCachingContents();
                if (JavaProject.hasJavaNature(workingCopy.getJavaProject().getProject()) && (this.reconcileFlags & 1) != 0) {
                    this.resolveBindings = this.requestorIsActive;
                    if (this.problems == null) {
                        this.problems = new HashMap();
                    }
                    unit = CompilationUnitProblemFinder.process(source, this.workingCopyOwner, this.problems, this.astLevel != 0, this.reconcileFlags, this.progressMonitor);
                    if (this.progressMonitor != null) {
                        this.progressMonitor.worked(1);
                    }
                }
                if (this.astLevel != 0 && unit != null) {
                    Map options = workingCopy.getJavaProject().getOptions(true);
                    this.ast = AST.convertCompilationUnit(this.astLevel, unit, options, this.resolveBindings, source, this.reconcileFlags, this.progressMonitor);
                    if (this.ast != null) {
                        if (this.deltaBuilder.delta == null) {
                            this.deltaBuilder.delta = new JavaElementDelta(workingCopy);
                        }
                        this.deltaBuilder.delta.changedAST(this.ast);
                    }
                    if (this.progressMonitor != null) {
                        this.progressMonitor.worked(1);
                    }
                }
            }
            catch (JavaModelException e) {
                if (JavaProject.hasJavaNature(workingCopy.getJavaProject().getProject())) {
                    throw e;
                }
                JavaModelManager.getJavaModelManager().abortOnMissingSource.set(null);
                if (unit != null) {
                    unit.cleanUp();
                }
            }
        }
        finally {
            JavaModelManager.getJavaModelManager().abortOnMissingSource.set(null);
            if (unit != null) {
                unit.cleanUp();
            }
        }
        return this.ast;
    }

    private void notifyParticipants(CompilationUnit workingCopy) {
        IJavaProject javaProject = this.getWorkingCopy().getJavaProject();
        CompilationParticipant[] participants = JavaModelManager.getJavaModelManager().compilationParticipants.getCompilationParticipants(javaProject);
        if (participants == null) {
            return;
        }
        final ReconcileContext context = new ReconcileContext(this, workingCopy);
        int i = 0;
        int length = participants.length;
        while (i < length) {
            final CompilationParticipant participant = participants[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                    if (exception instanceof Error) {
                        throw (Error)exception;
                    }
                    if (exception instanceof OperationCanceledException) {
                        throw (OperationCanceledException)exception;
                    }
                    if (exception instanceof UnsupportedOperationException) {
                        Util.log(exception, "Reconcile participant attempted to modify the buffer of the working copy being reconciled");
                    } else {
                        Util.log(exception, "Exception occurred in reconcile participant");
                    }
                }

                public void run() throws Exception {
                    participant.reconcile(context);
                }
            });
            ++i;
        }
    }

    protected IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        CompilationUnit workingCopy = this.getWorkingCopy();
        if (!workingCopy.isWorkingCopy()) {
            return new JavaModelStatus(969, workingCopy);
        }
        return status;
    }
}

