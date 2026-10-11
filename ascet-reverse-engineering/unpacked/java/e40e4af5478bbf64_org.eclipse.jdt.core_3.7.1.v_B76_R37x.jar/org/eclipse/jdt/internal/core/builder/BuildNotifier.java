/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.builder.SourceFile;
import org.eclipse.jdt.internal.core.util.Messages;

public class BuildNotifier {
    protected IProgressMonitor monitor;
    protected boolean cancelling;
    protected float percentComplete;
    protected float progressPerCompilationUnit;
    protected int newErrorCount;
    protected int fixedErrorCount;
    protected int newWarningCount;
    protected int fixedWarningCount;
    protected int workDone;
    protected int totalWork;
    protected String previousSubtask;
    public static int NewErrorCount = 0;
    public static int FixedErrorCount = 0;
    public static int NewWarningCount = 0;
    public static int FixedWarningCount = 0;

    public static void resetProblemCounters() {
        NewErrorCount = 0;
        FixedErrorCount = 0;
        NewWarningCount = 0;
        FixedWarningCount = 0;
    }

    public BuildNotifier(IProgressMonitor monitor, IProject project) {
        this.monitor = monitor;
        this.cancelling = false;
        this.newErrorCount = NewErrorCount;
        this.fixedErrorCount = FixedErrorCount;
        this.newWarningCount = NewWarningCount;
        this.fixedWarningCount = FixedWarningCount;
        this.workDone = 0;
        this.totalWork = 1000000;
    }

    public void aboutToCompile(SourceFile unit) {
        String message = Messages.bind(Messages.build_compiling, unit.resource.getFullPath().removeLastSegments(1).makeRelative().toString());
        this.subTask(message);
    }

    public void begin() {
        if (this.monitor != null) {
            this.monitor.beginTask("", this.totalWork);
        }
        this.previousSubtask = null;
    }

