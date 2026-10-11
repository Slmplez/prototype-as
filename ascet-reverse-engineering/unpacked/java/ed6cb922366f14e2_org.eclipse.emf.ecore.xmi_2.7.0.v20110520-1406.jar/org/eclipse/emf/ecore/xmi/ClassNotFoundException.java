/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.xmi.XMIException;

public class ClassNotFoundException
extends XMIException {
    private static final long serialVersionUID = 1L;
    protected String className;
    protected transient EFactory factory;

    public ClassNotFoundException(String name, EFactory factory, String location, int line, int column) {
        super("Class '" + name + "' is not found or is abstract.", location, line, column);
        this.className = name;
        this.factory = factory;
    }

    public String getName() {
        return this.className;
    }

    public EFactory getFactory() {
        return this.factory;
    }
}

