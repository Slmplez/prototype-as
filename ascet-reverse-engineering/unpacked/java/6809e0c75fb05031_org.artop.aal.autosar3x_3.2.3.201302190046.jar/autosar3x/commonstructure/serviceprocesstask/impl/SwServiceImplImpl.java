/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.serviceprocesstask.impl;

import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.SwServiceImpl;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public class SwServiceImplImpl
extends ARObjectImpl
implements SwServiceImpl {
    protected SwServiceImplImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceprocesstaskPackage.Literals.SW_SERVICE_IMPL;
    }
}

