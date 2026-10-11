/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucFunctionNameDefContent;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucAbstractStringParamDefContentImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class EcucFunctionNameDefContentImpl
extends EcucAbstractStringParamDefContentImpl
implements EcucFunctionNameDefContent {
    protected EcucFunctionNameDefContentImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_FUNCTION_NAME_DEF_CONTENT;
    }
}

