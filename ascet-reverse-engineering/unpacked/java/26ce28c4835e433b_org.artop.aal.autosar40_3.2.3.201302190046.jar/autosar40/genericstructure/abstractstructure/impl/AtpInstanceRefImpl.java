/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.abstractstructure.impl;

import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class AtpInstanceRefImpl
extends ARObjectImpl
implements AtpInstanceRef {
    protected AtpInstanceRefImpl() {
    }

    protected EClass eStaticClass() {
        return AbstractstructurePackage.Literals.ATP_INSTANCE_REF;
    }
}

