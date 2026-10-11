/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.jdt.core.dom.Message
 */
package org.eclipse.jdt.debug.eval;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.core.dom.Message;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.eval.IEvaluationEngine;

public interface IEvaluationResult {
    public IJavaValue getValue();

    public boolean hasErrors();

    public Message[] getErrors();

    public String[] getErrorMessages();

    public String getSnippet();

    public DebugException getException();

    public IJavaThread getThread();

    public IEvaluationEngine getEvaluationEngine();

    public boolean isTerminated();
}

