/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gecucparameterdef;

import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GParamConfContainerDef
extends GContainerDef {
    public EList<GConfigParameter> gGetParameters();

    public EList<GConfigReference> gGetReferences();

    public EList<GContainerDef> gGetSubContainers();
}

