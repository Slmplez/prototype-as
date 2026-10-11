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
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.ApplicationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameId;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameIdRange;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignNad;
import autosar40.system.fibex.fibex4lin.lincommunication.ConditionalChangeNad;
import autosar40.system.fibex.fibex4lin.lincommunication.DataDumpEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.FramePid;
import autosar40.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar40.system.fibex.fibex4lin.lincommunication.LinChecksumType;
import autosar40.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar40.system.fibex.fibex4lin.lincommunication.LinEventTriggeredFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar40.system.fibex.fibex4lin.lincommunication.LinSporadicFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinUnconditionalFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationFactory;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.ResumePosition;
import autosar40.system.fibex.fibex4lin.lincommunication.RunMode;
import autosar40.system.fibex.fibex4lin.lincommunication.SaveConfigurationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.UnassignFrameId;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.ApplicationEntryImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.AssignFrameIdImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.AssignFrameIdRangeImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.AssignNadImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.ConditionalChangeNadImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.DataDumpEntryImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.FramePidImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.FreeFormatImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinErrorResponseImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinEventTriggeredFrameImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinFrameImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinFrameTriggeringImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinScheduleTableImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinSporadicFrameImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinUnconditionalFrameImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.SaveConfigurationEntryImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.UnassignFrameIdImpl;
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
            LincommunicationFactory theLincommunicationFactory = (LincommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/fl/lc");
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
                return this.createApplicationEntry();
            }
            case 2: {
                return this.createLinFrameTriggering();
            }
            case 3: {
                return this.createAssignFrameId();
            }
            case 5: {
                return this.createLinFrame();
            }
            case 6: {
                return this.createLinScheduleTable();
            }
            case 7: {
                return this.createLinErrorResponse();
            }
            case 8: {
                return this.createAssignFrameIdRange();
            }
            case 9: {
                return this.createFramePid();
            }
            case 10: {
                return this.createAssignNad();
            }
            case 11: {
                return this.createConditionalChangeNad();
            }
            case 12: {
                return this.createDataDumpEntry();
            }
            case 13: {
                return this.createFreeFormat();
            }
            case 15: {
                return this.createLinEventTriggeredFrame();
            }
            case 16: {
                return this.createLinUnconditionalFrame();
            }
            case 17: {
                return this.createLinSporadicFrame();
            }
            case 18: {
                return this.createSaveConfigurationEntry();
            }
            case 19: {
                return this.createUnassignFrameId();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 20: {
                return this.createLinChecksumTypeFromString(eDataType, initialValue);
            }
            case 21: {
                return this.createResumePositionFromString(eDataType, initialValue);
            }
            case 22: {
                return this.createRunModeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 20: {
                return this.convertLinChecksumTypeToString(eDataType, instanceValue);
            }
            case 21: {
                return this.convertResumePositionToString(eDataType, instanceValue);
            }
            case 22: {
                return this.convertRunModeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ApplicationEntry createApplicationEntry() {
        ApplicationEntryImpl applicationEntry = new ApplicationEntryImpl();
        return applicationEntry;
    }

    public LinFrameTriggering createLinFrameTriggering() {
        LinFrameTriggeringImpl linFrameTriggering = new LinFrameTriggeringImpl();
        return linFrameTriggering;
    }

    public AssignFrameId createAssignFrameId() {
        AssignFrameIdImpl assignFrameId = new AssignFrameIdImpl();
        return assignFrameId;
    }

    public LinFrame createLinFrame() {
        LinFrameImpl linFrame = new LinFrameImpl();
        return linFrame;
    }

    public LinScheduleTable createLinScheduleTable() {
        LinScheduleTableImpl linScheduleTable = new LinScheduleTableImpl();
        return linScheduleTable;
    }

    public LinErrorResponse createLinErrorResponse() {
        LinErrorResponseImpl linErrorResponse = new LinErrorResponseImpl();
        return linErrorResponse;
    }

    public AssignFrameIdRange createAssignFrameIdRange() {
        AssignFrameIdRangeImpl assignFrameIdRange = new AssignFrameIdRangeImpl();
        return assignFrameIdRange;
    }

    public FramePid createFramePid() {
        FramePidImpl framePid = new FramePidImpl();
        return framePid;
    }

    public AssignNad createAssignNad() {
        AssignNadImpl assignNad = new AssignNadImpl();
        return assignNad;
    }

    public ConditionalChangeNad createConditionalChangeNad() {
        ConditionalChangeNadImpl conditionalChangeNad = new ConditionalChangeNadImpl();
        return conditionalChangeNad;
    }

    public DataDumpEntry createDataDumpEntry() {
        DataDumpEntryImpl dataDumpEntry = new DataDumpEntryImpl();
        return dataDumpEntry;
    }

    public FreeFormat createFreeFormat() {
        FreeFormatImpl freeFormat = new FreeFormatImpl();
        return freeFormat;
    }

    public LinEventTriggeredFrame createLinEventTriggeredFrame() {
        LinEventTriggeredFrameImpl linEventTriggeredFrame = new LinEventTriggeredFrameImpl();
        return linEventTriggeredFrame;
    }

    public LinUnconditionalFrame createLinUnconditionalFrame() {
        LinUnconditionalFrameImpl linUnconditionalFrame = new LinUnconditionalFrameImpl();
        return linUnconditionalFrame;
    }

    public LinSporadicFrame createLinSporadicFrame() {
        LinSporadicFrameImpl linSporadicFrame = new LinSporadicFrameImpl();
        return linSporadicFrame;
    }

    public SaveConfigurationEntry createSaveConfigurationEntry() {
        SaveConfigurationEntryImpl saveConfigurationEntry = new SaveConfigurationEntryImpl();
        return saveConfigurationEntry;
    }

    public UnassignFrameId createUnassignFrameId() {
        UnassignFrameIdImpl unassignFrameId = new UnassignFrameIdImpl();
        return unassignFrameId;
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

    public ResumePosition createResumePositionFromString(EDataType eDataType, String initialValue) {
        ResumePosition result = ResumePosition.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertResumePositionToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
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

    public LincommunicationPackage getLincommunicationPackage() {
        return (LincommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static LincommunicationPackage getPackage() {
        return LincommunicationPackage.eINSTANCE;
    }
}

