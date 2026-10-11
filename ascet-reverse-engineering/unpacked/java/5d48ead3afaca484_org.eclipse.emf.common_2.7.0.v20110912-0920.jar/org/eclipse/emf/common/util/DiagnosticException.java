/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.emf.common.util;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;

public class DiagnosticException
extends Exception {
    private static final long serialVersionUID = 1L;
    private Diagnostic diagnostic;

    public DiagnosticException(Diagnostic diagnostic) {
        super(diagnostic.getMessage(), diagnostic.getException());
        this.diagnostic = diagnostic;
    }

    public final Diagnostic getDiagnostic() {
        return this.diagnostic;
    }

    public static CoreException toCoreException(DiagnosticException exception) {
        return new CoreException(BasicDiagnostic.toIStatus(exception));
    }
}

