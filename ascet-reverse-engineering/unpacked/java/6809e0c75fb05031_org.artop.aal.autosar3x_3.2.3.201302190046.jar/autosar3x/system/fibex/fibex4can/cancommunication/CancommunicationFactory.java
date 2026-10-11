/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibex4can.cancommunication;

import autosar3x.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar3x.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar3x.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import autosar3x.system.fibex.fibex4can.cancommunication.impl.CancommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CancommunicationFactory
extends EFactory {
    public static final CancommunicationFactory eINSTANCE = CancommunicationFactoryImpl.init();

    public CanFrameTriggering createCanFrameTriggering();

    public RxIdentifierRange createRxIdentifierRange();

    public CancommunicationPackage getCancommunicationPackage();
}

