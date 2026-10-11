/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.abstractstructure.impl;

import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.abstractstructure.impl.AtpClassifierImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class AtpTypeImpl
extends AtpClassifierImpl
implements AtpType {
    protected AtpTypeImpl() {
    }

    protected EClass eStaticClass() {
        return AbstractstructurePackage.Literals.ATP_TYPE;
    }
}

