/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.datatype.computationmethod.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.datatype.computationmethod.CompuDefaultValue;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import org.eclipse.emf.ecore.EClass;

public class CompuDefaultValueImpl
extends ARObjectImpl
implements CompuDefaultValue {
    protected CompuDefaultValueImpl() {
    }

    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_DEFAULT_VALUE;
    }
}

