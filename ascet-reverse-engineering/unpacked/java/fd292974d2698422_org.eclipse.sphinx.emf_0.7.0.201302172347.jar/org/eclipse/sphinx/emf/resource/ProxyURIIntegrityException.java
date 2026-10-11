/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.xmi.XMIException
 */
package org.eclipse.sphinx.emf.resource;

import org.eclipse.emf.ecore.xmi.XMIException;

public class ProxyURIIntegrityException
extends XMIException {
    private static final long serialVersionUID = 1L;

    public ProxyURIIntegrityException(String message) {
        super(message, "", 1, 1);
    }

    public ProxyURIIntegrityException(Exception exception) {
        super(exception, "", 1, 1);
    }

    public ProxyURIIntegrityException(String message, Exception exception) {
        super(message, exception, "", 1, 1);
    }

    public String getMessage() {
        int oldLine = this.line;
        this.line = 0;
        String msg = super.getMessage();
        this.line = oldLine;
        return msg;
    }

    public String toString() {
        String name = ((Object)((Object)this)).getClass().getName();
        String msg = this.getLocalizedMessage();
        return msg != null ? msg : name;
    }
}

