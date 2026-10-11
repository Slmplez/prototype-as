/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.system.fibex.fibex4lin.lincommunication.AssignFrameIdTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.AssignNadTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.DataTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.RelativelyScheduledTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.SubstitutionFrame;
import autosar3x.system.fibex.fibex4lin.lincommunication.UnassignFrameIdTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.LincommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface LincommunicationFactory
extends EFactory {
    public static final LincommunicationFactory eINSTANCE = LincommunicationFactoryImpl.init();

    public AssignFrameIdTiming createAssignFrameIdTiming();

    public RelativelyScheduledTiming createRelativelyScheduledTiming();

    public LinScheduleTable createLinScheduleTable();

    public LinErrorResponse createLinErrorResponse();

    public LinFrameTriggering createLinFrameTriggering();

    public AssignNadTiming createAssignNadTiming();

    public DataTiming createDataTiming();

    public FreeFormat createFreeFormat();

    public SubstitutionFrame createSubstitutionFrame();

    public UnassignFrameIdTiming createUnassignFrameIdTiming();

    public LincommunicationPackage getLincommunicationPackage();
}

