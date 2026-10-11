/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.ecore.xmi.XMIException;

public class PackageNotFoundException
extends XMIException {
    private static final long serialVersionUID = 1L;
    protected String uri;

    public PackageNotFoundException(String uri, String location, int line, int column) {
        super("Package with uri '" + uri + "' not found.", location, line, column);
        this.uri = uri;
    }

    public String uri() {
        return this.uri;
    }
}

