/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.LinFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar40.system.fibex.fibex4lin.lincommunication.LinUnconditionalFrame;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface LinEventTriggeredFrame
extends LinFrame {
    public LinScheduleTable getCollisionResolvingSchedule();

    public void setCollisionResolvingSchedule(LinScheduleTable var1);

    public EList<LinUnconditionalFrame> getLinUnconditionalFrames();
}

