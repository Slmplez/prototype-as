/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCycle;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import org.eclipse.emf.ecore.EClass;

public abstract class CommunicationCycleImpl
extends ARObjectImpl
implements CommunicationCycle {
    protected CommunicationCycleImpl() {
    }

    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.COMMUNICATION_CYCLE;
    }
}

