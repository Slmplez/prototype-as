/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GPortInterface
 */
package autosar40.swcomponent.portinterface;

import autosar40.commonstructure.serviceneeds.ServiceProviderEnum;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.gswcomponents.gportinterface.GPortInterface;

public interface PortInterface
extends ARElement,
AtpBlueprint,
AtpBlueprintable,
AtpType,
GPortInterface {
    public Boolean getIsService();

    public void setIsService(Boolean var1);

    public void unsetIsService();

    public boolean isSetIsService();

    public ServiceProviderEnum getServiceKind();

    public void setServiceKind(ServiceProviderEnum var1);

    public void unsetServiceKind();

    public boolean isSetServiceKind();
}

