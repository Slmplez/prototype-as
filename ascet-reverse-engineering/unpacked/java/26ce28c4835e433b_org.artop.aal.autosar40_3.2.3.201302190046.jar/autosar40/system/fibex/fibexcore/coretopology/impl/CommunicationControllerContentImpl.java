/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationControllerContent;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import org.eclipse.emf.ecore.EClass;

public abstract class CommunicationControllerContentImpl
extends ARObjectImpl
implements CommunicationControllerContent {
    protected CommunicationControllerContentImpl() {
    }

    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.COMMUNICATION_CONTROLLER_CONTENT;
    }
}

