/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.abstractstructure.impl;

import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class AtpClassifierImpl
extends IdentifiableImpl
implements AtpClassifier {
    protected AtpClassifierImpl() {
    }

    protected EClass eStaticClass() {
        return AbstractstructurePackage.Literals.ATP_CLASSIFIER;
    }
}

