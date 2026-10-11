/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GChoiceContainerDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import gautosar.gecucparameterdef.GChoiceContainerDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucChoiceContainerDef
extends EcucContainerDef,
GChoiceContainerDef {
    public EList<EcucParamConfContainerDef> getChoices();
}

