/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceiveErrorEventData;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceivedEventData;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public DataReceiveErrorEventData createDataReceiveErrorEventData();

    public ModeSwitchEventMode createModeSwitchEventMode();

    public OperationInvokedEventOperation createOperationInvokedEventOperation();

    public DataReceivedEventData createDataReceivedEventData();

    public InstancerefPackage getInstancerefPackage();
}

