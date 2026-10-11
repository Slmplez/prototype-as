/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.endtoendprotection;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EndToEndDescription
extends ARObject {
    public EndToEndProtection getEndToEndProtection();

    public void setEndToEndProtection(EndToEndProtection var1);

    public String getCategory();

    public void setCategory(String var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public EList<Integer> getDataIds();

    public void unsetDataIds();

    public boolean isSetDataIds();

    public Integer getDataIdMode();

    public void setDataIdMode(Integer var1);

    public void unsetDataIdMode();

    public boolean isSetDataIdMode();

    public Integer getDataLength();

    public void setDataLength(Integer var1);

    public void unsetDataLength();

    public boolean isSetDataLength();

    public Integer getMaxDeltaCounterInit();

    public void setMaxDeltaCounterInit(Integer var1);

    public void unsetMaxDeltaCounterInit();

    public boolean isSetMaxDeltaCounterInit();

    public Integer getCrcOffset();

    public void setCrcOffset(Integer var1);

    public void unsetCrcOffset();

    public boolean isSetCrcOffset();

    public Integer getCounterOffset();

    public void setCounterOffset(Integer var1);

    public void unsetCounterOffset();

    public boolean isSetCounterOffset();
}