    public void checkCancel() {
        if (this.monitor != null && this.monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public void checkCancelWithinCompiler() {
        if (this.monitor != null && this.monitor.isCanceled() && !this.cancelling) {
            this.setCancelling(true);
            throw new AbortCompilation(true, null);
        }
    }

    public void compiled(SourceFile unit) {
        String message = Messages.bind(Messages.build_compiling, unit.resource.getFullPath().removeLastSegments(1).makeRelative().toString());
        this.subTask(message);
        this.updateProgressDelta(this.progressPerCompilationUnit);
        this.checkCancelWithinCompiler();
    }

    public void done() {
        NewErrorCount = this.newErrorCount;
        FixedErrorCount = this.fixedErrorCount;
        NewWarningCount = this.newWarningCount;
        FixedWarningCount = this.fixedWarningCount;
        this.updateProgress(1.0f);
        this.subTask(Messages.build_done);
        if (this.monitor != null) {
            this.monitor.done();
        }
        this.previousSubtask = null;
    }

    protected String problemsMessage() {
        int numNew = this.newErrorCount + this.newWarningCount;
        int numFixed = this.fixedErrorCount + this.fixedWarningCount;
        if (numNew == 0 && numFixed == 0) {
            return "";
        }
        boolean displayBoth = numNew > 0 && numFixed > 0;
        StringBuffer buffer = new StringBuffer();
        buffer.append('(');
        if (numNew > 0) {
            buffer.append(Messages.build_foundHeader);
            buffer.append(' ');
            if (displayBoth || this.newErrorCount > 0) {
                if (this.newErrorCount == 1) {
                    buffer.append(Messages.build_oneError);
                } else {
                    buffer.append(Messages.bind(Messages.build_multipleErrors, String.valueOf(this.newErrorCount)));
                }
                if (displayBoth || this.newWarningCount > 0) {
                    buffer.append(" + ");
                }
            }
            if (displayBoth || this.newWarningCount > 0) {
                if (this.newWarningCount == 1) {
                    buffer.append(Messages.build_oneWarning);
                } else {
                    buffer.append(Messages.bind(Messages.build_multipleWarnings, String.valueOf(this.newWarningCount)));
                }
            }
            if (numFixed > 0) {
                buffer.append(", ");
            }
        }
        if (numFixed > 0) {
            buffer.append(Messages.build_fixedHeader);
            buffer.append(' ');
            if (displayBoth) {
                buffer.append(String.valueOf(this.fixedErrorCount));
                buffer.append(" + ");
                buffer.append(String.valueOf(this.fixedWarningCount));
            } else {
                if (this.fixedErrorCount > 0) {
                    if (this.fixedErrorCount == 1) {
                        buffer.append(Messages.build_oneError);
                    } else {
                        buffer.append(Messages.bind(Messages.build_multipleErrors, String.valueOf(this.fixedErrorCount)));
                    }
                    if (this.fixedWarningCount > 0) {
                        buffer.append(" + ");
                    }
                }
                if (this.fixedWarningCount > 0) {
                    if (this.fixedWarningCount == 1) {
                        buffer.append(Messages.build_oneWarning);
                    } else {
                        buffer.append(Messages.bind(Messages.build_multipleWarnings, String.valueOf(this.fixedWarningCount)));
                    }
                }
            }
        }
        buffer.append(')');
        return buffer.toString();
    }

    public void setCancelling(boolean cancelling) {
        this.cancelling = cancelling;
    }

    public void setProgressPerCompilationUnit(float progress) {
        this.progressPerCompilationUnit = progress;
    }

    public void subTask(String message) {
        String msg;
        String pm = this.problemsMessage();
        String string = msg = pm.length() == 0 ? message : String.valueOf(pm) + " " + message;
        if (msg.equals(this.previousSubtask)) {
            return;
        }
        if (this.monitor != null) {
            this.monitor.subTask(msg);
        }
        this.previousSubtask = msg;
    }

    protected void updateProblemCounts(CategorizedProblem[] newProblems) {
        int i = 0;
        int l = newProblems.length;
        while (i < l) {
            if (newProblems[i].isError()) {
                ++this.newErrorCount;
            } else {
                ++this.newWarningCount;
            }
            ++i;
        }
    }

    protected void updateProblemCounts(IMarker[] oldProblems, CategorizedProblem[] newProblems) {
        Object pb;
        int m;
        int j;
        String message;
        int l;
        int i;
        if (newProblems != null) {
            i = 0;
            l = newProblems.length;
            while (i < l) {
                block18: {
                    CategorizedProblem newProblem = newProblems[i];
                    if (newProblem.getID() != 536871362) {
                        boolean isError = newProblem.isError();
                        message = newProblem.getMessage();
                        if (oldProblems != null) {
                            j = 0;
                            m = oldProblems.length;
                            while (j < m) {
                                pb = oldProblems[j];
                                if (pb != null) {
                                    boolean wasError;
                                    boolean bl = wasError = 2 == pb.getAttribute("severity", 2);
                                    if (isError == wasError && message.equals(pb.getAttribute("message", ""))) {
                                        oldProblems[j] = null;
                                        break block18;
                                    }
                                }
                                ++j;
                            }
                        }
                        if (isError) {
                            ++this.newErrorCount;
                        } else {
                            ++this.newWarningCount;
                        }
                    }
                }
                ++i;
            }
        }
        if (oldProblems != null) {
            i = 0;
            l = oldProblems.length;
            while (i < l) {
                IMarker oldProblem = oldProblems[i];
                if (oldProblem != null) {
                    boolean wasError = 2 == oldProblem.getAttribute("severity", 2);
                    message = oldProblem.getAttribute("message", "");
                    if (newProblems != null) {
                        j = 0;
                        m = newProblems.length;
                        while (j < m) {
                            pb = newProblems[j];
                            if (pb.getID() == 536871362 || wasError != pb.isError() || !message.equals(pb.getMessage())) {
                                ++j;
                                continue;
                            }
                            break;
                        }
                    } else if (wasError) {
                        ++this.fixedErrorCount;
                    } else {
                        ++this.fixedWarningCount;
                    }
                }
                ++i;
            }
        }
    }

    public void updateProgress(float newPercentComplete) {
        if (newPercentComplete > this.percentComplete) {
            this.percentComplete = Math.min(newPercentComplete, 1.0f);
            int work = Math.round(this.percentComplete * (float)this.totalWork);
            if (work > this.workDone) {
                if (this.monitor != null) {
                    this.monitor.worked(work - this.workDone);
                }
                this.workDone = work;
            }
        }
    }

    public void updateProgressDelta(float percentWorked) {
        this.updateProgress(this.percentComplete + percentWorked);
    }
}

