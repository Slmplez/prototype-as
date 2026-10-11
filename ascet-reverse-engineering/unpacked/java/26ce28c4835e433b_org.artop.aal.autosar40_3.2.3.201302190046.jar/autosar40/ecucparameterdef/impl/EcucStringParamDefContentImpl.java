/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucStringParamDefContent;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucAbstractStringParamDefContentImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class EcucStringParamDefContentImpl
extends EcucAbstractStringParamDefContentImpl
implements EcucStringParamDefContent {
    protected EcucStringParamDefContentImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_STRING_PARAM_DEF_CONTENT;
    }
}

