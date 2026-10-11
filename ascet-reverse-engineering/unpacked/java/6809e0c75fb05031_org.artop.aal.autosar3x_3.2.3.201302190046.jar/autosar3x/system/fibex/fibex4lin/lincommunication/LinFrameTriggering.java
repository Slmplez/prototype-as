/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.system.fibex.fibex4lin.lincommunication.LinChecksumType;
import autosar3x.system.fibex.fibex4lin.lincommunication.RelativelyScheduledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface LinFrameTriggering
extends FrameTriggering {
    public LinChecksumType getChecksumType();

    public void setChecksumType(LinChecksumType var1);

    public void unsetChecksumType();

    public boolean isSetChecksumType();

    public Integer getIdentifier();

    public void setIdentifier(Integer var1);

    public void unsetIdentifier();

    public boolean isSetIdentifier();

    public EList<RelativelyScheduledTiming> getRelativelyScheduledTimings();
}

