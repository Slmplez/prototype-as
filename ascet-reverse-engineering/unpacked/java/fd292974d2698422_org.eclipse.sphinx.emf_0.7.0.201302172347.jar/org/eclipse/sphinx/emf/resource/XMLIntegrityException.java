/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.xmi.XMIException
 */
package org.eclipse.sphinx.emf.resource;

import org.eclipse.emf.ecore.xmi.XMIException;

public class XMLIntegrityException
extends XMIException {
    private static final long serialVersionUID = 1L;

    public XMLIntegrityException(String message, String location, int line, int column) {
        super(message, location, line, column);
    }

    public XMLIntegrityException(Exception exception, String location, int line, int column) {
        super(exception, location, line, column);
    }

    public XMLIntegrityException(String message, Exception exception, String location, int line, int column) {
        super(message, exception, location, line, column);
    }

    public String toString() {
        String name = ((Object)((Object)this)).getClass().getName();
        String msg = this.getLocalizedMessage();
        return msg != null ? msg : name;
    }
}

