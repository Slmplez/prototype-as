/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.ApplicationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameId;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameIdRange;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignNad;
import autosar40.system.fibex.fibex4lin.lincommunication.ConditionalChangeNad;
import autosar40.system.fibex.fibex4lin.lincommunication.DataDumpEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.FramePid;
import autosar40.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar40.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar40.system.fibex.fibex4lin.lincommunication.LinEventTriggeredFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar40.system.fibex.fibex4lin.lincommunication.LinSporadicFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinUnconditionalFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.SaveConfigurationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.UnassignFrameId;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LincommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface LincommunicationFactory
extends EFactory {
    public static final LincommunicationFactory eINSTANCE = LincommunicationFactoryImpl.init();

    public ApplicationEntry createApplicationEntry();

    public LinFrameTriggering createLinFrameTriggering();

    public AssignFrameId createAssignFrameId();

    public LinScheduleTable createLinScheduleTable();

    public LinErrorResponse createLinErrorResponse();

    public AssignFrameIdRange createAssignFrameIdRange();

    public FramePid createFramePid();

    public AssignNad createAssignNad();

    public ConditionalChangeNad createConditionalChangeNad();

    public DataDumpEntry createDataDumpEntry();

    public FreeFormat createFreeFormat();

    public LinEventTriggeredFrame createLinEventTriggeredFrame();

    public LinUnconditionalFrame createLinUnconditionalFrame();

    public LinSporadicFrame createLinSporadicFrame();

    public SaveConfigurationEntry createSaveConfigurationEntry();

    public UnassignFrameId createUnassignFrameId();

    public LincommunicationPackage getLincommunicationPackage();
}

