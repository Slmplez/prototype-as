/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.debug.core.IJavaClassObject;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaVariable;

public interface IRuntimeContext {
    public IJavaDebugTarget getVM();

    public IJavaObject getThis() throws CoreException;

    public IJavaReferenceType getReceivingType() throws CoreException;

    public IJavaVariable[] getLocals() throws CoreException;

    public IJavaProject getProject();

    public IJavaThread getThread();

    public boolean isConstructor() throws CoreException;

    public IJavaClassObject classForName(String var1) throws CoreException;
}

