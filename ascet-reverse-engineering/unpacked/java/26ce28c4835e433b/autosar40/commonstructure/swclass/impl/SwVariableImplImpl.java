/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.commonstructure.swclass.impl;

import autosar40.commonstructure.swclass.SwVariableImpl;
import autosar40.commonstructure.swclass.SwclassPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public class SwVariableImplImpl
extends ARObjectImpl
implements SwVariableImpl {
    protected SwVariableImplImpl() {
    }

    protected EClass eStaticClass() {
        return SwclassPackage.Literals.SW_VARIABLE_IMPL;
    }
}

