/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecucdescription.impl;

import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.FunctionNameValue;
import autosar21.ecucdescription.impl.LinkerSymbolValueImpl;
import org.eclipse.emf.ecore.EClass;

public class FunctionNameValueImpl
extends LinkerSymbolValueImpl
implements FunctionNameValue {
    protected FunctionNameValueImpl() {
    }

    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.FUNCTION_NAME_VALUE;
    }
}

