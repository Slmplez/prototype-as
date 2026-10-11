/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.SymbolicNameReferenceDef;
import autosar21.ecucparameterdef.impl.ReferenceDefImpl;
import org.eclipse.emf.ecore.EClass;

public class SymbolicNameReferenceDefImpl
extends ReferenceDefImpl
implements SymbolicNameReferenceDef {
    protected SymbolicNameReferenceDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.SYMBOLIC_NAME_REFERENCE_DEF;
    }
}

