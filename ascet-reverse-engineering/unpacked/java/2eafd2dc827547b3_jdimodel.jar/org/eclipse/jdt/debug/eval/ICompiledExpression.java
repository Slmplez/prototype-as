/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.dom.Message
 */
package org.eclipse.jdt.debug.eval;

import org.eclipse.jdt.core.dom.Message;

public interface ICompiledExpression {
    public String getSnippet();

    public boolean hasErrors();

    public Message[] getErrors();

    public String[] getErrorMessages();
}

