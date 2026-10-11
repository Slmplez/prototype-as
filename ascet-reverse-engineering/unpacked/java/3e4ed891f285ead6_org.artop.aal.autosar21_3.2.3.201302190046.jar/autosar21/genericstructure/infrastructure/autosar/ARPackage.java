/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.genericstructure.infrastructure.autosar;

import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ARPackage
extends Identifiable,
GARPackage {
    public EList<PackageableElement> getElements();

    public EList<ARPackage> getSubPackages();
}

