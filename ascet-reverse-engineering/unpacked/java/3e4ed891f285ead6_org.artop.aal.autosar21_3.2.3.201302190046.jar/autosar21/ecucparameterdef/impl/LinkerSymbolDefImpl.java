/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.LinkerSymbolDef;
import autosar21.ecucparameterdef.impl.StringParamDefImpl;
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

