/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.AbstractSignal;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import org.eclipse.emf.ecore.EClass;

public class AbstractSignalImpl
extends ARElementImpl
implements AbstractSignal {
    protected AbstractSignalImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ABSTRACT_SIGNAL;
    }
}

