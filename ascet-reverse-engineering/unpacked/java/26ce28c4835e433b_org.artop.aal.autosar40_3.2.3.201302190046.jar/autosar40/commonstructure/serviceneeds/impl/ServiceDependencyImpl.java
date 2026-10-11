/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.ServiceDependency;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class ServiceDependencyImpl
extends ARObjectImpl
implements ServiceDependency {
    protected ServiceDependencyImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.SERVICE_DEPENDENCY;
    }
}

