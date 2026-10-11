/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecuresource;

import autosar40.ecuresource.HwElement;
import autosar40.ecuresource.HwPinConnector;
import autosar40.ecuresource.HwPinGroupConnector;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Describable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HwElementConnector
extends Describable {
    public HwElement getHwElement();

    public void setHwElement(HwElement var1);

    public EList<HwElement> getHwElements();

    public EList<HwPinGroupConnector> getHwPinGroupConnections();

    public EList<HwPinConnector> getHwPinConnections();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

