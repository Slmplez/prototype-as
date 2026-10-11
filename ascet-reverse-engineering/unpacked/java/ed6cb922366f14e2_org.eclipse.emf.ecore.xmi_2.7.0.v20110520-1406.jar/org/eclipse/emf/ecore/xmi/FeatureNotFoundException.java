/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.xmi.XMIException;

public class FeatureNotFoundException
extends XMIException {
    private static final long serialVersionUID = 1L;
    protected String featureName;
    protected transient EObject object;

    public FeatureNotFoundException(String name, EObject object, String location, int line, int column) {
        super("Feature '" + name + "' not found.", location, line, column);
        this.featureName = name;
        this.object = object;
    }

    public String getName() {
        return this.featureName;
    }

    public EObject getObject() {
        return this.object;
    }
}

