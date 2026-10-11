/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GParamConfContainerDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucChoiceContainerDef;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucParameterDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucParamConfContainerDef
extends EcucContainerDef,
GParamConfContainerDef {
    public EcucChoiceContainerDef getEcucChoiceContainerDef();

    public void setEcucChoiceContainerDef(EcucChoiceContainerDef var1);

    public Boolean getMultipleConfigurationContainer();

    public void setMultipleConfigurationContainer(Boolean var1);

    public void unsetMultipleConfigurationContainer();

    public boolean isSetMultipleConfigurationContainer();

    public EList<EcucParameterDef> getParameters();

    public EList<EcucAbstractReferenceDef> getReferences();

    public EList<EcucContainerDef> getSubContainers();
}

