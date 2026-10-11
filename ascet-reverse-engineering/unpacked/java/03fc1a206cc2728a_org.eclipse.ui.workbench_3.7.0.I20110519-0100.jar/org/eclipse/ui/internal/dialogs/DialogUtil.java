/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;

public class DialogUtil {
    private DialogUtil() {
    }

    public static void openError(Shell parent, String title, String message, PartInitException exception) {
        CoreException nestedException = null;
        IStatus status = exception.getStatus();
        if (status != null && status.getException() instanceof CoreException) {
            nestedException = (CoreException)status.getException();
        }
        Object errorStatus = null;
        errorStatus = nestedException != null ? StatusUtil.newStatus(nestedException.getStatus(), message) : new Status(4, WorkbenchPlugin.PI_WORKBENCH, message);
        StatusUtil.handleStatus(errorStatus, 2, parent);
    }

    public static String removeAccel(String label) {
        int endBracket;
        int startBracket = label.indexOf("(&");
        if (startBracket >= 0 && (endBracket = label.indexOf(41)) - startBracket == 3) {
            return String.valueOf(label.substring(0, startBracket)) + label.substring(endBracket + 1);
        }
        int i = label.indexOf(38);
        if (i >= 0) {
            label = String.valueOf(label.substring(0, i)) + label.substring(i + 1);
        }
        return label;
    }

    public static int availableRows(Composite parent) {
        int fontHeight = parent.getFont().getFontData()[0].getHeight();
        int displayHeight = parent.getDisplay().getClientArea().height;
        return displayHeight / fontHeight;
    }

    public static boolean inRegularFontMode(Composite parent) {
        return DialogUtil.availableRows(parent) > 50;
    }
}

