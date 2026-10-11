/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucLinkerSymbolDefContent;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucAbstractStringParamDefContentImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class EcucLinkerSymbolDefContentImpl
extends EcucAbstractStringParamDefContentImpl
implements EcucLinkerSymbolDefContent {
    protected EcucLinkerSymbolDefContentImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_LINKER_SYMBOL_DEF_CONTENT;
    }
}

