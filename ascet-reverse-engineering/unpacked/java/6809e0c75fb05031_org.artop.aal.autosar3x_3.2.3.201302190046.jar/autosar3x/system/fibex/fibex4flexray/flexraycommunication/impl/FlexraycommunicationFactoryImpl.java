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
package autosar3x.system.fibex.fibex4flexray.flexraycommunication.impl;

import autosar3x.system.fibex.fibex4flexray.flexraycommunication.AbsolutelyScheduledTiming;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationFactory;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.impl.AbsolutelyScheduledTimingImpl;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.impl.FlexrayFrameTriggeringImpl;
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
            FlexraycommunicationFactory theFlexraycommunicationFactory = (FlexraycommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/ff/fc");
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
                return this.createAbsolutelyScheduledTiming();
            }
            case 1: {
                return this.createFlexrayFrameTriggering();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AbsolutelyScheduledTiming createAbsolutelyScheduledTiming() {
        AbsolutelyScheduledTimingImpl absolutelyScheduledTiming = new AbsolutelyScheduledTimingImpl();
        return absolutelyScheduledTiming;
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

