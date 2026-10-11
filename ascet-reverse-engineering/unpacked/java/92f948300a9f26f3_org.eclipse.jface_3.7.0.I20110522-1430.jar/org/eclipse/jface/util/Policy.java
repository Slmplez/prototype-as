/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.util;

import java.util.Comparator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.AnimatorFactory;
import org.eclipse.jface.dialogs.ErrorSupportProvider;
import org.eclipse.jface.util.ILogger;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.SafeRunnableDialog;
import org.eclipse.jface.util.StatusHandler;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Display;

public class Policy {
    public static final boolean DEFAULT = false;
    public static final String JFACE = "org.eclipse.jface";
    private static ILogger log;
    private static Comparator viewerComparator;
    private static AnimatorFactory animatorFactory;
    public static boolean DEBUG_DIALOG_NO_PARENT;
    public static boolean TRACE_ACTIONS;
    public static boolean TRACE_TOOLBAR;
    private static ErrorSupportProvider errorSupportProvider;
    private static StatusHandler statusHandler;

    static {
        DEBUG_DIALOG_NO_PARENT = false;
        TRACE_ACTIONS = false;
        TRACE_TOOLBAR = false;
    }

    private static ILogger getDummyLog() {
        return new ILogger(){

            public void log(IStatus status) {
                System.err.println(status.getMessage());
                if (status.getException() != null) {
                    status.getException().printStackTrace(System.err);
                }
            }
        };
    }

    public static void setLog(ILogger logger) {
        log = logger;
    }

    public static ILogger getLog() {
        if (log == null) {
            log = Policy.getDummyLog();
        }
        return log;
    }

    public static void setStatusHandler(StatusHandler status) {
        statusHandler = status;
    }

    public static StatusHandler getStatusHandler() {
        if (statusHandler == null) {
            statusHandler = Policy.getDummyStatusHandler();
        }
        return statusHandler;
    }

    private static StatusHandler getDummyStatusHandler() {
        return new StatusHandler(){
            private SafeRunnableDialog dialog;

            public void show(IStatus status, String title) {
                Runnable runnable = new Runnable(this, status){
                    final /* synthetic */ 2 this$1;
                    private final /* synthetic */ IStatus val$status;
                    {
                        this.this$1 = var1_1;
                        this.val$status = iStatus;
                    }

                    public void run() {
                        if (2.access$0(this.this$1) == null || 2.access$0(this.this$1).getShell().isDisposed()) {
                            2.access$1(this.this$1, new SafeRunnableDialog(this.val$status));
                            2.access$0(this.this$1).create();
                            2.access$0(this.this$1).getShell().addDisposeListener(new DisposeListener(this){
                                final /* synthetic */ 3 this$2;
                                {
                                    this.this$2 = var1_1;
                                }

                                public void widgetDisposed(DisposeEvent e) {
                                    2.access$1(3.access$0(this.this$2), null);
                                }
                            });
                            2.access$0(this.this$1).open();
                        } else {
                            2.access$0(this.this$1).addStatus(this.val$status);
                            2.access$0(this.this$1).refresh();
                        }
                    }

                    static /* synthetic */ 2 access$0(3 var0) {
                        return var0.this$1;
                    }
                };
                if (Display.getCurrent() != null) {
                    runnable.run();
                } else {
                    Display.getDefault().asyncExec(runnable);
                }
            }

            static /* synthetic */ SafeRunnableDialog access$0(2 var0) {
                return var0.dialog;
            }

            static /* synthetic */ void access$1(2 var0, SafeRunnableDialog safeRunnableDialog) {
                var0.dialog = safeRunnableDialog;
            }
        };
    }

    private static Comparator getDefaultComparator() {
        return new Comparator(){

            public int compare(Object s1, Object s2) {
                return ((String)s1).compareTo((String)s2);
            }
        };
    }

    public static Comparator getComparator() {
        if (viewerComparator == null) {
            viewerComparator = Policy.getDefaultComparator();
        }
        return viewerComparator;
    }

    public static void setComparator(Comparator comparator) {
        Assert.isTrue((viewerComparator == null ? 1 : 0) != 0);
        viewerComparator = comparator;
    }

    public static void setAnimatorFactory(AnimatorFactory factory) {
        animatorFactory = factory;
    }

    public static AnimatorFactory getAnimatorFactory() {
        if (animatorFactory == null) {
            animatorFactory = new AnimatorFactory();
        }
        return animatorFactory;
    }

    public static void setErrorSupportProvider(ErrorSupportProvider provider) {
        errorSupportProvider = provider;
    }

    public static ErrorSupportProvider getErrorSupportProvider() {
        return errorSupportProvider;
    }

    public static void logException(Exception exception) {
        Policy.getLog().log((IStatus)new Status(4, JFACE, exception.getLocalizedMessage(), (Throwable)exception));
    }
}

