/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gecucparameterdef;

import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GModuleDef
extends GPackageableElement,
GParamConfMultiplicity {
    public GModuleDef gGetRefinedModuleDef();

    public void gSetRefinedModuleDef(GModuleDef var1);

    public EList<GContainerDef> gGetContainers();
}

