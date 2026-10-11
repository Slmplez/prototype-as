/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GCommonConfigurationAttributes
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucConfigurationClassAffection;
import autosar40.ecucparameterdef.EcucDefinitionElement;
import autosar40.ecucparameterdef.EcucImplementationConfigurationClass;
import gautosar.gecucparameterdef.GCommonConfigurationAttributes;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucCommonAttributes
extends EcucDefinitionElement,
GCommonConfigurationAttributes {
    public EcucConfigurationClassAffection getConfigurationClassAffection();

    public void setConfigurationClassAffection(EcucConfigurationClassAffection var1);

    public EList<EcucImplementationConfigurationClass> getImplementationConfigClass();

    public String getOrigin();

    public void setOrigin(String var1);

    public void unsetOrigin();

    public boolean isSetOrigin();

    public Boolean getRequiresIndex();

    public void setRequiresIndex(Boolean var1);

    public void unsetRequiresIndex();

    public boolean isSetRequiresIndex();
}

