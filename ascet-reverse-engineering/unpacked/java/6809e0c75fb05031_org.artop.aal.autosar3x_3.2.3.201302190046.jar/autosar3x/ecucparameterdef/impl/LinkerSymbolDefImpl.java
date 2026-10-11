/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.LinkerSymbolDef;
import autosar3x.ecucparameterdef.impl.StringParamDefImpl;
import org.eclipse.emf.ecore.EClass;

public class LinkerSymbolDefImpl
extends StringParamDefImpl
implements LinkerSymbolDef {
    protected LinkerSymbolDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.LINKER_SYMBOL_DEF;
    }
}

