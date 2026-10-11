/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.datadictionaryproxies.impl;

import autosar3x.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class SwVariableRefProxyImpl
extends ARObjectImpl
implements SwVariableRefProxy {
    protected SwVariableRefProxyImpl() {
    }

    protected EClass eStaticClass() {
        return DatadictionaryproxiesPackage.Literals.SW_VARIABLE_REF_PROXY;
    }
}

