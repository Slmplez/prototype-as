/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.system.fibex.fibex4lin.lincommunication.SubstitutionType;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SubstitutionFrame
extends Frame {
    public EList<Frame> getSubstitutedFrames();

    public SubstitutionType getSubstitutionType();

    public void setSubstitutionType(SubstitutionType var1);

    public void unsetSubstitutionType();

    public boolean isSetSubstitutionType();
}

