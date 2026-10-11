/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.progress;

import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.ProgressMonitorJobsDialog;
import org.eclipse.ui.internal.progress.ProgressRegion;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.views.IViewDescriptor;

public class ProgressManagerUtil {
    public static long SHORT_OPERATION_TIME = 250L;
    static final QualifiedName KEEP_PROPERTY = IProgressConstants.KEEP_PROPERTY;
    static final QualifiedName KEEPONE_PROPERTY = IProgressConstants.KEEPONE_PROPERTY;
    static final Object[] EMPTY_OBJECT_ARRAY = new Object[0];
    static final QualifiedName INFRASTRUCTURE_PROPERTY = new QualifiedName(WorkbenchPlugin.PI_WORKBENCH, "INFRASTRUCTURE_PROPERTY");
    private static String ellipsis = ProgressMessages.ProgressFloatingWindow_EllipsisValue;

    static IStatus exceptionStatus(Throwable exception) {
        return StatusUtil.newStatus(4, exception.getMessage() == null ? "" : exception.getMessage(), exception);
    }

    static void logException(Throwable exception) {
        BundleUtility.log("org.eclipse.ui", exception);
    }

    static ViewerComparator getProgressViewerComparator() {
        return new ViewerComparator(){

            public int compare(Viewer testViewer, Object e1, Object e2) {
                return ((Comparable)e1).compareTo(e2);
            }
        };
    }

    static void openProgressView(WorkbenchWindow window) {
        IWorkbenchPage page = window.getActivePage();
        if (page == null) {
            return;
        }
        try {
            IViewDescriptor reference = WorkbenchPlugin.getDefault().getViewRegistry().find("org.eclipse.ui.views.ProgressView");
            if (reference == null) {
                return;
            }
            page.showView("org.eclipse.ui.views.ProgressView");
        }
        catch (PartInitException exception) {
            ProgressManagerUtil.logException((Throwable)((Object)exception));
        }
    }

    static String shortenText(String textValue, Control control) {
        if (textValue == null) {
            return null;
        }
        GC gc = new GC((Drawable)control);
        int maxExtent = gc.textExtent((String)textValue).x;
        int maxWidth = control.getBounds().width - 5;
        if (maxExtent < maxWidth) {
            gc.dispose();
            return textValue;
        }
        int length = textValue.length();
        int charsToClip = Math.round(0.95f * (float)length * (1.0f - (float)maxWidth / (float)maxExtent));
        int secondWord = ProgressManagerUtil.findSecondWhitespace(textValue, gc, maxWidth);
        int pivot = (length - secondWord) / 2 + secondWord;
        int start = pivot - charsToClip / 2;
        int end = pivot + charsToClip / 2 + 1;
        while (start >= 0 && end < length) {
            String s1 = textValue.substring(0, start);
            String s2 = textValue.substring(end, length);
            String s = String.valueOf(s1) + ellipsis + s2;
            int l = gc.textExtent((String)s).x;
            if (l < maxWidth) {
                gc.dispose();
                return s;
            }
            --start;
            ++end;
        }
        gc.dispose();
        return textValue;
    }

    private static int findSecondWhitespace(String textValue, GC gc, int maxWidth) {
        int firstCharacter = 0;
        char[] chars = textValue.toCharArray();
        int i = 0;
        while (i < chars.length) {
            if (Character.isWhitespace(chars[i])) {
                firstCharacter = i;
                break;
            }
            ++i;
        }
        if (firstCharacter == 0) {
            return 0;
        }
        int secondCharacter = firstCharacter;
        int i2 = firstCharacter;
        while (i2 < chars.length) {
            if (Character.isWhitespace(chars[i2])) {
                secondCharacter = i2;
                break;
            }
            ++i2;
        }
        if (gc.textExtent((String)textValue.substring((int)0, (int)secondCharacter)).x > maxWidth) {
            if (gc.textExtent((String)textValue.substring((int)0, (int)firstCharacter)).x > maxWidth) {
                return 0;
            }
            return firstCharacter;
        }
        return secondCharacter;
    }

