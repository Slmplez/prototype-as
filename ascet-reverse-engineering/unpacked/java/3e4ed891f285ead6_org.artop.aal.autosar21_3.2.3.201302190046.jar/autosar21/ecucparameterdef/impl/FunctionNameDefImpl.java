/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.FunctionNameDef;
import autosar21.ecucparameterdef.impl.LinkerSymbolDefImpl;
import org.eclipse.emf.ecore.EClass;

public class FunctionNameDefImpl
extends LinkerSymbolDefImpl
implements FunctionNameDef {
    protected FunctionNameDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.FUNCTION_NAME_DEF;
    }
}

