/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecucdescription.impl;

import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.LinkerSymbolValue;
import autosar21.ecucdescription.impl.StringValueImpl;
import org.eclipse.emf.ecore.EClass;

public class LinkerSymbolValueImpl
extends StringValueImpl
implements LinkerSymbolValue {
    protected LinkerSymbolValueImpl() {
    }

    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.LINKER_SYMBOL_VALUE;
    }
}

