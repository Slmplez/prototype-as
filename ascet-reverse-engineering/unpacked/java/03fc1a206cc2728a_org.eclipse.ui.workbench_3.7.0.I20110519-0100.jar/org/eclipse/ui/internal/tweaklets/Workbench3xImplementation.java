/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.tweaklets.WorkbenchImplementation;

public class Workbench3xImplementation
extends WorkbenchImplementation {
    public WorkbenchWindow createWorkbenchWindow(int newWindowNumber) {
        return new WorkbenchWindow(newWindowNumber);
    }

    public WorkbenchPage createWorkbenchPage(WorkbenchWindow workbenchWindow, String perspID, IAdaptable input) throws WorkbenchException {
        return new WorkbenchPage(workbenchWindow, perspID, input);
    }

    public WorkbenchPage createWorkbenchPage(WorkbenchWindow workbenchWindow, IAdaptable finalInput) throws WorkbenchException {
        return new WorkbenchPage(workbenchWindow, finalInput);
    }

    public Perspective createPerspective(PerspectiveDescriptor desc, WorkbenchPage workbenchPage) throws WorkbenchException {
        return new Perspective(desc, workbenchPage);
    }
}

