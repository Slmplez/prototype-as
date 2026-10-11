/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.peripherals.Buffer;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PeripheralHWPort
extends HWPort {
    public EList<Buffer> getBuffers();

    public Boolean getInversion();

    public void setInversion(Boolean var1);

    public void unsetInversion();

    public boolean isSetInversion();

    public Boolean getPowerOnCapability();

    public void setPowerOnCapability(Boolean var1);

    public void unsetPowerOnCapability();

    public boolean isSetPowerOnCapability();

    public Boolean getWakeUpCapability();

    public void setWakeUpCapability(Boolean var1);

    public void unsetWakeUpCapability();

    public boolean isSetWakeUpCapability();
}

