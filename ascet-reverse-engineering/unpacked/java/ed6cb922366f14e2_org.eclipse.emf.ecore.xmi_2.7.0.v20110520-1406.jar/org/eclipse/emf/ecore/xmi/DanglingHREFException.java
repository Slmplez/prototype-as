/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.ecore.xmi.XMIException;

public class DanglingHREFException
extends XMIException {
    private static final long serialVersionUID = 1L;

    public DanglingHREFException(String message, String location, int line, int column) {
        super(message, location, line, column);
    }
}

