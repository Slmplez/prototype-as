/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.swclass.impl;

import autosar3x.commonstructure.swclass.SwClassPrototype;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.ecore.EClass;

public class SwClassPrototypeImpl
extends IdentifiableImpl
implements SwClassPrototype {
    protected SwClassPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return SwclassPackage.Literals.SW_CLASS_PROTOTYPE;
    }
}

