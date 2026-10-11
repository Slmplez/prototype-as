/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.system.fibex.fibex4flexray.flexraycommunication.impl;

import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrame;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationFactory;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.impl.FlexrayAbsolutelyScheduledTimingImpl;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.impl.FlexrayFrameImpl;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.impl.FlexrayFrameTriggeringImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class FlexraycommunicationFactoryImpl
extends EFactoryImpl
implements FlexraycommunicationFactory {
    public static FlexraycommunicationFactory init() {
        try {
            FlexraycommunicationFactory theFlexraycommunicationFactory = (FlexraycommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/ff/fc");
            if (theFlexraycommunicationFactory != null) {
                return theFlexraycommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new FlexraycommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createFlexrayAbsolutelyScheduledTiming();
            }
            case 1: {
                return this.createFlexrayFrame();
            }
            case 2: {
                return this.createFlexrayFrameTriggering();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public FlexrayAbsolutelyScheduledTiming createFlexrayAbsolutelyScheduledTiming() {
        FlexrayAbsolutelyScheduledTimingImpl flexrayAbsolutelyScheduledTiming = new FlexrayAbsolutelyScheduledTimingImpl();
        return flexrayAbsolutelyScheduledTiming;
    }

    public FlexrayFrame createFlexrayFrame() {
        FlexrayFrameImpl flexrayFrame = new FlexrayFrameImpl();
        return flexrayFrame;
    }

    public FlexrayFrameTriggering createFlexrayFrameTriggering() {
        FlexrayFrameTriggeringImpl flexrayFrameTriggering = new FlexrayFrameTriggeringImpl();
        return flexrayFrameTriggering;
    }

    public FlexraycommunicationPackage getFlexraycommunicationPackage() {
        return (FlexraycommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static FlexraycommunicationPackage getPackage() {
        return FlexraycommunicationPackage.eINSTANCE;
    }
}

