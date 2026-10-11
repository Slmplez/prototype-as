/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GChoiceReferenceDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigReference;
import autosar3x.ecucparameterdef.ParamConfContainerDef;
import gautosar.gecucparameterdef.GChoiceReferenceDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ChoiceReferenceParamDef
extends ConfigReference,
GChoiceReferenceDef {
    public EList<ParamConfContainerDef> getDestinations();
}

