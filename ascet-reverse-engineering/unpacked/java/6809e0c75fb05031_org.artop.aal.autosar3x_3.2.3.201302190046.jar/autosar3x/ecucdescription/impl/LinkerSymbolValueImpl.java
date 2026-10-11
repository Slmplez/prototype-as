/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecucdescription.impl;

import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.LinkerSymbolValue;
import autosar3x.ecucdescription.impl.StringValueImpl;
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