    public static boolean rescheduleIfModalShellOpen(Job openJob) {
        Shell modal = ProgressManagerUtil.getModalShellExcluding(null);
        if (modal == null) {
            return false;
        }
        openJob.schedule((long)PlatformUI.getWorkbench().getProgressService().getLongOperationTime());
        return true;
    }

    public static boolean safeToOpen(ProgressMonitorJobsDialog dialog, Shell excludedShell) {
        Shell modal = ProgressManagerUtil.getModalShellExcluding(excludedShell);
        if (modal == null) {
            return true;
        }
        dialog.watchTicks();
        return false;
    }

    public static Shell getModalShellExcluding(Shell shell) {
        if (shell == null || shell.isDisposed()) {
            return ProgressManagerUtil.getModalChildExcluding(PlatformUI.getWorkbench().getDisplay().getShells(), shell);
        }
        return ProgressManagerUtil.getModalChildExcluding(shell.getShells(), shell);
    }

    private static Shell getModalChildExcluding(Shell[] toSearch, Shell toExclude) {
        int modal = 229376;
        int i = toSearch.length - 1;
        while (i >= 0) {
            Shell shell = toSearch[i];
            if (!shell.equals(toExclude)) {
                Shell[] children = shell.getShells();
                Shell modalChild = ProgressManagerUtil.getModalChildExcluding(children, toExclude);
                if (modalChild != null) {
                    return modalChild;
                }
                if (shell.isVisible() && (shell.getStyle() & modal) != 0) {
                    return shell;
                }
            }
            --i;
        }
        return null;
    }

    public static Shell getDefaultParent() {
        Shell modal = ProgressManagerUtil.getModalShellExcluding(null);
        if (modal != null) {
            return modal;
        }
        return ProgressManagerUtil.getNonModalShell();
    }

    public static Shell getNonModalShell() {
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (window == null) {
            IWorkbenchWindow[] windows = PlatformUI.getWorkbench().getWorkbenchWindows();
            if (windows.length > 0) {
                return windows[0].getShell();
            }
        } else {
            return window.getShell();
        }
        return null;
    }

    public static void animateDown(Rectangle startPosition) {
        IWorkbenchWindow currentWindow = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (currentWindow == null) {
            return;
        }
        WorkbenchWindow internalWindow = (WorkbenchWindow)currentWindow;
        ProgressRegion progressRegion = internalWindow.getProgressRegion();
        if (progressRegion == null) {
            return;
        }
        Rectangle endPosition = progressRegion.getControl().getBounds();
        Point windowLocation = internalWindow.getShell().getLocation();
        endPosition.x += windowLocation.x;
        endPosition.y += windowLocation.y;
        AnimationEngine.createTweakedAnimation(internalWindow.getShell(), 400, startPosition, endPosition);
    }

    public static void animateUp(Rectangle endPosition) {
        IWorkbenchWindow currentWindow = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (currentWindow == null) {
            return;
        }
        WorkbenchWindow internalWindow = (WorkbenchWindow)currentWindow;
        Point windowLocation = internalWindow.getShell().getLocation();
        ProgressRegion progressRegion = internalWindow.getProgressRegion();
        if (progressRegion == null) {
            return;
        }
        Rectangle startPosition = progressRegion.getControl().getBounds();
        startPosition.x += windowLocation.x;
        startPosition.y += windowLocation.y;
        AnimationEngine.createTweakedAnimation(internalWindow.getShell(), 400, startPosition, endPosition);
    }

    static IShellProvider getShellProvider() {
        return new IShellProvider(){

            public Shell getShell() {
                return ProgressManagerUtil.getDefaultParent();
            }
        };
    }

    public static URL getIconsRoot() {
        return BundleUtility.find("org.eclipse.ui", "$nl$/icons/full/progress/");
    }

    public static URL getProgressSpinnerLocation() {
        try {
            return new URL(ProgressManagerUtil.getIconsRoot(), "progress_spinner.gif");
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }
}

