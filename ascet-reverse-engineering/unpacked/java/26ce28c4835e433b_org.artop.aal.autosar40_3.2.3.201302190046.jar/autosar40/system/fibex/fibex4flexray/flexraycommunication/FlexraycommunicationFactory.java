/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4flexray.flexraycommunication;

import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrame;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.impl.FlexraycommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FlexraycommunicationFactory
extends EFactory {
    public static final FlexraycommunicationFactory eINSTANCE = FlexraycommunicationFactoryImpl.init();

    public FlexrayAbsolutelyScheduledTiming createFlexrayAbsolutelyScheduledTiming();

    public FlexrayFrame createFlexrayFrame();

    public FlexrayFrameTriggering createFlexrayFrameTriggering();

    public FlexraycommunicationPackage getFlexraycommunicationPackage();
}

