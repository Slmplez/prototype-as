/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucAbstractStringParamDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucParameterDefImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class EcucAbstractStringParamDefImpl
extends EcucParameterDefImpl
implements EcucAbstractStringParamDef {
    protected EcucAbstractStringParamDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_ABSTRACT_STRING_PARAM_DEF;
    }
}

