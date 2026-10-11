/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.arpackage;

import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ReferenceBase;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ARPackage
extends CollectableElement,
AtpBlueprint,
AtpBlueprintable,
GARPackage {
    public EList<ReferenceBase> getReferenceBases();

    public EList<PackageableElement> getElements();

    public EList<ARPackage> getArPackages();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

