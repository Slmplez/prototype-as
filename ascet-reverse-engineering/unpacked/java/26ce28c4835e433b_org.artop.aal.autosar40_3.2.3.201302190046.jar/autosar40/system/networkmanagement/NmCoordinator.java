/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.networkmanagement;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.networkmanagement.NmEcu;
import autosar40.system.networkmanagement.NmNode;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NmCoordinator
extends ARObject {
    public NmEcu getNmEcu();

    public void setNmEcu(NmEcu var1);

    public Integer getIndex();

    public void setIndex(Integer var1);

    public void unsetIndex();

    public boolean isSetIndex();

    public Boolean getNmActiveCoordinator();

    public void setNmActiveCoordinator(Boolean var1);

    public void unsetNmActiveCoordinator();

    public boolean isSetNmActiveCoordinator();

    public Double getNmGlobalCoordinatorTime();

    public void setNmGlobalCoordinatorTime(Double var1);

    public void unsetNmGlobalCoordinatorTime();

    public boolean isSetNmGlobalCoordinatorTime();

    public EList<NmNode> getNmNodes();

    public Double getNmShutdownDelayTimer();

    public void setNmShutdownDelayTimer(Double var1);

    public void unsetNmShutdownDelayTimer();

    public boolean isSetNmShutdownDelayTimer();

    public IntegerDatatype getIndexData();

    public void setIndexData(IntegerDatatype var1);
}

