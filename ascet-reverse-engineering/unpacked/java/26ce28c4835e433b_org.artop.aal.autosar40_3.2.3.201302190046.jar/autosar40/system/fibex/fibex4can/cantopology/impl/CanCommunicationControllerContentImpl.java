/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationControllerContent;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanCommunicationControllerContentImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class CanCommunicationControllerContentImpl
extends AbstractCanCommunicationControllerContentImpl
implements CanCommunicationControllerContent {
    protected CanCommunicationControllerContentImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_COMMUNICATION_CONTROLLER_CONTENT;
    }
}

