/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IDropToFrame
 *  org.eclipse.debug.core.model.IFilteredStep
 *  org.eclipse.debug.core.model.IStackFrame
 */
package org.eclipse.jdt.debug.core;

import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IDropToFrame;
import org.eclipse.debug.core.model.IFilteredStep;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaModifiers;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;

public interface IJavaStackFrame
extends IStackFrame,
IJavaModifiers,
IFilteredStep,
IDropToFrame {
    public static final int ERR_INVALID_STACK_FRAME = 130;

    public boolean supportsDropToFrame();

    public boolean isConstructor() throws DebugException;

    public boolean isNative() throws DebugException;

    public boolean isStaticInitializer() throws DebugException;

    public boolean isSynchronized() throws DebugException;

    public boolean isOutOfSynch() throws DebugException;

    public boolean isObsolete() throws DebugException;

    public String getDeclaringTypeName() throws DebugException;

    public String getReceivingTypeName() throws DebugException;

    public String getSignature() throws DebugException;

    public List getArgumentTypeNames() throws DebugException;

    public String getMethodName() throws DebugException;

    public IJavaVariable findVariable(String var1) throws DebugException;

    public int getLineNumber(String var1) throws DebugException;

    public String getSourceName() throws DebugException;

    public String getSourceName(String var1) throws DebugException;

    public String getSourcePath(String var1) throws DebugException;

    public String getSourcePath() throws DebugException;

    public IJavaVariable[] getLocalVariables() throws DebugException;

    public IJavaObject getThis() throws DebugException;

    public IJavaClassType getDeclaringType() throws DebugException;

    public IJavaReferenceType getReferenceType() throws DebugException;

    public boolean wereLocalsAvailable();

    public boolean isVarArgs() throws DebugException;

    public boolean canForceReturn();

    public void forceReturn(IJavaValue var1) throws DebugException;
}

