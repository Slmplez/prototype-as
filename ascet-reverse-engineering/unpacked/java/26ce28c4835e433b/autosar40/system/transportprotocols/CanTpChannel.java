/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.transportprotocols.CanTpChannelModeType;
import autosar40.system.transportprotocols.CanTpConfig;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface CanTpChannel
extends Identifiable {
    public CanTpConfig getCanTpConfig();

    public void setCanTpConfig(CanTpConfig var1);

    public Long getChannelId();

    public void setChannelId(Long var1);

    public void unsetChannelId();

    public boolean isSetChannelId();

    public CanTpChannelModeType getChannelMode();

    public void setChannelMode(CanTpChannelModeType var1);

    public void unsetChannelMode();

    public boolean isSetChannelMode();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getChannelIdData();

    public void setChannelIdData(PositiveIntegerDatatype var1);
}

