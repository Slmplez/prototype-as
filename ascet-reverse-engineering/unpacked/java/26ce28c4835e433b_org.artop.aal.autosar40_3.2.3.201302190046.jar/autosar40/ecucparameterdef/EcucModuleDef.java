/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GModuleDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucConfigurationVariantEnum;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucDefinitionElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.gecucparameterdef.GModuleDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucModuleDef
extends ARElement,
AtpBlueprint,
AtpBlueprintable,
EcucDefinitionElement,
GModuleDef {
    public String getApiServicePrefix();

    public void setApiServicePrefix(String var1);

    public void unsetApiServicePrefix();

    public boolean isSetApiServicePrefix();

    public EcucModuleDef getRefinedModuleDef();

    public void setRefinedModuleDef(EcucModuleDef var1);

    public EList<EcucConfigurationVariantEnum> getSupportedConfigVariants();

    public void unsetSupportedConfigVariants();

    public boolean isSetSupportedConfigVariants();

    public EList<EcucContainerDef> getContainers();
}

