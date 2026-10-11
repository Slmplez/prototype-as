/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.progress;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Shell;

public interface IProgressService
extends IRunnableContext {
    public int getLongOperationTime();

    public void registerIconForFamily(ImageDescriptor var1, Object var2);

    public void runInUI(IRunnableContext var1, IRunnableWithProgress var2, ISchedulingRule var3) throws InvocationTargetException, InterruptedException;

    public Image getIconFor(Job var1);

    public void busyCursorWhile(IRunnableWithProgress var1) throws InvocationTargetException, InterruptedException;

    public void run(boolean var1, boolean var2, IRunnableWithProgress var3) throws InvocationTargetException, InterruptedException;

    public void showInDialog(Shell var1, Job var2);
}

