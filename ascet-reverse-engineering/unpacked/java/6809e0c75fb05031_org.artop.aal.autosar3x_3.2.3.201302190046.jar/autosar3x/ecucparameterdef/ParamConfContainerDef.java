/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GParamConfContainerDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ChoiceContainerDef;
import autosar3x.ecucparameterdef.ConfigParameter;
import autosar3x.ecucparameterdef.ConfigReference;
import autosar3x.ecucparameterdef.ContainerDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ParamConfContainerDef
extends ContainerDef,
GParamConfContainerDef {
    public ChoiceContainerDef getChoiceContainerDef();

    public void setChoiceContainerDef(ChoiceContainerDef var1);

    public Boolean getMultipleConfigurationContainer();

    public void setMultipleConfigurationContainer(Boolean var1);

    public void unsetMultipleConfigurationContainer();

    public boolean isSetMultipleConfigurationContainer();

    public EList<ConfigParameter> getParameters();

    public EList<ConfigReference> getReferences();

    public EList<ContainerDef> getSubContainers();
}

