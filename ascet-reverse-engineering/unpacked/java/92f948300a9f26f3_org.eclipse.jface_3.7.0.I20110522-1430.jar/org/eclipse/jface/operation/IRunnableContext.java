/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.operation;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.jface.operation.IRunnableWithProgress;

public interface IRunnableContext {
    public void run(boolean var1, boolean var2, IRunnableWithProgress var3) throws InvocationTargetException, InterruptedException;
}

