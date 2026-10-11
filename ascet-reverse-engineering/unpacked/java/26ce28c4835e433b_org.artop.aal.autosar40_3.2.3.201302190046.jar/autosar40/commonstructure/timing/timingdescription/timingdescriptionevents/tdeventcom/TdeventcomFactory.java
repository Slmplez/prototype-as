/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrClusterCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrame;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventIPdu;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventISignal;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventTTCanCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TdeventcomFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TdeventcomFactory
extends EFactory {
    public static final TdeventcomFactory eINSTANCE = TdeventcomFactoryImpl.init();

    public TDEventFrame createTDEventFrame();

    public TDEventFrClusterCycleStart createTDEventFrClusterCycleStart();

    public TDEventIPdu createTDEventIPdu();

    public TDEventISignal createTDEventISignal();

    public TDEventTTCanCycleStart createTDEventTTCanCycleStart();

    public TdeventcomPackage getTdeventcomPackage();
}

