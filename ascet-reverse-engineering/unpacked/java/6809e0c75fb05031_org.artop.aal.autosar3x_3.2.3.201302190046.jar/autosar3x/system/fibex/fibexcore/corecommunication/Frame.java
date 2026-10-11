/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.corecommunication.PduToFrameMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Frame
extends FibexElement {
    public Integer getFrameLength();

    public void setFrameLength(Integer var1);

    public void unsetFrameLength();

    public boolean isSetFrameLength();

    public EList<PduToFrameMapping> getPduToFrameMappings();
}

