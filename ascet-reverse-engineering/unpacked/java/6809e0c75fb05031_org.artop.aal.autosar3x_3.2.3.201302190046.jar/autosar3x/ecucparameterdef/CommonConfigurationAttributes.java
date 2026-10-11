/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GCommonConfigurationAttributes
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ConfigurationClassAffection;
import autosar3x.ecucparameterdef.ImplementationConfigClass;
import autosar3x.ecucparameterdef.ParamConfMultiplicity;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gecucparameterdef.GCommonConfigurationAttributes;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommonConfigurationAttributes
extends Identifiable,
ParamConfMultiplicity,
GCommonConfigurationAttributes {
    public ConfigurationClassAffection getConfigurationClassAffection();

    public void setConfigurationClassAffection(ConfigurationClassAffection var1);

    public EList<ImplementationConfigClass> getImplementationConfigClass();

    public String getOrigin();

    public void setOrigin(String var1);

    public void unsetOrigin();

    public boolean isSetOrigin();
}

