/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.misc;

import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IWorkbenchPart;

public class TestPartListener
implements IPartListener {
    public void partActivated(IWorkbenchPart part) {
        System.out.println("partActivated(" + part + ")");
    }

    public void partBroughtToTop(IWorkbenchPart part) {
        System.out.println("partBroughtToTop(" + part + ")");
    }

    public void partClosed(IWorkbenchPart part) {
        System.out.println("partClosed(" + part + ")");
    }

    public void partDeactivated(IWorkbenchPart part) {
        System.out.println("partDeactivated(" + part + ")");
    }

    public void partOpened(IWorkbenchPart part) {
        System.out.println("partOpened(" + part + ")");
    }
}

