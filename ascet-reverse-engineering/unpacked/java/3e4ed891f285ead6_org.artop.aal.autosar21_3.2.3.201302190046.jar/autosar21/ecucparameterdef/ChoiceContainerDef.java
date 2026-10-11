/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GChoiceContainerDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.ContainerDef;
import autosar21.ecucparameterdef.ParamConfContainerDef;
import gautosar.gecucparameterdef.GChoiceContainerDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ChoiceContainerDef
extends ContainerDef,
GChoiceContainerDef {
    public EList<ParamConfContainerDef> getChoices();
}

