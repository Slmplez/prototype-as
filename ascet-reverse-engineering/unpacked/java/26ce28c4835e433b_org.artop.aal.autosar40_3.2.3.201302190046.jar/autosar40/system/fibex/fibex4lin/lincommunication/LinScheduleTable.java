/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4lin.lincommunication.ResumePosition;
import autosar40.system.fibex.fibex4lin.lincommunication.RunMode;
import autosar40.system.fibex.fibex4lin.lincommunication.ScheduleTableEntry;
import autosar40.system.fibex.fibex4lin.lintopology.LinPhysicalChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface LinScheduleTable
extends Identifiable {
    public LinPhysicalChannel getLinPhysicalChannel();

    public void setLinPhysicalChannel(LinPhysicalChannel var1);

    public ResumePosition getResumePosition();

    public void setResumePosition(ResumePosition var1);

    public void unsetResumePosition();

    public boolean isSetResumePosition();

    public RunMode getRunMode();

    public void setRunMode(RunMode var1);

    public void unsetRunMode();

    public boolean isSetRunMode();

    public EList<ScheduleTableEntry> getTableEntries();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

