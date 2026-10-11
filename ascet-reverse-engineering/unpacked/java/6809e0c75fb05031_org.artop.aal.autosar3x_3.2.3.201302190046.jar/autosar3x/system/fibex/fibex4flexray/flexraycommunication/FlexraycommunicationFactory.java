/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibex4flexray.flexraycommunication;

import autosar3x.system.fibex.fibex4flexray.flexraycommunication.AbsolutelyScheduledTiming;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.impl.FlexraycommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FlexraycommunicationFactory
extends EFactory {
    public static final FlexraycommunicationFactory eINSTANCE = FlexraycommunicationFactoryImpl.init();

    public AbsolutelyScheduledTiming createAbsolutelyScheduledTiming();

    public FlexrayFrameTriggering createFlexrayFrameTriggering();

    public FlexraycommunicationPackage getFlexraycommunicationPackage();
}

