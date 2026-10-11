/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package gautosar.gecucdescription;

import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GContainer
extends GIdentifiable {
    public GContainerDef gGetDefinition();

    public void gSetDefinition(GContainerDef var1);

    public EList<GParameterValue> gGetParameterValues();

    public EList<GConfigReferenceValue> gGetReferenceValues();

    public EList<GContainer> gGetSubContainers();
}

