/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.system.fibex.fibex4lin.lincommunication.impl;

import autosar3x.system.fibex.fibex4lin.lincommunication.AssignFrameIdTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.AssignNadTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.DataTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinChecksumType;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationFactory;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.RelativelyScheduledTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.RunMode;
import autosar3x.system.fibex.fibex4lin.lincommunication.SubstitutionFrame;
import autosar3x.system.fibex.fibex4lin.lincommunication.SubstitutionType;
import autosar3x.system.fibex.fibex4lin.lincommunication.UnassignFrameIdTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.AssignFrameIdTimingImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.AssignNadTimingImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.DataTimingImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.FreeFormatImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.LinErrorResponseImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.LinFrameTriggeringImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.LinScheduleTableImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.RelativelyScheduledTimingImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.SubstitutionFrameImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.UnassignFrameIdTimingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class LincommunicationFactoryImpl
extends EFactoryImpl
implements LincommunicationFactory {
    public static LincommunicationFactory init() {
        try {
            LincommunicationFactory theLincommunicationFactory = (LincommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/fl/lc");
            if (theLincommunicationFactory != null) {
                return theLincommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new LincommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAssignFrameIdTiming();
            }
            case 2: {
                return this.createRelativelyScheduledTiming();
            }
            case 3: {
                return this.createLinScheduleTable();
            }
            case 4: {
                return this.createLinErrorResponse();
            }
            case 5: {
                return this.createLinFrameTriggering();
            }
            case 6: {
                return this.createAssignNadTiming();
            }
            case 7: {
                return this.createDataTiming();
            }
            case 8: {
                return this.createFreeFormat();
            }
            case 9: {
                return this.createSubstitutionFrame();
            }
            case 10: {
                return this.createUnassignFrameIdTiming();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 11: {
                return this.createRunModeFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createLinChecksumTypeFromString(eDataType, initialValue);
            }
            case 13: {
                return this.createSubstitutionTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 11: {
                return this.convertRunModeToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertLinChecksumTypeToString(eDataType, instanceValue);
            }
            case 13: {
                return this.convertSubstitutionTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public AssignFrameIdTiming createAssignFrameIdTiming() {
        AssignFrameIdTimingImpl assignFrameIdTiming = new AssignFrameIdTimingImpl();
        return assignFrameIdTiming;
    }

    public RelativelyScheduledTiming createRelativelyScheduledTiming() {
        RelativelyScheduledTimingImpl relativelyScheduledTiming = new RelativelyScheduledTimingImpl();
        return relativelyScheduledTiming;
    }

    public LinScheduleTable createLinScheduleTable() {
        LinScheduleTableImpl linScheduleTable = new LinScheduleTableImpl();
        return linScheduleTable;
    }

    public LinErrorResponse createLinErrorResponse() {
        LinErrorResponseImpl linErrorResponse = new LinErrorResponseImpl();
        return linErrorResponse;
    }

    public LinFrameTriggering createLinFrameTriggering() {
        LinFrameTriggeringImpl linFrameTriggering = new LinFrameTriggeringImpl();
        return linFrameTriggering;
    }

    public AssignNadTiming createAssignNadTiming() {
        AssignNadTimingImpl assignNadTiming = new AssignNadTimingImpl();
        return assignNadTiming;
    }

    public DataTiming createDataTiming() {
        DataTimingImpl dataTiming = new DataTimingImpl();
        return dataTiming;
    }

    public FreeFormat createFreeFormat() {
        FreeFormatImpl freeFormat = new FreeFormatImpl();
        return freeFormat;
    }

    public SubstitutionFrame createSubstitutionFrame() {
        SubstitutionFrameImpl substitutionFrame = new SubstitutionFrameImpl();
        return substitutionFrame;
    }

    public UnassignFrameIdTiming createUnassignFrameIdTiming() {
        UnassignFrameIdTimingImpl unassignFrameIdTiming = new UnassignFrameIdTimingImpl();
        return unassignFrameIdTiming;
    }

    public RunMode createRunModeFromString(EDataType eDataType, String initialValue) {
        RunMode result = RunMode.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertRunModeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LinChecksumType createLinChecksumTypeFromString(EDataType eDataType, String initialValue) {
        LinChecksumType result = LinChecksumType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertLinChecksumTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SubstitutionType createSubstitutionTypeFromString(EDataType eDataType, String initialValue) {
        SubstitutionType result = SubstitutionType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSubstitutionTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LincommunicationPackage getLincommunicationPackage() {
        return (LincommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static LincommunicationPackage getPackage() {
        return LincommunicationPackage.eINSTANCE;
    }
}

