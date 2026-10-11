/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecuresource;

import autosar40.ecuresource.HwElementConnector;
import autosar40.ecuresource.HwPinConnector;
import autosar40.ecuresource.HwPinGroup;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Describable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HwPinGroupConnector
extends Describable {
    public HwElementConnector getHwElementConnector();

    public void setHwElementConnector(HwElementConnector var1);

    public EList<HwPinConnector> getHwPinConnections();

    public EList<HwPinGroup> getHwPinGroups();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

