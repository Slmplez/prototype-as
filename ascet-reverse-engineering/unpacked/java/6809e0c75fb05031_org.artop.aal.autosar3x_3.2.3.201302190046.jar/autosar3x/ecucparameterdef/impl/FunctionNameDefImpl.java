/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.FunctionNameDef;
import autosar3x.ecucparameterdef.impl.LinkerSymbolDefImpl;
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

