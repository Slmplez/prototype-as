/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 */
package autosar21.genericstructure.infrastructure;

import autosar21.genericstructure.infrastructure.autosar.ARPackage;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;

public interface PackageableElement
extends Identifiable,
GPackageableElement {
    public ARPackage getARPackage();

    public void setARPackage(ARPackage var1);
}

