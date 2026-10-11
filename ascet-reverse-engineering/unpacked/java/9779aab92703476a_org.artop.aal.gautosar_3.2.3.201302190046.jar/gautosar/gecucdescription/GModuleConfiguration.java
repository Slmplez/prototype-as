/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gecucdescription;

import gautosar.gecucdescription.GContainer;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GModuleConfiguration
extends GPackageableElement {
    public GModuleDef gGetDefinition();

    public void gSetDefinition(GModuleDef var1);

    public EList<GContainer> gGetContainers();
}

