/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4ttcan.ttcancommunication;

import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcanAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcancommunicationPackage;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.impl.TtcancommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TtcancommunicationFactory
extends EFactory {
    public static final TtcancommunicationFactory eINSTANCE = TtcancommunicationFactoryImpl.init();

    public TtcanAbsolutelyScheduledTiming createTtcanAbsolutelyScheduledTiming();

    public TtcancommunicationPackage getTtcancommunicationPackage();
}

