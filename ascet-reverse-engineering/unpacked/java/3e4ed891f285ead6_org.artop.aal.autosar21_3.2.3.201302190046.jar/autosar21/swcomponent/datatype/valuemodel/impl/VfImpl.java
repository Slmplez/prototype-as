/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.datatype.valuemodel.impl;

import autosar21.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar21.swcomponent.datatype.valuemodel.Vf;
import autosar21.swcomponent.datatype.valuemodel.impl.ValueByFormulaImpl;
import org.eclipse.emf.ecore.EClass;

public class VfImpl
extends ValueByFormulaImpl
implements Vf {
    protected VfImpl() {
    }

    protected EClass eStaticClass() {
        return ValuemodelPackage.Literals.VF;
    }
}

