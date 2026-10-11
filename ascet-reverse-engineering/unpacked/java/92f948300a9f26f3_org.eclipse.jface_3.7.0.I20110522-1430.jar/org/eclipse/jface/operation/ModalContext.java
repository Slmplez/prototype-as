/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.ProgressMonitorWrapper
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.operation;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.ProgressMonitorWrapper;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.operation.AccumulatingProgressMonitor;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.operation.IThreadListener;
import org.eclipse.jface.util.Policy;
import org.eclipse.swt.widgets.Display;

public class ModalContext {
    private static boolean debug = false;
    private static int modalLevel = 0;
    private static boolean runInSeparateThread = true;

    /*
     * Unable to fully structure code
     */
    public static boolean canProgressMonitorBeUsed(IProgressMonitor monitor1, IProgressMonitor monitor2) {
        if (monitor1 != monitor2) ** GOTO lbl5
        return true;
lbl-1000:
        // 1 sources

        {
            if ((monitor1 = ((ProgressMonitorWrapper)monitor1).getWrappedProgressMonitor()) != monitor2) continue;
            return true;
lbl5:
            // 2 sources

            ** while (monitor1 instanceof ProgressMonitorWrapper)
        }
lbl6:
        // 1 sources

        return false;
    }

    public static void checkCanceled(IProgressMonitor monitor) throws InterruptedException {
        if (monitor.isCanceled()) {
            throw new InterruptedException();
        }
    }

    private static ModalContextThread getCurrentModalContextThread() {
        Thread t = Thread.currentThread();
        if (t instanceof ModalContextThread) {
            return (ModalContextThread)t;
        }
        return null;
    }

    public static int getModalLevel() {
        return modalLevel;
    }

    public static boolean isModalContextThread(Thread thread) {
        return thread instanceof ModalContextThread;
    }

    public static void run(IRunnableWithProgress operation, boolean fork, IProgressMonitor monitor, Display display) throws InvocationTargetException, InterruptedException {
        Assert.isTrue((operation != null && monitor != null ? 1 : 0) != 0);
        ++modalLevel;
        try {
            if (monitor != null) {
                monitor.setCanceled(false);
            }
            if (!fork || !runInSeparateThread) {
                ModalContext.runInCurrentThread(operation, monitor);
            } else {
                ModalContextThread t = ModalContext.getCurrentModalContextThread();
                if (t != null) {
                    Assert.isTrue((boolean)ModalContext.canProgressMonitorBeUsed(monitor, t.progressMonitor));
                    ModalContext.runInCurrentThread(operation, monitor);
                } else {
                    t = new ModalContextThread(operation, monitor, display);
                    Throwable listenerException = null;
                    if (operation instanceof IThreadListener) {
                        listenerException = ModalContext.invokeThreadListener((IThreadListener)((Object)operation), t);
                    }
                    if (listenerException == null) {
                        t.start();
                        t.block();
                    } else if (t.throwable == null) {
                        t.throwable = listenerException;
                    }
                    Throwable throwable = t.throwable;
                    if (throwable != null) {
                        if (debug && !(throwable instanceof InterruptedException) && !(throwable instanceof OperationCanceledException)) {
                            System.err.println("Exception in modal context operation:");
                            throwable.printStackTrace();
                            System.err.println("Called from:");
                            new InvocationTargetException(null).printStackTrace();
                        }
                        if (throwable instanceof InvocationTargetException) {
                            throw (InvocationTargetException)throwable;
                        }
                        if (throwable instanceof InterruptedException) {
                            throw (InterruptedException)throwable;
                        }
                        if (throwable instanceof OperationCanceledException) {
                            throw new InterruptedException(throwable.getMessage());
                        }
                        throw new InvocationTargetException(throwable);
                    }
                }
            }
        }
        finally {
            --modalLevel;
        }
    }

    static Throwable invokeThreadListener(IThreadListener listener, Thread switchingThread) {
        try {
            listener.threadChange(switchingThread);
        }
        catch (ThreadDeath e) {
            throw e;
        }
        catch (Error e) {
            return e;
        }
        catch (RuntimeException e) {
            return e;
        }
        return null;
    }

    private static void runInCurrentThread(IRunnableWithProgress runnable, IProgressMonitor progressMonitor) throws InterruptedException, InvocationTargetException {
        try {
            if (runnable != null) {
                runnable.run(progressMonitor);
            }
        }
        catch (InvocationTargetException e) {
            throw e;
        }
        catch (InterruptedException e) {
            throw e;
        }
        catch (OperationCanceledException operationCanceledException) {
            throw new InterruptedException();
        }
        catch (ThreadDeath e) {
            throw e;
        }
        catch (RuntimeException e) {
            throw new InvocationTargetException(e);
        }
        catch (Error e) {
            throw new InvocationTargetException(e);
        }
    }

    public static void setDebugMode(boolean debugMode) {
        debug = debugMode;
    }

    public static void setAllowReadAndDispatch(boolean allowReadAndDispatch) {
        runInSeparateThread = allowReadAndDispatch;
    }

    private static class ModalContextThread
    extends Thread {
        private IRunnableWithProgress runnable;
        private Throwable throwable;
        private IProgressMonitor progressMonitor;
        private Display display;
        private volatile boolean continueEventDispatching = true;
        private Thread callingThread;

        private ModalContextThread(IRunnableWithProgress operation, IProgressMonitor monitor, Display display) {
            super("ModalContext");
            Assert.isTrue((monitor != null && display != null ? 1 : 0) != 0);
            this.runnable = operation;
            this.progressMonitor = new AccumulatingProgressMonitor(monitor, display);
            this.display = display;
            this.callingThread = Thread.currentThread();
        }

        /*
         * Exception decompiling
         */
        public void run() {
            /*
             * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
             * 
             * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [8[CATCHBLOCK]], but top level block is 4[TRYBLOCK]
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
             *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
             *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:923)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1035)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
             *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
             *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
             *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
             *     at org.benf.cfr.reader.Main.main(Main.java:54)
             */
            throw new IllegalStateException("Decompilation failed");
        }

        public void block() {
            if (this.display == Display.getCurrent()) {
                int exceptionCount = 0;
                while (this.continueEventDispatching) {
                    try {
                        if (!this.display.readAndDispatch()) {
                            this.display.sleep();
                        }
                        exceptionCount = 0;
                    }
                    catch (ThreadDeath e) {
                        throw e;
                    }
                    catch (Throwable t) {
                        if (t instanceof VirtualMachineError) {
                            throw (VirtualMachineError)t;
                        }
                        if (++exceptionCount > 50 || this.display.isDisposed()) {
                            if (t instanceof RuntimeException) {
                                throw (RuntimeException)t;
                            }
                            if (t instanceof Error) {
                                throw (Error)t;
                            }
                            throw new RuntimeException(t);
                        }
                        Policy.getLog().log((IStatus)new Status(4, "org.eclipse.jface", "Unhandled event loop exception during blocked modal context.", t));
                    }
                }
            } else {
                try {
                    this.join();
                }
                catch (InterruptedException e) {
                    this.throwable = e;
                }
            }
        }
    }
}

