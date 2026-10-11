/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.jdt.core.dom.Message
 */
package org.eclipse.jdt.internal.debug.eval;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.core.dom.Message;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.eval.IEvaluationEngine;
import org.eclipse.jdt.debug.eval.IEvaluationResult;

public class EvaluationResult
implements IEvaluationResult {
    private IJavaValue fValue;
    private IJavaThread fThread;
    private IEvaluationEngine fEngine;
    private String fSnippet;
    private DebugException fException;
    private List fErrors;
    private boolean fTerminated = false;

    public EvaluationResult(IEvaluationEngine engine, String snippet, IJavaThread thread) {
        this.setEvaluationEngine(engine);
        this.setThread(thread);
        this.setSnippet(snippet);
        this.fErrors = new ArrayList();
    }

    public IJavaValue getValue() {
        return this.fValue;
    }

    public void setValue(IJavaValue value) {
        this.fValue = value;
    }

    public boolean hasErrors() {
        return this.getErrors().length > 0 || this.getException() != null;
    }

    public Message[] getErrors() {
        Message[] messages = new Message[this.fErrors.size()];
        int i = 0;
        Iterator iter = this.fErrors.iterator();
        while (iter.hasNext()) {
            messages[i++] = new Message((String)iter.next(), -1);
        }
        return messages;
    }

    public String[] getErrorMessages() {
        return this.fErrors.toArray(new String[this.fErrors.size()]);
    }

    public String getSnippet() {
        return this.fSnippet;
    }

    private void setSnippet(String snippet) {
        this.fSnippet = snippet;
    }

    public DebugException getException() {
        return this.fException;
    }

    public void setException(DebugException e) {
        this.fException = e;
    }

    public IJavaThread getThread() {
        return this.fThread;
    }

    private void setThread(IJavaThread thread) {
        this.fThread = thread;
    }

    public IEvaluationEngine getEvaluationEngine() {
        return this.fEngine;
    }

    private void setEvaluationEngine(IEvaluationEngine engine) {
        this.fEngine = engine;
    }

    public void addError(String message) {
        this.fErrors.add(message);
    }

    public boolean isTerminated() {
        return this.fTerminated;
    }

    public void setTerminated(boolean terminated) {
        this.fTerminated = terminated;
    }
}

