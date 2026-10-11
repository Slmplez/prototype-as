/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.emf.common.util;

import java.io.PrintStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.Monitor;

public class BasicMonitor
implements Monitor {
    private boolean isCanceled;
    private Diagnostic blockedReason;

    public boolean isCanceled() {
        return this.isCanceled;
    }

    public void setCanceled(boolean isCanceled) {
        this.isCanceled = isCanceled;
    }

    public Diagnostic getBlockedReason() {
        return this.blockedReason;
    }

    public void setBlocked(Diagnostic reason) {
        this.blockedReason = reason;
    }

    public void clearBlocked() {
        this.blockedReason = null;
    }

    public void beginTask(String name, int totalWork) {
    }

    public void setTaskName(String name) {
    }

    public void subTask(String name) {
    }

    public void worked(int work) {
    }

    public void internalWorked(double work) {
    }

    public void done() {
    }

    public static IProgressMonitor toIProgressMonitor(Monitor monitor) {
        return Delegating.Eclipse.createIProgressMonitor(monitor);
    }

    public static IProgressMonitorWithBlocking toIProgressMonitorWithBlocking(Monitor monitor) {
        return Delegating.Eclipse.createIProgressMonitorWithBlocking(monitor);
    }

    public static Monitor toMonitor(IProgressMonitorWithBlocking progressMonitor) {
        return new EclipseDelegating(progressMonitor);
    }

    public static Monitor toMonitor(IProgressMonitor progressMonitor) {
        return new EclipseDelegating(progressMonitor);
    }

    public static class Delegating {
        protected Monitor monitor;

        public Delegating(Monitor monitor) {
            this.monitor = monitor;
        }

        public boolean isCanceled() {
            return this.monitor.isCanceled();
        }

        public void setCanceled(boolean value) {
            this.monitor.setCanceled(value);
        }

        public void setBlocked(Diagnostic reason) {
            this.monitor.setBlocked(reason);
        }

        public void clearBlocked() {
            this.monitor.clearBlocked();
        }

        public void beginTask(String name, int totalWork) {
            this.monitor.beginTask(name, totalWork);
        }

        public void setTaskName(String name) {
            this.monitor.setTaskName(name);
        }

        public void subTask(String name) {
            this.monitor.subTask(name);
        }

        public void worked(int work) {
            this.monitor.worked(work);
        }

        public void internalWorked(double work) {
            this.monitor.internalWorked(work);
        }

        public void done() {
            this.monitor.done();
        }

        private static class Eclipse
        extends Delegating
        implements IProgressMonitorWithBlocking {
            public Eclipse(Monitor monitor) {
                super(monitor);
            }

            public void setBlocked(IStatus reason) {
                this.setBlocked(new BasicDiagnostic(reason.getSeverity(), reason.getPlugin(), reason.getCode(), reason.getMessage(), null));
            }

            public static IProgressMonitorWithBlocking createIProgressMonitorWithBlocking(Monitor monitor) {
                if (monitor instanceof IProgressMonitorWithBlocking) {
                    return (IProgressMonitorWithBlocking)monitor;
                }
                return new Eclipse(monitor);
            }

            public static IProgressMonitor createIProgressMonitor(Monitor monitor) {
                if (monitor instanceof IProgressMonitor) {
                    return (IProgressMonitor)monitor;
                }
                return new Eclipse(monitor);
            }
        }
    }

    private static class EclipseDelegating
    implements Monitor {
        protected IProgressMonitor progressMonitor;
        protected IProgressMonitorWithBlocking progressMonitorWithBlocking;

        public EclipseDelegating(IProgressMonitor progressMonitor) {
            this.progressMonitor = progressMonitor;
            if (progressMonitor instanceof IProgressMonitorWithBlocking) {
                this.progressMonitorWithBlocking = (IProgressMonitorWithBlocking)progressMonitor;
            }
        }

        public EclipseDelegating(IProgressMonitorWithBlocking progressMonitorWithBlocking) {
            this.progressMonitor = progressMonitorWithBlocking;
            this.progressMonitorWithBlocking = progressMonitorWithBlocking;
        }

        public boolean isCanceled() {
            return this.progressMonitor.isCanceled();
        }

        public void setCanceled(boolean value) {
            this.progressMonitor.setCanceled(value);
        }

        public void setBlocked(Diagnostic reason) {
            if (this.progressMonitorWithBlocking != null) {
                this.progressMonitorWithBlocking.setBlocked(BasicDiagnostic.toIStatus(reason));
            }
        }

        public void clearBlocked() {
            if (this.progressMonitorWithBlocking != null) {
                this.progressMonitorWithBlocking.clearBlocked();
            }
        }

        public void beginTask(String name, int totalWork) {
            this.progressMonitor.beginTask(name, totalWork);
        }

        public void setTaskName(String name) {
            this.progressMonitor.setTaskName(name);
        }

        public void subTask(String name) {
            this.progressMonitor.subTask(name);
        }

        public void worked(int work) {
            this.progressMonitor.worked(work);
        }

        public void internalWorked(double work) {
            this.progressMonitor.internalWorked(work);
        }

        public void done() {
            this.progressMonitor.done();
        }
    }

    public static class EclipseSubProgress
    extends SubProgressMonitor
    implements Monitor {
        public EclipseSubProgress(IProgressMonitor monitor, int ticks) {
            super(monitor, ticks);
        }

        public EclipseSubProgress(IProgressMonitor monitor, int ticks, int style) {
            super(monitor, ticks, style);
        }

        public void setBlocked(Diagnostic reason) {
            super.setBlocked(BasicDiagnostic.toIStatus(reason));
        }
    }

    public static class Printing
    extends BasicMonitor {
        protected PrintStream printStream;

        public Printing(PrintStream printStream) {
            this.printStream = printStream;
        }

        public void beginTask(String name, int totalWork) {
            if (name != null && name.length() != 0) {
                this.printStream.println(">>> " + name);
            }
        }

        public void setTaskName(String name) {
            if (name != null && name.length() != 0) {
                this.printStream.println("<>> " + name);
            }
        }

        public void subTask(String name) {
            if (name != null && name.length() != 0) {
                this.printStream.println(">>  " + name);
            }
        }

        public void setBlocked(Diagnostic reason) {
            super.setBlocked(reason);
            this.printStream.println("#>  " + reason.getMessage());
        }

        public void clearBlocked() {
            this.printStream.println("=>  " + this.getBlockedReason().getMessage());
            super.clearBlocked();
        }
    }
}

