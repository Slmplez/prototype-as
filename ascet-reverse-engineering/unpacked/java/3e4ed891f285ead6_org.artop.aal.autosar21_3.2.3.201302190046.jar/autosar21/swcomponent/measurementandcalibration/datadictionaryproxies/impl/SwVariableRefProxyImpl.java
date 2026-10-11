/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
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

