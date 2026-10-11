/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource;

import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.HWPin;
import autosar21.ecuresource.HWPortDirectionEnum;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HWPort
extends Identifiable {
    public HWElement getHWElement();

    public void setHWElement(HWElement var1);

    public HWPortDirectionEnum getDirection();

    public void setDirection(HWPortDirectionEnum var1);

    public void unsetDirection();

    public boolean isSetDirection();

    public EList<HWPin> getPins();
}

