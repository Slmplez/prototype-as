/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecucdescription.impl;

import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.FunctionNameValue;
import autosar3x.ecucdescription.impl.LinkerSymbolValueImpl;
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

