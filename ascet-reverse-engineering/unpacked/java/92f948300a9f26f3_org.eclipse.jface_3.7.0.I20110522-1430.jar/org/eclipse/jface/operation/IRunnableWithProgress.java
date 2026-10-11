/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jface.operation;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IRunnableWithProgress {
    public void run(IProgressMonitor var1) throws InvocationTargetException, InterruptedException;
}

