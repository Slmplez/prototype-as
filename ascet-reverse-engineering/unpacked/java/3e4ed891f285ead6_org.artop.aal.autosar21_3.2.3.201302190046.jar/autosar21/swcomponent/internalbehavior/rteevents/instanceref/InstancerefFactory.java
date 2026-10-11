/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.rteevents.instanceref;

import autosar21.swcomponent.internalbehavior.rteevents.instanceref.DataReceiveErrorEventData;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.DataReceivedEventData;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.InstancerefPackage;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public DataReceivedEventData createDataReceivedEventData();

    public DataReceiveErrorEventData createDataReceiveErrorEventData();

    public ModeSwitchEventMode createModeSwitchEventMode();

    public OperationInvokedEventOperation createOperationInvokedEventOperation();

    public InstancerefPackage getInstancerefPackage();
}

