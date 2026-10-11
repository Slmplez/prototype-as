/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 */
package autosar40.genericstructure.generaltemplateclasses.arpackage;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;

public interface PackageableElement
extends CollectableElement,
GPackageableElement {
    public ARPackage getARPackage();

    public void setARPackage(ARPackage var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

