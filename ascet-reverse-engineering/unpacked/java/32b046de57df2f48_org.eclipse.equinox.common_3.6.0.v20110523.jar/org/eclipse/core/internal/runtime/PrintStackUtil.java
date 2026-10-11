/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.runtime;

import java.io.PrintStream;
import java.io.PrintWriter;
import org.eclipse.core.runtime.IStatus;

public class PrintStackUtil {
    public static void printChildren(IStatus status, PrintStream output) {
        IStatus[] children = status.getChildren();
        if (children == null || children.length == 0) {
            return;
        }
        int i = 0;
        while (i < children.length) {
            output.println("Contains: " + children[i].getMessage());
            Throwable exception = children[i].getException();
            if (exception != null) {
                exception.printStackTrace(output);
            }
            PrintStackUtil.printChildren(children[i], output);
            ++i;
        }
    }

    public static void printChildren(IStatus status, PrintWriter output) {
        IStatus[] children = status.getChildren();
        if (children == null || children.length == 0) {
            return;
        }
        int i = 0;
        while (i < children.length) {
            output.println("Contains: " + children[i].getMessage());
            output.flush();
            Throwable exception = children[i].getException();
            if (exception != null) {
                exception.printStackTrace(output);
            }
            PrintStackUtil.printChildren(children[i], output);
            ++i;
        }
    }
}

