/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.abstractstructure.impl;

import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.impl.AtpFeatureImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class AtpPrototypeImpl
extends AtpFeatureImpl
implements AtpPrototype {
    protected AtpPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return AbstractstructurePackage.Literals.ATP_PROTOTYPE;
    }
}

