/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.datatype.valuemodel.impl;

import autosar3x.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar3x.swcomponent.datatype.valuemodel.Vf;
import autosar3x.swcomponent.datatype.valuemodel.impl.ValueByFormulaImpl;
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

