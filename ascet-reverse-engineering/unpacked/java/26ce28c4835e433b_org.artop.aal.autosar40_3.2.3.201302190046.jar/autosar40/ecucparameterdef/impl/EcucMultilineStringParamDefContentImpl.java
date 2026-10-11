/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucMultilineStringParamDefContent;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucAbstractStringParamDefContentImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class EcucMultilineStringParamDefContentImpl
extends EcucAbstractStringParamDefContentImpl
implements EcucMultilineStringParamDefContent {
    protected EcucMultilineStringParamDefContentImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_MULTILINE_STRING_PARAM_DEF_CONTENT;
    }
}

