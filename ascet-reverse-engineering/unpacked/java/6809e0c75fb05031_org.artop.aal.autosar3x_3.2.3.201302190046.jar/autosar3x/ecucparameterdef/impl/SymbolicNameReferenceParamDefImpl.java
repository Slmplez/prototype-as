/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.SymbolicNameReferenceParamDef;
import autosar3x.ecucparameterdef.impl.ReferenceParamDefImpl;
import org.eclipse.emf.ecore.EClass;

public class SymbolicNameReferenceParamDefImpl
extends ReferenceParamDefImpl
implements SymbolicNameReferenceParamDef {
    protected SymbolicNameReferenceParamDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.SYMBOLIC_NAME_REFERENCE_PARAM_DEF;
    }
}

