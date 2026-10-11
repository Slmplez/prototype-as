/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.ecore.xmi.XMIException;

public class UnresolvedReferenceException
extends XMIException {
    private static final long serialVersionUID = 1L;
    protected String reference;

    public UnresolvedReferenceException(String reference, String location, int line, int column) {
        super("Unresolved reference '" + reference + "'.", location, line, column);
        this.reference = reference;
    }

    public String getReference() {
        return this.reference;
    }
}

