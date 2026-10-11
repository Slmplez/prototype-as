/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import org.eclipse.emf.common.util.Diagnostic;

public interface DiagnosticChain {
    public void add(Diagnostic var1);

    public void addAll(Diagnostic var1);

    public void merge(Diagnostic var1);
}

